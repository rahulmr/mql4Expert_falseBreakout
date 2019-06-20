#include "type.mqh"

   type::type(){}
   type::~type(){}
   void type::setNULL(){flag = 0;}
   void type::setBarCrashTime(datetime dt){barCrashTime = dt;}
   datetime type::getBarCrashTime(void) {return barCrashTime;}
   
   void type::setDatasfirstevent (bool busy_, string order_, double level_, double innerLevel_, datetime firstFractalBar_)
   {
      busy = busy_;
      order = order_;
      level = level_;
      innerLevel = innerLevel_;
      firstFractalBar = firstFractalBar_;
   }
   
   void type::setDatassecondaryevent (double stop_, double target_)
   {
      stop = stop_;
      target = target_;
   }
   
   void type::deleteBusy()
   {
      busy = false;
      order = "";
      level = 0;
      innerLevel = 0;
      cancelLevel = 0;
      firstFractalBar = 0;
      stop = 0;
      target = 0;
      flag = 0;
   }
   
   void type::setFlag(int fl)
   {
      flag = fl;
   }
   
   bool type::getBusy(void) {return busy;}
   string type::getOrder(void) {return order;}  
   double type::getLevel(void) {return level;}
   double type::getInnerLevel(void) {return innerLevel;}
   double type::getCancelLevel(void) {return cancelLevel;}
   datetime type::getFirstFractalBar(void) {return firstFractalBar;}
   double type::getStop(void) {return stop;}
   double type::getTarget(void) {return target;}
   int type::getFlag(void) {return flag;}
   void type::setBetweenExstremums(double betweenExstremums_){betweenExstremums = betweenExstremums_;}
   double type::getBetweenExstremums(void){return betweenExstremums;}