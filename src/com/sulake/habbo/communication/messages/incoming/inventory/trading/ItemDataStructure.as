package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_935:String;
      
      private var var_1840:int;
      
      private var var_2088:int;
      
      private var var_1536:int;
      
      private var var_2091:int;
      
      private var _category:int;
      
      private var var_2365:int;
      
      private var var_2087:int;
      
      private var var_2086:int;
      
      private var var_2090:int;
      
      private var var_2085:int;
      
      private var var_2089:Boolean;
      
      private var var_1362:String;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:int, param12:Boolean)
      {
         super();
         var_1840 = param1;
         var_935 = param2;
         var_2088 = param3;
         var_2090 = param4;
         _category = param5;
         var_1362 = param6;
         var_1536 = param7;
         var_2086 = param8;
         var_2087 = param9;
         var_2085 = param10;
         var_2091 = param11;
         var_2089 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2090;
      }
      
      public function get extra() : int
      {
         return var_1536;
      }
      
      public function get stuffData() : String
      {
         return var_1362;
      }
      
      public function get groupable() : Boolean
      {
         return var_2089;
      }
      
      public function get creationMonth() : int
      {
         return var_2085;
      }
      
      public function get roomItemID() : int
      {
         return var_2088;
      }
      
      public function get itemType() : String
      {
         return var_935;
      }
      
      public function get itemID() : int
      {
         return var_1840;
      }
      
      public function get songID() : int
      {
         return var_1536;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2086;
      }
      
      public function get creationYear() : int
      {
         return var_2091;
      }
      
      public function get creationDay() : int
      {
         return var_2087;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
