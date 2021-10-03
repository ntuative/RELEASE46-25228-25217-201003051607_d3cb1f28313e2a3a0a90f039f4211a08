package com.sulake.habbo.widget.messages
{
   public class RoomWidgetStickieSendUpdateMessage extends RoomWidgetMessage
   {
      
      public static const const_400:String = "RWSUM_STICKIE_SEND_UPDATE";
      
      public static const const_508:String = "RWSUM_STICKIE_SEND_DELETE";
       
      
      private var var_656:String;
      
      private var var_147:int;
      
      private var var_185:String;
      
      public function RoomWidgetStickieSendUpdateMessage(param1:String, param2:int, param3:String = "", param4:String = "")
      {
         super(param1);
         var_147 = param2;
         var_185 = param3;
         var_656 = param4;
      }
      
      public function get objectId() : int
      {
         return var_147;
      }
      
      public function get text() : String
      {
         return var_185;
      }
      
      public function get colorHex() : String
      {
         return var_656;
      }
   }
}
