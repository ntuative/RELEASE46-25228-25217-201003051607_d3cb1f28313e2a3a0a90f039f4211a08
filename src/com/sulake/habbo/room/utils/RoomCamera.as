package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_343:Number = 0.5;
      
      private static const const_753:int = 3;
      
      private static const const_1070:Number = 1;
       
      
      private var var_1755:Boolean = false;
      
      private var var_1752:Boolean = false;
      
      private var var_962:int = 0;
      
      private var var_252:Vector3d = null;
      
      private var var_1759:int = 0;
      
      private var var_1754:int = 0;
      
      private var var_1756:Boolean = false;
      
      private var var_1753:int = -2;
      
      private var var_1757:Boolean = false;
      
      private var var_1760:int = 0;
      
      private var var_1751:int = -1;
      
      private var var_384:Vector3d = null;
      
      private var var_1758:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1759;
      }
      
      public function get targetId() : int
      {
         return var_1751;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1760 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1759 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1755 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1751 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1752 = param1;
      }
      
      public function dispose() : void
      {
         var_384 = null;
         var_252 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_384 == null)
         {
            var_384 = new Vector3d();
         }
         var_384.assign(param1);
         var_962 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1753;
      }
      
      public function get screenHt() : int
      {
         return var_1758;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1754 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_252;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1758 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1760;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1755;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1752;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_384 != null && var_252 != null)
         {
            ++var_962;
            _loc2_ = Vector3d.dif(var_384,var_252);
            if(_loc2_.length <= const_343)
            {
               var_252 = var_384;
               var_384 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_343 * (const_753 + 1))
               {
                  _loc2_.mul(const_343);
               }
               else if(var_962 <= const_753)
               {
                  _loc2_.mul(const_343);
               }
               else
               {
                  _loc2_.mul(const_1070);
               }
               var_252 = Vector3d.sum(var_252,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1756 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1754;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1757 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1753 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_252 != null)
         {
            return;
         }
         var_252 = new Vector3d();
         var_252.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1756;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1757;
      }
   }
}
