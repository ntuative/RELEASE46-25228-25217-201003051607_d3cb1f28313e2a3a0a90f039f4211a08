package com.sulake.habbo.communication.messages.incoming.recycler
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class PrizeLevelMessageData
   {
       
      
      private var var_2072:int;
      
      private var var_1340:int;
      
      private var var_654:Array;
      
      public function PrizeLevelMessageData(param1:IMessageDataWrapper)
      {
         super();
         var_1340 = param1.readInteger();
         var_2072 = param1.readInteger();
         var_654 = new Array();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_654.push(new PrizeMessageData(param1));
            _loc3_++;
         }
      }
      
      public function get probabilityDenominator() : int
      {
         return var_2072;
      }
      
      public function get prizes() : Array
      {
         return var_654;
      }
      
      public function get prizeLevelId() : int
      {
         return var_1340;
      }
   }
}
