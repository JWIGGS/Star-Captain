///@description map from numbers



/////////////////////////
//
//     hull map
//
/////////////////////////

global.hullConnectionRight = ds_map_create();
#macro hullDataConnectionRight 0
global.hullData[hullDataConnectionRight] = global.hullConnectionRight;
global.hullDataStringRaw[hullDataConnectionRight] = "ConnectionRight";
global.hullDataString[hullDataConnectionRight] = string_space_caps("ConnectionRight");

global.hullConnectionUp = ds_map_create();
#macro hullDataConnectionUp 1
global.hullData[hullDataConnectionUp] = global.hullConnectionUp;
global.hullDataStringRaw[hullDataConnectionUp] = "ConnectionUp";
global.hullDataString[hullDataConnectionUp] = string_space_caps("ConnectionUp");

global.hullConnectionLeft = ds_map_create();
#macro hullDataConnectionLeft 2
global.hullData[hullDataConnectionLeft] = global.hullConnectionLeft;
global.hullDataStringRaw[hullDataConnectionLeft] = "ConnectionLeft";
global.hullDataString[hullDataConnectionLeft] = string_space_caps("ConnectionLeft");

global.hullConnectionDown = ds_map_create();
#macro hullDataConnectionDown 3
global.hullData[hullDataConnectionDown] = global.hullConnectionDown;
global.hullDataStringRaw[hullDataConnectionDown] = "ConnectionDown";
global.hullDataString[hullDataConnectionDown] = string_space_caps("ConnectionDown");

global.hullSize = ds_map_create();
#macro hullDataSize 4
global.hullData[hullDataSize] = global.hullSize;
global.hullDataStringRaw[hullDataSize] = "Size";
global.hullDataString[hullDataSize] = string_space_caps("Size");

global.hullCogX = ds_map_create();
#macro hullDataCogX 5
global.hullData[hullDataCogX] = global.hullCogX;
global.hullDataStringRaw[hullDataCogX] = "CogX";
global.hullDataString[hullDataCogX] = string_space_caps("CogX");

global.hullCogY = ds_map_create();
#macro hullDataCogY 6
global.hullData[hullDataCogY] = global.hullCogY;
global.hullDataStringRaw[hullDataCogY] = "CogY";
global.hullDataString[hullDataCogY] = string_space_caps("CogY");

global.hullConnection0 = ds_map_create();
#macro hullDataConnection0 7
global.hullData[hullDataConnection0] = global.hullConnection0;
global.hullDataStringRaw[hullDataConnection0] = "Connection0";
global.hullDataString[hullDataConnection0] = string_space_caps("Connection0");

global.hullConnection1 = ds_map_create();
#macro hullDataConnection1 8
global.hullData[hullDataConnection1] = global.hullConnection1;
global.hullDataStringRaw[hullDataConnection1] = "Connection1";
global.hullDataString[hullDataConnection1] = string_space_caps("Connection1");

global.hullConnection2 = ds_map_create();
#macro hullDataConnection2 9
global.hullData[hullDataConnection2] = global.hullConnection2;
global.hullDataStringRaw[hullDataConnection2] = "Connection2";
global.hullDataString[hullDataConnection2] = string_space_caps("Connection2");

global.hullConnection3 = ds_map_create();
#macro hullDataConnection3 10
global.hullData[hullDataConnection3] = global.hullConnection3;
global.hullDataStringRaw[hullDataConnection3] = "Connection3";
global.hullDataString[hullDataConnection3] = string_space_caps("Connection3");

global.hullConnection4 = ds_map_create();
#macro hullDataConnection4 11
global.hullData[hullDataConnection4] = global.hullConnection4;
global.hullDataStringRaw[hullDataConnection4] = "Connection4";
global.hullDataString[hullDataConnection4] = string_space_caps("Connection4");

global.hullConnection5 = ds_map_create();
#macro hullDataConnection5 12
global.hullData[hullDataConnection5] = global.hullConnection5;
global.hullDataStringRaw[hullDataConnection5] = "Connection5";
global.hullDataString[hullDataConnection5] = string_space_caps("Connection5");

global.hullConnection6 = ds_map_create();
#macro hullDataConnection6 13
global.hullData[hullDataConnection6] = global.hullConnection6;
global.hullDataStringRaw[hullDataConnection6] = "Connection6";
global.hullDataString[hullDataConnection6] = string_space_caps("Connection6");

global.hullConnection7 = ds_map_create();
#macro hullDataConnection7 14
global.hullData[hullDataConnection7] = global.hullConnection7;
global.hullDataStringRaw[hullDataConnection7] = "Connection7";
global.hullDataString[hullDataConnection7] = string_space_caps("Connection7");

global.hullConnection8 = ds_map_create();
#macro hullDataConnection8 15
global.hullData[hullDataConnection8] = global.hullConnection8;
global.hullDataStringRaw[hullDataConnection8] = "Connection8";
global.hullDataString[hullDataConnection8] = string_space_caps("Connection8");



var object = "full";
global.hull[0] = "full";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,true);
ds_map_add(global.hullConnectionLeft,object,true);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,1.0);
ds_map_add(global.hullCogX,object,0.0);
ds_map_add(global.hullCogY,object,0.0);
ds_map_add(global.hullConnection0,object,true);
ds_map_add(global.hullConnection1,object,true);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,true);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,true);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "edge";
global.hull[1] = "edge";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.666666666667);
ds_map_add(global.hullCogX,object,6.0);
ds_map_add(global.hullCogY,object,6.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,true);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "corner_edge";
global.hull[2] = "corner_edge";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,true);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.777777777778);
ds_map_add(global.hullCogX,object,2.0);
ds_map_add(global.hullCogY,object,2.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,true);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,true);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "round_outer";
global.hull[3] = "round_outer";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.888888888889);
ds_map_add(global.hullCogX,object,2.0);
ds_map_add(global.hullCogY,object,2.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,true);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,true);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,true);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "round_inner";
global.hull[4] = "round_inner";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.555555555556);
ds_map_add(global.hullCogX,object,10.0);
ds_map_add(global.hullCogY,object,10.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,false);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,true);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "half";
global.hull[5] = "half";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,true);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.666666666667);
ds_map_add(global.hullCogX,object,8.0);
ds_map_add(global.hullCogY,object,0.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,true);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,false);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "edge_half";
global.hull[6] = "edge_half";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.555555555556);
ds_map_add(global.hullCogX,object,8.0);
ds_map_add(global.hullCogY,object,4.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,false);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,false);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "round_half";
global.hull[7] = "round_half";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.555555555556);
ds_map_add(global.hullCogX,object,8.0);
ds_map_add(global.hullCogY,object,6.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,true);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,false);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "quarter";
global.hull[8] = "quarter";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.444444444444);
ds_map_add(global.hullCogX,object,8.0);
ds_map_add(global.hullCogY,object,8.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,false);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,true);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,false);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


var object = "edge_quarter";
global.hull[9] = "edge_quarter";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.333333333333);
ds_map_add(global.hullCogX,object,10.0);
ds_map_add(global.hullCogY,object,10.0);
ds_map_add(global.hullConnection0,object,false);
ds_map_add(global.hullConnection1,object,false);
ds_map_add(global.hullConnection2,object,false);
ds_map_add(global.hullConnection3,object,false);
ds_map_add(global.hullConnection4,object,false);
ds_map_add(global.hullConnection5,object,true);
ds_map_add(global.hullConnection6,object,false);
ds_map_add(global.hullConnection7,object,true);
ds_map_add(global.hullConnection8,object,true);


#macro hullAmount 10


/////////////////////////
//
//     item map
//
/////////////////////////

global.itemName = ds_map_create();
#macro itemDataName 1
global.itemData[itemDataName] = global.itemName;
global.itemDataStringRaw[itemDataName] = "Name";
global.itemDataString[itemDataName] = string_space_caps("Name");

global.itemDescription = ds_map_create();
#macro itemDataDescription 2
global.itemData[itemDataDescription] = global.itemDescription;
global.itemDataStringRaw[itemDataDescription] = "Description";
global.itemDataString[itemDataDescription] = string_space_caps("Description");

global.itemClass = ds_map_create();
#macro itemDataClass 3
global.itemData[itemDataClass] = global.itemClass;
global.itemDataStringRaw[itemDataClass] = "Class";
global.itemDataString[itemDataClass] = string_space_caps("Class");

global.itemSubclass = ds_map_create();
#macro itemDataSubclass 4
global.itemData[itemDataSubclass] = global.itemSubclass;
global.itemDataStringRaw[itemDataSubclass] = "Subclass";
global.itemDataString[itemDataSubclass] = string_space_caps("Subclass");

global.itemStack = ds_map_create();
#macro itemDataStack 5
global.itemData[itemDataStack] = global.itemStack;
global.itemDataStringRaw[itemDataStack] = "Stack";
global.itemDataString[itemDataStack] = string_space_caps("Stack");

global.itemMass = ds_map_create();
#macro itemDataMass 6
global.itemData[itemDataMass] = global.itemMass;
global.itemDataStringRaw[itemDataMass] = "Mass";
global.itemDataString[itemDataMass] = string_space_caps("Mass");

global.itemArmor = ds_map_create();
#macro itemDataArmor 7
global.itemData[itemDataArmor] = global.itemArmor;
global.itemDataStringRaw[itemDataArmor] = "Armor";
global.itemDataString[itemDataArmor] = string_space_caps("Armor");

global.itemShield = ds_map_create();
#macro itemDataShield 8
global.itemData[itemDataShield] = global.itemShield;
global.itemDataStringRaw[itemDataShield] = "Shield";
global.itemDataString[itemDataShield] = string_space_caps("Shield");

global.itemQPU = ds_map_create();
#macro itemDataQPU 9
global.itemData[itemDataQPU] = global.itemQPU;
global.itemDataStringRaw[itemDataQPU] = "QPU";
global.itemDataString[itemDataQPU] = string_space_caps("QPU");

global.itemThrust = ds_map_create();
#macro itemDataThrust 10
global.itemData[itemDataThrust] = global.itemThrust;
global.itemDataStringRaw[itemDataThrust] = "Thrust";
global.itemDataString[itemDataThrust] = string_space_caps("Thrust");

global.itemCogX = ds_map_create();
#macro itemDataCogX 11
global.itemData[itemDataCogX] = global.itemCogX;
global.itemDataStringRaw[itemDataCogX] = "CogX";
global.itemDataString[itemDataCogX] = string_space_caps("CogX");

global.itemCogY = ds_map_create();
#macro itemDataCogY 12
global.itemData[itemDataCogY] = global.itemCogY;
global.itemDataStringRaw[itemDataCogY] = "CogY";
global.itemDataString[itemDataCogY] = string_space_caps("CogY");

global.itemWidth = ds_map_create();
#macro itemDataWidth 13
global.itemData[itemDataWidth] = global.itemWidth;
global.itemDataStringRaw[itemDataWidth] = "Width";
global.itemDataString[itemDataWidth] = string_space_caps("Width");

global.itemHeight = ds_map_create();
#macro itemDataHeight 14
global.itemData[itemDataHeight] = global.itemHeight;
global.itemDataStringRaw[itemDataHeight] = "Height";
global.itemDataString[itemDataHeight] = string_space_caps("Height");

global.itemEnergyGenerated = ds_map_create();
#macro itemDataEnergyGenerated 15
global.itemData[itemDataEnergyGenerated] = global.itemEnergyGenerated;
global.itemDataStringRaw[itemDataEnergyGenerated] = "EnergyGenerated";
global.itemDataString[itemDataEnergyGenerated] = string_space_caps("EnergyGenerated");

global.itemEnergyConsumption = ds_map_create();
#macro itemDataEnergyConsumption 16
global.itemData[itemDataEnergyConsumption] = global.itemEnergyConsumption;
global.itemDataStringRaw[itemDataEnergyConsumption] = "EnergyConsumption";
global.itemDataString[itemDataEnergyConsumption] = string_space_caps("EnergyConsumption");

global.itemEnergyStored = ds_map_create();
#macro itemDataEnergyStored 17
global.itemData[itemDataEnergyStored] = global.itemEnergyStored;
global.itemDataStringRaw[itemDataEnergyStored] = "EnergyStored";
global.itemDataString[itemDataEnergyStored] = string_space_caps("EnergyStored");

global.itemRateOfFire = ds_map_create();
#macro itemDataRateOfFire 18
global.itemData[itemDataRateOfFire] = global.itemRateOfFire;
global.itemDataStringRaw[itemDataRateOfFire] = "RateOfFire";
global.itemDataString[itemDataRateOfFire] = string_space_caps("RateOfFire");

global.itemWeaponDamage = ds_map_create();
#macro itemDataWeaponDamage 19
global.itemData[itemDataWeaponDamage] = global.itemWeaponDamage;
global.itemDataStringRaw[itemDataWeaponDamage] = "WeaponDamage";
global.itemDataString[itemDataWeaponDamage] = string_space_caps("WeaponDamage");

global.itemWeaponDeviation = ds_map_create();
#macro itemDataWeaponDeviation 20
global.itemData[itemDataWeaponDeviation] = global.itemWeaponDeviation;
global.itemDataStringRaw[itemDataWeaponDeviation] = "WeaponDeviation";
global.itemDataString[itemDataWeaponDeviation] = string_space_caps("WeaponDeviation");

global.itemWeaponVolley = ds_map_create();
#macro itemDataWeaponVolley 21
global.itemData[itemDataWeaponVolley] = global.itemWeaponVolley;
global.itemDataStringRaw[itemDataWeaponVolley] = "WeaponVolley";
global.itemDataString[itemDataWeaponVolley] = string_space_caps("WeaponVolley");

global.itemWeaponVolleyDelay = ds_map_create();
#macro itemDataWeaponVolleyDelay 22
global.itemData[itemDataWeaponVolleyDelay] = global.itemWeaponVolleyDelay;
global.itemDataStringRaw[itemDataWeaponVolleyDelay] = "WeaponVolleyDelay";
global.itemDataString[itemDataWeaponVolleyDelay] = string_space_caps("WeaponVolleyDelay");

global.itemConnectionRight = ds_map_create();
#macro itemDataConnectionRight 23
global.itemData[itemDataConnectionRight] = global.itemConnectionRight;
global.itemDataStringRaw[itemDataConnectionRight] = "ConnectionRight";
global.itemDataString[itemDataConnectionRight] = string_space_caps("ConnectionRight");

global.itemConnectionUp = ds_map_create();
#macro itemDataConnectionUp 24
global.itemData[itemDataConnectionUp] = global.itemConnectionUp;
global.itemDataStringRaw[itemDataConnectionUp] = "ConnectionUp";
global.itemDataString[itemDataConnectionUp] = string_space_caps("ConnectionUp");

global.itemConnectionLeft = ds_map_create();
#macro itemDataConnectionLeft 25
global.itemData[itemDataConnectionLeft] = global.itemConnectionLeft;
global.itemDataStringRaw[itemDataConnectionLeft] = "ConnectionLeft";
global.itemDataString[itemDataConnectionLeft] = string_space_caps("ConnectionLeft");

global.itemConnectionDown = ds_map_create();
#macro itemDataConnectionDown 26
global.itemData[itemDataConnectionDown] = global.itemConnectionDown;
global.itemDataStringRaw[itemDataConnectionDown] = "ConnectionDown";
global.itemDataString[itemDataConnectionDown] = string_space_caps("ConnectionDown");



var object = "_";
global.item[0] = "_";
ds_map_add(global.itemName,object,"");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,0.0);
ds_map_add(global.itemArmor,object,0.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "iron";
global.item[1] = "iron";
ds_map_add(global.itemName,object,"Iron");
ds_map_add(global.itemDescription,object,"Basic and Heavy");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,30.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "aluminum";
global.item[2] = "aluminum";
ds_map_add(global.itemName,object,"Aluminum");
ds_map_add(global.itemDescription,object,"Light, but not durable");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,30.0);
ds_map_add(global.itemArmor,object,25.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "titanium";
global.item[3] = "titanium";
ds_map_add(global.itemName,object,"Titanium");
ds_map_add(global.itemDescription,object,"Strong and lightweight");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,25.0);
ds_map_add(global.itemArmor,object,40.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "nanonium";
global.item[4] = "nanonium";
ds_map_add(global.itemName,object,"Nanonium");
ds_map_add(global.itemDescription,object,"Heavy, but good for electronics");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,50.0);
ds_map_add(global.itemArmor,object,25.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "aerogel";
global.item[5] = "aerogel";
ds_map_add(global.itemName,object,"Aerogel");
ds_map_add(global.itemDescription,object,"Heavy, but incredibly strong");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,80.0);
ds_map_add(global.itemArmor,object,200.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "starlite";
global.item[6] = "starlite";
ds_map_add(global.itemName,object,"Starlite");
ds_map_add(global.itemDescription,object,"Heavy, but great with energy");
ds_map_add(global.itemClass,object,"material");
ds_map_add(global.itemSubclass,object,"resource");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,60.0);
ds_map_add(global.itemArmor,object,30.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "armor_basic";
global.item[7] = "armor_basic";
ds_map_add(global.itemName,object,"Armor");
ds_map_add(global.itemDescription,object,"Reinforces your blocks");
ds_map_add(global.itemClass,object,"module");
ds_map_add(global.itemSubclass,object,"armor");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,20.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "battery_basic";
global.item[8] = "battery_basic";
ds_map_add(global.itemName,object,"Battery");
ds_map_add(global.itemDescription,object,"Stores energy");
ds_map_add(global.itemClass,object,"module");
ds_map_add(global.itemSubclass,object,"energy");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,20.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,-5.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,100.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "processor_basic";
global.item[9] = "processor_basic";
ds_map_add(global.itemName,object,"Processor");
ds_map_add(global.itemDescription,object,"Increases QPU");
ds_map_add(global.itemClass,object,"module");
ds_map_add(global.itemSubclass,object,"processor");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,20.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,50.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "reactor_basic";
global.item[10] = "reactor_basic";
ds_map_add(global.itemName,object,"Reactor");
ds_map_add(global.itemDescription,object,"Generates energy");
ds_map_add(global.itemClass,object,"module");
ds_map_add(global.itemSubclass,object,"energy");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,20.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,-10.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,2.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,20.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "control_basic";
global.item[11] = "control_basic";
ds_map_add(global.itemName,object,"Control Panel");
ds_map_add(global.itemDescription,object,"Controls your ship");
ds_map_add(global.itemClass,object,"module");
ds_map_add(global.itemSubclass,object,"control");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,40.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,50.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,2.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,1.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,20.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,true);
ds_map_add(global.itemConnectionDown,object,false);


var object = "solar_basic";
global.item[12] = "solar_basic";
ds_map_add(global.itemName,object,"Solar");
ds_map_add(global.itemDescription,object,"Generates energy");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"energy");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,10.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,-5.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,2.0);
ds_map_add(global.itemEnergyGenerated,object,0.5);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,5.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,true);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "laser_basic";
global.item[13] = "laser_basic";
ds_map_add(global.itemName,object,"Basic Laser");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"weapon");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,10.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,5.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,-12.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,1.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.5);
ds_map_add(global.itemWeaponDamage,object,1.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,true);
ds_map_add(global.itemConnectionDown,object,false);


var object = "thruster_basic";
global.item[14] = "thruster_basic";
ds_map_add(global.itemName,object,"Basic Thruster");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"propulsion");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,10.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,10.0);
ds_map_add(global.itemThrust,object,100.0);
ds_map_add(global.itemCogX,object,-12.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,1.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,true);
ds_map_add(global.itemConnectionDown,object,false);


var object = "engine_basic";
global.item[15] = "engine_basic";
ds_map_add(global.itemName,object,"Basic Engine");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"propulsion");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,20.0);
ds_map_add(global.itemArmor,object,10.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,15.0);
ds_map_add(global.itemThrust,object,250.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,-12.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,2.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,true);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "rocket_basic";
global.item[16] = "rocket_basic";
ds_map_add(global.itemName,object,"Basic Rocket");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"propulsion");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,20.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,20.0);
ds_map_add(global.itemThrust,object,750.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,3.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,true);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "rocket_advanced";
global.item[17] = "rocket_advanced";
ds_map_add(global.itemName,object,"Advanced Rocket");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"propulsion");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,20.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,20.0);
ds_map_add(global.itemThrust,object,1300.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,2.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,3.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,true);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "rocket_complex";
global.item[18] = "rocket_complex";
ds_map_add(global.itemName,object,"Complex Rocket");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"attachment");
ds_map_add(global.itemSubclass,object,"propulsion");
ds_map_add(global.itemStack,object,99.0);
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,20.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,20.0);
ds_map_add(global.itemThrust,object,2500.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,2.0);
ds_map_add(global.itemHeight,object,2.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,3.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,true);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "drill_basic";
global.item[19] = "drill_basic";
ds_map_add(global.itemName,object,"Drill");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemClass,object,"tool");
ds_map_add(global.itemSubclass,object,"drill");
ds_map_add(global.itemStack,object,1.0);
ds_map_add(global.itemMass,object,0.0);
ds_map_add(global.itemArmor,object,0.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,0.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.0);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,0.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,10.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


#macro itemAmount 20
