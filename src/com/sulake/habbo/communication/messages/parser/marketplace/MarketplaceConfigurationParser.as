package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1836:int;
      
      private var var_1480:int;
      
      private var var_1837:int;
      
      private var var_1834:int;
      
      private var var_1833:int;
      
      private var var_1481:int;
      
      private var var_1599:int;
      
      private var var_1835:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1836;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_1480;
      }
      
      public function get averagePricePeriod() : int
      {
         return var_1599;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1834;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1833;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1481;
      }
      
      public function get commission() : int
      {
         return var_1837;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1835 = param1.readBoolean();
         var_1837 = param1.readInteger();
         var_1480 = param1.readInteger();
         var_1481 = param1.readInteger();
         var_1834 = param1.readInteger();
         var_1836 = param1.readInteger();
         var_1833 = param1.readInteger();
         var_1599 = param1.readInteger();
         return true;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1835;
      }
   }
}
