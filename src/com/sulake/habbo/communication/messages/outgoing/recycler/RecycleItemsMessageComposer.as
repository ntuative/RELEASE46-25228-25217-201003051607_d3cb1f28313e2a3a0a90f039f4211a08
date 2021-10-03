package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_797:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_797 = new Array();
         var_797.push(param1.length);
         var_797 = var_797.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_797;
      }
   }
}
