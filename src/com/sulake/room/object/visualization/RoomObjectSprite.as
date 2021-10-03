package com.sulake.room.object.visualization
{
   import flash.display.BitmapData;
   import flash.display.BlendMode;
   import flash.geom.Point;
   
   public final class RoomObjectSprite implements IRoomObjectSprite
   {
      
      private static var var_1113:int = 0;
       
      
      private var _updateID:int = 0;
      
      private var var_1617:Boolean = false;
      
      private var var_1112:String;
      
      private var var_1240:String = "";
      
      private var var_1622:int = 0;
      
      private var var_336:Boolean = true;
      
      private var _height:int = 0;
      
      private var var_1621:int = 255;
      
      private var _color:int = 16777215;
      
      private var var_982:Boolean = false;
      
      private var var_981:Boolean = false;
      
      private var var_1618:Boolean = false;
      
      private var _offset:Point;
      
      private var var_1619:Boolean = true;
      
      private var var_1006:Number = 0;
      
      private var _width:int = 0;
      
      private var var_1620:String = "";
      
      private var var_819:BitmapData = null;
      
      public function RoomObjectSprite()
      {
         var_1112 = BlendMode.NORMAL;
         _offset = new Point(0,0);
         super();
         var_1622 = var_1113++;
      }
      
      public function set flipV(param1:Boolean) : void
      {
         var_981 = param1;
         ++_updateID;
      }
      
      public function set clickHandling(param1:Boolean) : void
      {
         var_1618 = param1;
         ++_updateID;
      }
      
      public function dispose() : void
      {
         var_819 = null;
         _width = 0;
         _height = 0;
      }
      
      public function get offsetX() : int
      {
         return _offset.x;
      }
      
      public function get offsetY() : int
      {
         return _offset.y;
      }
      
      public function get height() : int
      {
         return _height;
      }
      
      public function set blendMode(param1:String) : void
      {
         var_1112 = param1;
         ++_updateID;
      }
      
      public function set tag(param1:String) : void
      {
         var_1620 = param1;
         ++_updateID;
      }
      
      public function set assetName(param1:String) : void
      {
         var_1240 = param1;
         ++_updateID;
      }
      
      public function get varyingDepth() : Boolean
      {
         return var_1617;
      }
      
      public function set offsetX(param1:int) : void
      {
         _offset.x = param1;
         ++_updateID;
      }
      
      public function set offsetY(param1:int) : void
      {
         _offset.y = param1;
         ++_updateID;
      }
      
      public function get relativeDepth() : Number
      {
         return var_1006;
      }
      
      public function get color() : int
      {
         return _color;
      }
      
      public function get alpha() : int
      {
         return var_1621;
      }
      
      public function set capturesMouse(param1:Boolean) : void
      {
         var_1619 = param1;
         ++_updateID;
      }
      
      public function get visible() : Boolean
      {
         return var_336;
      }
      
      public function set varyingDepth(param1:Boolean) : void
      {
         var_1617 = param1;
         ++_updateID;
      }
      
      public function get flipH() : Boolean
      {
         return var_982;
      }
      
      public function get flipV() : Boolean
      {
         return var_981;
      }
      
      public function get clickHandling() : Boolean
      {
         return var_1618;
      }
      
      public function get blendMode() : String
      {
         return var_1112;
      }
      
      public function get instanceId() : int
      {
         return var_1622;
      }
      
      public function get tag() : String
      {
         return var_1620;
      }
      
      public function get assetName() : String
      {
         return var_1240;
      }
      
      public function set relativeDepth(param1:Number) : void
      {
         var_1006 = param1;
         ++_updateID;
      }
      
      public function get capturesMouse() : Boolean
      {
         return var_1619;
      }
      
      public function set alpha(param1:int) : void
      {
         param1 &= 255;
         var_1621 = param1;
         ++_updateID;
      }
      
      public function get width() : int
      {
         return _width;
      }
      
      public function get updateId() : int
      {
         return _updateID;
      }
      
      public function set color(param1:int) : void
      {
         param1 &= 16777215;
         _color = param1;
         ++_updateID;
      }
      
      public function set asset(param1:BitmapData) : void
      {
         if(param1 != null)
         {
            _width = param1.width;
            _height = param1.height;
         }
         var_819 = param1;
         ++_updateID;
      }
      
      public function set visible(param1:Boolean) : void
      {
         var_336 = param1;
         ++_updateID;
      }
      
      public function get asset() : BitmapData
      {
         return var_819;
      }
      
      public function set flipH(param1:Boolean) : void
      {
         var_982 = param1;
         ++_updateID;
      }
   }
}
