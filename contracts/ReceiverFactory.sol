pragma solidity >=0.4.21 <0.7.0;
import "./GiftReceiver.sol";

contract ReceiverFactory {

    event Mint(
        address receiverAddress
    );

    function mint() external {
        GiftReceiver receiver = new GiftReceiver(msg.sender);
        emit Mint(address(receiver));
    }
}