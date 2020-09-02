pragma solidity ^0.6.0;

import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract STKWToken is ERC20("StrikeWin Token","STKW"), Ownable() {
    uint256 private _customDecimals = 8;
    uint256 private _initialSupply = 100000000*10**_customDecimals;

    constructor() public {
        _setupDecimals(uint8(_customDecimals));
        _mint(msg.sender, _initialSupply);
    }
}