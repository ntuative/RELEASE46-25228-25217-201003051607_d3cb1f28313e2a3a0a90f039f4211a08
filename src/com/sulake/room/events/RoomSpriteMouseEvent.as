package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1983:Boolean = false;
      
      private var var_1985:Boolean = false;
      
      private var var_1660:String = "";
      
      private var _type:String = "";
      
      private var var_1987:Boolean = false;
      
      private var var_1932:Number = 0;
      
      private var var_1988:Number = 0;
      
      private var var_1986:Number = 0;
      
      private var var_1984:String = "";
      
      private var var_1933:Number = 0;
      
      private var var_1989:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1984 = param2;
         var_1660 = param3;
         var_1988 = param4;
         var_1986 = param5;
         var_1932 = param6;
         var_1933 = param7;
         var_1989 = param8;
         var_1985 = param9;
         var_1987 = param10;
         var_1983 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1989;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1983;
      }
      
      public function get localX() : Number
      {
         return var_1932;
      }
      
      public function get localY() : Number
      {
         return var_1933;
      }
      
      public function get canvasId() : String
      {
         return var_1984;
      }
      
      public function get altKey() : Boolean
      {
         return var_1985;
      }
      
      public function get spriteTag() : String
      {
         return var_1660;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1988;
      }
      
      public function get screenY() : Number
      {
         return var_1986;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1987;
      }
   }
}
