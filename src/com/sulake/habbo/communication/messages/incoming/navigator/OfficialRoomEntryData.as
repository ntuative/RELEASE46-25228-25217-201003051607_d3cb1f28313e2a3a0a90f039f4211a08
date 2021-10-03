package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_1315:int = 4;
      
      public static const const_625:int = 3;
      
      public static const const_569:int = 2;
      
      public static const const_813:int = 1;
       
      
      private var var_1900:String;
      
      private var _disposed:Boolean;
      
      private var var_1720:int;
      
      private var var_1904:Boolean;
      
      private var var_773:String;
      
      private var var_822:PublicRoomData;
      
      private var var_1902:int;
      
      private var _index:int;
      
      private var var_1901:String;
      
      private var _type:int;
      
      private var var_1620:String;
      
      private var var_823:GuestRoomData;
      
      private var var_1903:String;
      
      private var _open:Boolean;
      
      public function OfficialRoomEntryData(param1:IMessageDataWrapper)
      {
         super();
         _index = param1.readInteger();
         var_1900 = param1.readString();
         var_1903 = param1.readString();
         var_1904 = param1.readInteger() == 1;
         var_1901 = param1.readString();
         var_773 = param1.readString();
         var_1902 = param1.readInteger();
         var_1720 = param1.readInteger();
         _type = param1.readInteger();
         if(_type == const_813)
         {
            var_1620 = param1.readString();
         }
         else if(_type == const_625)
         {
            var_822 = new PublicRoomData(param1);
         }
         else if(_type == const_569)
         {
            var_823 = new GuestRoomData(param1);
         }
      }
      
      public function get folderId() : int
      {
         return var_1902;
      }
      
      public function get popupCaption() : String
      {
         return var_1900;
      }
      
      public function get userCount() : int
      {
         return var_1720;
      }
      
      public function get open() : Boolean
      {
         return _open;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1904;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_813)
         {
            return 0;
         }
         if(this.type == const_569)
         {
            return this.var_823.maxUserCount;
         }
         if(this.type == const_625)
         {
            return this.var_822.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1903;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_823 != null)
         {
            this.var_823.dispose();
            this.var_823 = null;
         }
         if(this.var_822 != null)
         {
            this.var_822.dispose();
            this.var_822 = null;
         }
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_823;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get picText() : String
      {
         return var_1901;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_822;
      }
      
      public function get picRef() : String
      {
         return var_773;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get tag() : String
      {
         return var_1620;
      }
      
      public function toggleOpen() : void
      {
         _open = !_open;
      }
   }
}
