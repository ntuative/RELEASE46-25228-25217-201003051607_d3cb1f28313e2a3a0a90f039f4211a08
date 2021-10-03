package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1538:String = "e";
      
      public static const const_1567:String = "i";
      
      public static const const_1491:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_2175:int;
      
      private var var_1336:Array;
      
      private var var_2174:int;
      
      private var var_2177:int;
      
      private var var_2173:int;
      
      private var _name:String;
      
      private var var_2176:int;
      
      private var var_1165:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_2175 = param4;
         var_2176 = param5;
         var_2174 = param6;
         var_2177 = param7;
         var_2173 = param8;
         var_1336 = param9;
         _title = param10;
         var_1165 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_2177;
      }
      
      public function get tileSizeZ() : int
      {
         return var_2173;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_2176;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_2175;
      }
      
      public function get tileSizeX() : int
      {
         return var_2174;
      }
      
      public function get colours() : Array
      {
         return var_1336;
      }
      
      public function get description() : String
      {
         return var_1165;
      }
   }
}
