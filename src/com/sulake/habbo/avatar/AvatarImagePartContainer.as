package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_1862:int;
      
      private var var_1864:String;
      
      private var var_1525:IActionDefinition;
      
      private var var_1863:Boolean;
      
      private var _color:IPartColor;
      
      private var var_1865:String;
      
      private var var_1860:String;
      
      private var var_1729:Boolean;
      
      private var var_1861:ColorTransform;
      
      private var var_1682:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_1864 = param1;
         var_1865 = param2;
         var_1862 = param3;
         _color = param4;
         _frames = param5;
         var_1525 = param6;
         var_1729 = param7;
         var_1682 = param8;
         var_1860 = param9;
         var_1863 = param10;
         var_1861 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1729;
      }
      
      public function get partType() : String
      {
         return var_1865;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1682;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_1863;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_1862;
      }
      
      public function get flippedPartType() : String
      {
         return var_1860;
      }
      
      public function get bodyPartId() : String
      {
         return var_1864;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1525;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_1861;
      }
   }
}
