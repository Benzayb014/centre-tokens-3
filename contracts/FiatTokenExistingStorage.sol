pragma solidity ^0.4.18;

import './FiatToken.sol';

/**
 * @title FiatTokenExistingStorage 
 * @dev Upgraded ERC20 Token backed by fiat reserves that sets storage contract address explicitly in constructor
 */
contract FiatTokenExistingStorage is FiatToken {

  function FiatTokenExistingStorage(address _contractStorageAddress, string _name, string _symbol, string _currency, uint8 _decimals, address _masterMinter, address _pauser, address _blacklister, address _upgrader, address _roleAddressChanger) public {

    name = _name;
    symbol = _symbol;
    currency = _currency;
    decimals = _decimals;
    masterMinter = _masterMinter;
    pauser = _pauser;
    blacklister = _blacklister;
    upgrader = _upgrader;
    roleAddressChanger = _roleAddressChanger;

    contractStorage = EternalStorage(_contractStorageAddress);
  }

}
