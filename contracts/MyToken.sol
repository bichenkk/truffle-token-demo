pragma solidity ^0.4.17;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract MyToken is StandardToken {
  string public name = 'MyToken';
  string public symbol = 'MYT';

  // the fraction
  uint8 public decimals = 2;

  // this amount includes the decimal so the total is 10
  uint public INITIAL_SUPPLY = 1000;

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
  }
}