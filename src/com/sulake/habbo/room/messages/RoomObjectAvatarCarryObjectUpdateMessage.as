package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_935:int;
      
      private var var_1117:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_935 = param1;
         var_1117 = param2;
      }
      
      public function get itemType() : int
      {
         return var_935;
      }
      
      public function get itemName() : String
      {
         return var_1117;
      }
   }
}
