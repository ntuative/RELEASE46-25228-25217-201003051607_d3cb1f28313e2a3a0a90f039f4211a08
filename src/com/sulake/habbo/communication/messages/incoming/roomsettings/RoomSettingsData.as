package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_386:int = 0;
      
      public static const const_106:int = 2;
      
      public static const const_157:int = 1;
      
      public static const const_541:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2021:Boolean;
      
      private var var_2019:Boolean;
      
      private var var_2152:int;
      
      private var var_2022:Array;
      
      private var var_2151:int;
      
      private var var_1951:Boolean;
      
      private var var_1165:String;
      
      private var var_2020:int;
      
      private var var_1785:int;
      
      private var var_1138:int;
      
      private var _roomId:int;
      
      private var var_614:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_2020;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_2020 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_614;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1951;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2151 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_2022 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_614 = param1;
      }
      
      public function get allowWalkThrough() : Boolean
      {
         return var_2021;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_2019;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2152;
      }
      
      public function get categoryId() : int
      {
         return var_1138;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1951 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2151;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_2022;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1785 = param1;
      }
      
      public function set allowWalkThrough(param1:Boolean) : void
      {
         var_2021 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_2019 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2152 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1785;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1138 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1165 = param1;
      }
      
      public function get description() : String
      {
         return var_1165;
      }
   }
}
