package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_87:Number = 0;
      
      private var _data:String = "";
      
      private var var_1536:int = 0;
      
      private var var_34:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1930:Boolean = false;
      
      private var var_2358:String = "";
      
      private var _id:int = 0;
      
      private var var_197:Boolean = false;
      
      private var var_227:String = "";
      
      private var var_1931:int = 0;
      
      private var var_1934:int = 0;
      
      private var var_1932:int = 0;
      
      private var var_1933:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1930 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_197)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1930;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_197)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_227;
      }
      
      public function get state() : int
      {
         return var_34;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1932 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_197)
         {
            var_1931 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1934 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_197)
         {
            var_227 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_197)
         {
            var_1933 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_197)
         {
            var_34 = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1932;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_197)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1931;
      }
      
      public function get wallY() : Number
      {
         return var_1934;
      }
      
      public function get localY() : Number
      {
         return var_1933;
      }
      
      public function setReadOnly() : void
      {
         var_197 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_87;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_197)
         {
            var_87 = param1;
         }
      }
   }
}
