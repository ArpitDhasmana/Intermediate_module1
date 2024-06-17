// SPDX-License-Identifier: MIT
pragma solidity >=0.6.12 <0.9.0;

contract Avax_module1{
  uint public maxLim=100;
  uint public minLim=1;

  function set(uint _newLim) public{
    require(_newLim>=minLim && _newLim<=maxLim,"new limit should be between 1 and 100");
       maxLim=_newLim;
 }
  function checkNum(uint _number) public view returns(string memory){
    assert(_number!=0);
    if(_number>maxLim){
      revert("number exceeds maxlimit");
    }
    return "Number is within the acceptable range";
  }

}
