package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomModerationData implements IDisposable
   {
       
      
      private var var_112:RoomData;
      
      private var _disposed:Boolean;
      
      private var var_1720:int;
      
      private var var_408:int;
      
      private var var_728:RoomData;
      
      private var var_1768:int;
      
      private var _ownerName:String;
      
      private var var_2202:Boolean;
      
      public function RoomModerationData(param1:IMessageDataWrapper)
      {
         super();
         var_408 = param1.readInteger();
         var_1720 = param1.readInteger();
         var_2202 = param1.readBoolean();
         var_1768 = param1.readInteger();
         _ownerName = param1.readString();
         var_112 = new RoomData(param1);
         var_728 = new RoomData(param1);
      }
      
      public function get userCount() : int
      {
         return var_1720;
      }
      
      public function get event() : RoomData
      {
         return var_728;
      }
      
      public function get room() : RoomData
      {
         return var_112;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_112 != null)
         {
            var_112.dispose();
            var_112 = null;
         }
         if(var_728 != null)
         {
            var_728.dispose();
            var_728 = null;
         }
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get ownerId() : int
      {
         return var_1768;
      }
      
      public function get ownerInRoom() : Boolean
      {
         return var_2202;
      }
   }
}
