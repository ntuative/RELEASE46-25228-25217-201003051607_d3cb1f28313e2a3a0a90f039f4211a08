package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_981:Boolean;
      
      private var _name:String;
      
      private var var_2051:String;
      
      private var var_982:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_2051 = String(param1.@link);
         var_982 = Boolean(parseInt(param1.@fliph));
         var_981 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_982;
      }
      
      public function get flipV() : Boolean
      {
         return var_981;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_2051;
      }
   }
}
