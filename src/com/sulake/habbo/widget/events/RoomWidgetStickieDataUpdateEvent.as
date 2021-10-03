package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_734:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_185:String;
      
      private var var_656:String;
      
      private var var_1441:String;
      
      private var var_147:int = -1;
      
      private var var_10:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_147 = param2;
         var_1441 = param3;
         var_185 = param4;
         var_656 = param5;
         var_10 = param6;
      }
      
      public function get objectType() : String
      {
         return var_1441;
      }
      
      public function get colorHex() : String
      {
         return var_656;
      }
      
      public function get text() : String
      {
         return var_185;
      }
      
      public function get objectId() : int
      {
         return var_147;
      }
      
      public function get controller() : Boolean
      {
         return var_10;
      }
   }
}
