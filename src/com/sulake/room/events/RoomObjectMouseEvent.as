package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1508:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1528:String = "ROE_MOUSE_ENTER";
      
      public static const const_461:String = "ROE_MOUSE_MOVE";
      
      public static const const_1581:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_221:String = "ROE_MOUSE_CLICK";
      
      public static const const_472:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1987:Boolean;
      
      private var var_1983:Boolean;
      
      private var var_1985:Boolean;
      
      private var var_1989:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1985 = param4;
         var_1989 = param5;
         var_1987 = param6;
         var_1983 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1983;
      }
      
      public function get altKey() : Boolean
      {
         return var_1985;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1989;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1987;
      }
   }
}
