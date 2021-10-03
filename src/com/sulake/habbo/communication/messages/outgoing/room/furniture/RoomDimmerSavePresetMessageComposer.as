package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_1667:int;
      
      private var var_1666:int;
      
      private var var_1665:Boolean;
      
      private var var_1668:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_1669:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_1666 = param1;
         var_1667 = param2;
         var_1668 = param3;
         var_1669 = param4;
         var_1665 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1666,var_1667,var_1668,var_1669,int(var_1665)];
      }
      
      public function dispose() : void
      {
      }
   }
}
