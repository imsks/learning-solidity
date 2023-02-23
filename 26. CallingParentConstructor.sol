// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.17 and less than 0.9.0
pragma solidity ^0.8.17;

contract ContractA {
    event Log(string message);

    function foo() public virtual {
        emit Log("Foo A Called");
    }
}

contract ContractB is ContractA {
    function foo() public virtual override {
        emit Log("Foo B Called");
        ContractA.foo();
    }
}

contract ContractC is ContractA {
    function foo() public virtual override {
        emit Log("Foo C Called");
        super.foo();
    }
}

contract ContractD is ContractB, ContractC {
    // Call D.foo and check the transaction logs.
    // Although D inherits A, B and C, it only called C and then A.
    function foo() public override(ContractB, ContractC) {
        emit Log("Foo D Called");
        super.foo();
    }
}
