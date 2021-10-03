package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1047:int = 1;
      
      private static const const_1092:int = 3;
      
      private static const const_1045:int = 2;
      
      private static const const_1046:int = 15;
       
      
      private var var_768:int;
      
      private var var_233:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_233 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1045)
         {
            var_233 = new Array();
            var_233.push(const_1047);
            var_768 = const_1046;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_768 > 0)
         {
            --var_768;
         }
         if(var_768 == 0)
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
