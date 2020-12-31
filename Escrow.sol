pragma solidity ^0.4.0;

contract escrowcontract{
    
    address public buyer;
    address public seller;
    uint public price;
    
    bool public buyer_in;
    bool public seller_in;
    
    enum state {UNIITIATED, AWAITING_PAYMENT, AWAITING_DELIVERY, COMPLETE}
    
    state public CurrentState;
    
    function escrowcontract(address _buyer, address _seller, uint _price){
        
        buyer = _buyer;
        seller = _seller;
        price = _price;
        
    }
    
    function initiatecontract() payable{
        
        require (msg.value == price);
        
        if (msg.sender == buyer){
        buyer_in = true;
        
        }
        if (msg.sender == seller){
            seller_in = true;
        }
        if (buyer_in && seller_in){
            CurrentState = state.AWAITING_PAYMENT;
        }
        }
    function confirmpayment() payable{
        
        require (msg.sender == buyer);
        require (msg.value == price);
        CurrentState = state.AWAITING_DELIVERY;
        
        
    }
    
    function confirmdelivery(){
        
        require (msg.sender == buyer);
        seller.transfer(price * 2);
        buyer.transfer(price);
        CurrentState=state.COMPLETE;
    }
    
    
}
