package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeMessageData
   {
       
      
      private var var_1577:int;
      
      private var var_1708:String;
      
      public function PrizeMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1708 = param1.readString();
         var_1577 = param1.readInteger();
      }
      
      public function get productItemTypeId() : int
      {
         return var_1577;
      }
      
      public function get productItemType() : String
      {
         return var_1708;
      }
   }
}
