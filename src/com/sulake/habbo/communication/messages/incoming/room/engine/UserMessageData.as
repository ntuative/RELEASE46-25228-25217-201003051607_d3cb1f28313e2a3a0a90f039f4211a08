package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1248:String = "F";
      
      public static const const_989:String = "M";
       
      
      private var var_88:Number = 0;
      
      private var var_556:String = "";
      
      private var var_1970:int = 0;
      
      private var var_1969:String = "";
      
      private var var_1968:int = 0;
      
      private var var_1966:int = 0;
      
      private var var_1972:String = "";
      
      private var var_1293:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1967:String = "";
      
      private var _name:String = "";
      
      private var var_1971:int = 0;
      
      private var _y:Number = 0;
      
      private var var_87:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_87;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_227 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_197)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_1970;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_197)
         {
            var_1968 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_1967;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_197)
         {
            var_1972 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_197)
         {
            var_1967 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_197)
         {
            var_1966 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_197)
         {
            var_556 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_197)
         {
            var_1970 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_197)
         {
            var_1293 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1968;
      }
      
      public function get groupID() : String
      {
         return var_1972;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_197)
         {
            var_1971 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_197)
         {
            var_1969 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get sex() : String
      {
         return var_1293;
      }
      
      public function get figure() : String
      {
         return var_556;
      }
      
      public function get webID() : int
      {
         return var_1971;
      }
      
      public function get custom() : String
      {
         return var_1969;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_87 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_88 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_88;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1966;
      }
   }
}
