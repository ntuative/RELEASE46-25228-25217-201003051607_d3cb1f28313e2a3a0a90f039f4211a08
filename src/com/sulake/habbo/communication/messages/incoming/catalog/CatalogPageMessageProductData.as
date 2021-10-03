package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_215:String = "e";
      
      public static const const_77:String = "i";
      
      public static const const_75:String = "s";
       
      
      private var var_989:String;
      
      private var var_1199:String;
      
      private var var_1201:int;
      
      private var var_1592:int;
      
      private var var_988:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1199 = param1.readString();
         var_1592 = param1.readInteger();
         var_989 = param1.readString();
         var_988 = param1.readInteger();
         var_1201 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_988;
      }
      
      public function get productType() : String
      {
         return var_1199;
      }
      
      public function get expiration() : int
      {
         return var_1201;
      }
      
      public function get furniClassId() : int
      {
         return var_1592;
      }
      
      public function get extraParam() : String
      {
         return var_989;
      }
   }
}
