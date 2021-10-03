package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_1634:String;
      
      private var var_1320:String;
      
      private var var_1633:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_1633 = param1;
         var_1320 = param2;
         var_1634 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1633,var_1320,var_1634];
      }
      
      public function dispose() : void
      {
      }
   }
}
