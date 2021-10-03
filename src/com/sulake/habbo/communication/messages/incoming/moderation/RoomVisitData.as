package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_701:String;
      
      private var var_2094:int;
      
      private var var_1509:Boolean;
      
      private var _roomId:int;
      
      private var var_2095:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1509 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_701 = param1.readString();
         var_2095 = param1.readInteger();
         var_2094 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1509;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get enterMinute() : int
      {
         return var_2094;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_2095;
      }
   }
}
