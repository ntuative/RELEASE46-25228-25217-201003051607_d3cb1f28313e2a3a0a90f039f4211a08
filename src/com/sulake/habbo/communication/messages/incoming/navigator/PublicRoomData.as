package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1711:int;
      
      private var var_1709:String;
      
      private var var_1705:int;
      
      private var _disposed:Boolean;
      
      private var var_1710:int;
      
      private var var_1704:String;
      
      private var var_1130:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1704 = param1.readString();
         var_1711 = param1.readInteger();
         var_1705 = param1.readInteger();
         var_1709 = param1.readString();
         var_1710 = param1.readInteger();
         var_1130 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1710;
      }
      
      public function get worldId() : int
      {
         return var_1705;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1704;
      }
      
      public function get unitPort() : int
      {
         return var_1711;
      }
      
      public function get castLibs() : String
      {
         return var_1709;
      }
      
      public function get nodeId() : int
      {
         return var_1130;
      }
   }
}
