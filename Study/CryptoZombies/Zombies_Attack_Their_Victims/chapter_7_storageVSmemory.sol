/*
- Storage refers to variables stored permanently on the blockchain.
- Memory variables are temporary, and are erased between external fuction
calls to your contract. Think of it like your computer's hard disk vs RAM

*/
pragma solidity >=0.5.0 <0.6.0;

import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {
    function feedAndMultiply(uint256 _zombieId, uint256 _targetDna) public {
        require(msg.sender == zombieToOwner[_zombieId]);
        Zombie storage myZombie = zombies[_zombieId];
    }
}
