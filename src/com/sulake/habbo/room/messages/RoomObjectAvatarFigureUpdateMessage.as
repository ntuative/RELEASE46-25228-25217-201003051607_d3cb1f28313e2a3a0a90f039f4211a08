package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_2027:String;
      
      private var var_556:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_556 = param1;
         var_2027 = param2;
      }
      
      public function get race() : String
      {
         return var_2027;
      }
      
      public function get figure() : String
      {
         return var_556;
      }
   }
}
