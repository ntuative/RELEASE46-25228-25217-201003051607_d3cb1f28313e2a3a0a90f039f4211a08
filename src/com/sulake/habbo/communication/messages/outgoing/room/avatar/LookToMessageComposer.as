package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class LookToMessageComposer implements IMessageComposer
   {
       
      
      private var var_2179:int;
      
      private var var_2178:int;
      
      public function LookToMessageComposer(param1:int, param2:int)
      {
         super();
         var_2179 = param1;
         var_2178 = param2;
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return [var_2179,var_2178];
      }
   }
}
