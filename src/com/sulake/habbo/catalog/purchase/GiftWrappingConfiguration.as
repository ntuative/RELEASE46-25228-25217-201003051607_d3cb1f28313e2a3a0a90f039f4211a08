package com.sulake.habbo.catalog.purchase
{
   import com.sulake.habbo.communication.messages.incoming.catalog.GiftWrappingConfigurationEvent;
   import com.sulake.habbo.communication.messages.parser.catalog.GiftWrappingConfigurationParser;
   
   public class GiftWrappingConfiguration
   {
       
      
      private var var_559:Array;
      
      private var var_1189:int;
      
      private var var_1456:Array;
      
      private var var_560:Array;
      
      private var var_1835:Boolean = false;
      
      public function GiftWrappingConfiguration(param1:GiftWrappingConfigurationEvent)
      {
         super();
         if(param1 == null)
         {
            return;
         }
         var _loc2_:GiftWrappingConfigurationParser = param1.getParser();
         if(_loc2_ == null)
         {
            return;
         }
         var_1835 = _loc2_.isWrappingEnabled;
         var_1189 = _loc2_.wrappingPrice;
         var_1456 = _loc2_.stuffTypes;
         var_560 = _loc2_.boxTypes;
         var_559 = _loc2_.ribbonTypes;
      }
      
      public function get ribbonTypes() : Array
      {
         return var_559;
      }
      
      public function get stuffTypes() : Array
      {
         return var_1456;
      }
      
      public function get price() : int
      {
         return var_1189;
      }
      
      public function get boxTypes() : Array
      {
         return var_560;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1835;
      }
   }
}
