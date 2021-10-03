package com.sulake.habbo.catalog.marketplace
{
   public class MarketplaceItemStats
   {
       
      
      private var var_1498:Array;
      
      private var var_1868:int;
      
      private var var_1975:int;
      
      private var var_1976:int;
      
      private var var_1978:int;
      
      private var _dayOffsets:Array;
      
      private var var_1977:int;
      
      private var var_1499:Array;
      
      public function MarketplaceItemStats()
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
      
      public function set averagePrices(param1:Array) : void
      {
         var_1498 = param1.slice();
      }
      
      public function set dayOffsets(param1:Array) : void
      {
         _dayOffsets = param1.slice();
      }
      
      public function get furniTypeId() : int
      {
         return var_1975;
      }
      
      public function set soldAmounts(param1:Array) : void
      {
         var_1499 = param1.slice();
      }
      
      public function set averagePrice(param1:int) : void
      {
         var_1868 = param1;
      }
      
      public function get historyLength() : int
      {
         return var_1976;
      }
      
      public function get furniCategoryId() : int
      {
         return var_1978;
      }
      
      public function get offerCount() : int
      {
         return var_1977;
      }
      
      public function set offerCount(param1:int) : void
      {
         var_1977 = param1;
      }
      
      public function get soldAmounts() : Array
      {
         return var_1499;
      }
      
      public function get averagePrice() : int
      {
         return var_1868;
      }
      
      public function set furniCategoryId(param1:int) : void
      {
         var_1978 = param1;
      }
      
      public function set historyLength(param1:int) : void
      {
         var_1976 = param1;
      }
      
      public function set furniTypeId(param1:int) : void
      {
         var_1975 = param1;
      }
   }
}
