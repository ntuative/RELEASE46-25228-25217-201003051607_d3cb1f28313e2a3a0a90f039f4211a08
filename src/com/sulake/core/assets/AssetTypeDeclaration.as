package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_2098:Class;
      
      private var var_2096:Class;
      
      private var var_2097:String;
      
      private var var_1280:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_2097 = param1;
         var_2096 = param2;
         var_2098 = param3;
         if(rest == null)
         {
            var_1280 = new Array();
         }
         else
         {
            var_1280 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_2098;
      }
      
      public function get assetClass() : Class
      {
         return var_2096;
      }
      
      public function get mimeType() : String
      {
         return var_2097;
      }
      
      public function get fileTypes() : Array
      {
         return var_1280;
      }
   }
}
