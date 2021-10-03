package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1720:int;
      
      private var var_1948:String;
      
      private var var_1949:int;
      
      private var var_1952:int;
      
      private var var_728:Boolean;
      
      private var var_1951:Boolean;
      
      private var var_408:int;
      
      private var var_1165:String;
      
      private var var_1785:int;
      
      private var var_1138:int;
      
      private var _ownerName:String;
      
      private var var_701:String;
      
      private var var_1950:int;
      
      private var var_1953:RoomThumbnailData;
      
      private var var_1784:Boolean;
      
      private var var_614:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_614 = new Array();
         super();
         var_408 = param1.readInteger();
         var_728 = param1.readBoolean();
         var_701 = param1.readString();
         _ownerName = param1.readString();
         var_1785 = param1.readInteger();
         var_1720 = param1.readInteger();
         var_1950 = param1.readInteger();
         var_1165 = param1.readString();
         var_1949 = param1.readInteger();
         var_1784 = param1.readBoolean();
         var_1952 = param1.readInteger();
         var_1138 = param1.readInteger();
         var_1948 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_614.push(_loc4_);
            _loc3_++;
         }
         var_1953 = new RoomThumbnailData(param1);
         var_1951 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1950;
      }
      
      public function get roomName() : String
      {
         return var_701;
      }
      
      public function get userCount() : int
      {
         return var_1720;
      }
      
      public function get score() : int
      {
         return var_1952;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1948;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1784;
      }
      
      public function get tags() : Array
      {
         return var_614;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1951;
      }
      
      public function get event() : Boolean
      {
         return var_728;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         this.var_614 = null;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1138;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1949;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1953;
      }
      
      public function get doorMode() : int
      {
         return var_1785;
      }
      
      public function get flatId() : int
      {
         return var_408;
      }
      
      public function get description() : String
      {
         return var_1165;
      }
   }
}
