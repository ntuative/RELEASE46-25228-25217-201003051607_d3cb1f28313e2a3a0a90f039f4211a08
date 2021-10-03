package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureHabboWheelVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1100:int = 31;
      
      private static const const_1092:int = 32;
      
      private static const const_766:int = 10;
      
      private static const const_491:int = 20;
       
      
      private var var_569:Boolean = false;
      
      private var var_233:Array;
      
      public function FurnitureHabboWheelVisualization()
      {
         var_233 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_569 = true;
            var_233 = new Array();
            var_233.push(const_1100);
            var_233.push(const_1092);
            return;
         }
         if(param1 > 0 && param1 <= const_766)
         {
            if(var_569)
            {
               var_569 = false;
               var_233 = new Array();
               var_233.push(const_766 + param1);
               var_233.push(const_491 + param1);
               var_233.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(1) && super.getLastFramePlayed(2) && super.getLastFramePlayed(3))
         {
            if(false)
            {
               super.setAnimation(var_233.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
