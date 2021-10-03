package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1718:int;
      
      private var var_407:Boolean;
      
      private var var_1719:Boolean;
      
      private var var_778:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1719 = param1.readBoolean();
         if(var_1719)
         {
            var_1718 = param1.readInteger();
            var_407 = param1.readBoolean();
         }
         else
         {
            var_778 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_778 != null)
         {
            var_778.dispose();
            var_778 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1718;
      }
      
      public function get owner() : Boolean
      {
         return var_407;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1719;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_778;
      }
   }
}
