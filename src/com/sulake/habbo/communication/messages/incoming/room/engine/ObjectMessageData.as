package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_1057:int = 0;
      
      private var _data:String = "";
      
      private var var_1536:int = -1;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var var_1058:int = 0;
      
      private var var_2358:String = "";
      
      private var var_1882:int = 0;
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_227:int = 0;
      
      private var var_1994:String = null;
      
      private var var_88:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_87:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_227;
      }
      
      public function get extra() : int
      {
         return var_1536;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_197)
         {
            var_227 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_197)
         {
            var_88 = param1;
         }
      }
      
      public function set extra(param1:int) : void
      {
         if(!var_197)
         {
            var_1536 = param1;
         }
      }
      
      public function get z() : Number
      {
         return var_87;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            var_34 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get expiryTime() : int
      {
         return var_1882;
      }
      
      public function get staticClass() : String
      {
         return var_1994;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set expiryTime(param1:int) : void
      {
         if(!var_197)
         {
            var_1882 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_197)
         {
            var_1994 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_197)
         {
            var_1057 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_197)
         {
            var_1058 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_87 = param1;
         }
      }
      
      public function get sizeX() : int
      {
         return var_1057;
      }
      
      public function get x() : Number
      {
         return var_88;
      }
      
      public function get sizeY() : int
      {
         return var_1058;
      }
   }
}
