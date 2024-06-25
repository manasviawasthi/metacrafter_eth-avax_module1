// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;
contract mod{
    uint a;
    uint b;
    uint c;
    uint d;
    address owner;
    constructor(){
        owner =msg.sender;
    }
    modifier myOwner{
        require(owner == msg.sender,"only owner can access");
        _;
    }
    function set(uint _a,uint _b,uint _c,uint _d) public myOwner{
        a=_a;
        a=_b;
        a=_c;
        a=_d;
    } 
    function get() public view myOwner returns(uint){
        if( a>b && a>c && a>d){
            return a;
        }
        else if( b>a && b>c && b>d){
            return b;
        }
        else if( c>b && c>a && c>d){
            return c;
        }
        else{
            return d;
        }
    }
}
