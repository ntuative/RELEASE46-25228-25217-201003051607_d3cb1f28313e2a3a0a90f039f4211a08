package com.sulake.habbo.widget.messages
{
   public class RoomWidgetChatMessage extends RoomWidgetMessage
   {
      
      public static const const_112:int = 0;
      
      public static const const_102:int = 1;
      
      public static const const_100:int = 2;
      
      public static const const_590:String = "RWCM_MESSAGE_CHAT";
       
      
      private var var_1148:int = 0;
      
      private var var_1858:String = "";
      
      private var var_185:String = "";
      
      public function RoomWidgetChatMessage(param1:String, param2:String, param3:int = 0, param4:String = "")
      {
         super(param1);
         var_185 = param2;
         var_1148 = param3;
         var_1858 = param4;
      }
      
      public function get recipientName() : String
      {
         return var_1858;
      }
      
      public function get chatType() : int
      {
         return var_1148;
      }
      
      public function get text() : String
      {
         return var_185;
      }
   }
}
