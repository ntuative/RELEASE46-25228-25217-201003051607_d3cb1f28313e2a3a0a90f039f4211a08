package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarPostureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2210:String;
      
      private var var_864:String;
      
      public function RoomObjectAvatarPostureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_2210 = param1;
         var_864 = param2;
      }
      
      public function get postureType() : String
      {
         return var_2210;
      }
      
      public function get parameter() : String
      {
         return var_864;
      }
   }
}
