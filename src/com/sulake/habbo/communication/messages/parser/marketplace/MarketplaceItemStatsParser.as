package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceItemStatsParser implements IMessageParser
   {
       
      
      private var var_1498:Array;
      
      private var var_1868:int;
      
      private var var_1975:int;
      
      private var var_1978:int;
      
      private var var_1976:int;
      
      private var _dayOffsets:Array;
      
      private var var_1977:int;
      
      private var var_1499:Array;
      
      public function MarketplaceItemStatsParser()
      {
         super();
      }
      
      public function get dayOffsets() : Array
      {
         return _dayOffsets;
      }
      
      public function get averagePrices() : Array
      {
         return var_1498;
      }
      
      public function get furniTypeId() : int
      {
         return var_1975;
      }
      
      public function get historyLength() : int
      {
         return var_1976;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1978;
      }
      
      public function get offerCount() : int
      {
         return var_1977;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1499;
      }
      
      public function get averagePrice() : int
      {
         return var_1868;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1868 = param1.readInteger();
         var_1977 = param1.readInteger();
         var_1976 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _dayOffsets = [];
         var_1498 = [];
         var_1499 = [];
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _dayOffsets.push(param1.readInteger());
            var_1498.push(param1.readInteger());
            var_1499.push(param1.readInteger());
            _loc3_++;
         }
         var_1978 = param1.readInteger();
         var_1975 = param1.readInteger();
         return true;
      }
   }
}
