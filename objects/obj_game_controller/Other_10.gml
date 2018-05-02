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



var object = "full";
global.hull[0] = "full";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,true);
ds_map_add(global.hullConnectionLeft,object,true);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,1.0);
ds_map_add(global.hullCogX,object,0.0);
ds_map_add(global.hullCogY,object,0.0);


var object = "edge";
global.hull[1] = "edge";
ds_map_add(global.hullConnectionRight,object,true);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.5);
ds_map_add(global.hullCogX,object,6.0);
ds_map_add(global.hullCogY,object,6.0);


var object = "nose_curved";
global.hull[2] = "nose_curved";
ds_map_add(global.hullConnectionRight,object,false);
ds_map_add(global.hullConnectionUp,object,false);
ds_map_add(global.hullConnectionLeft,object,false);
ds_map_add(global.hullConnectionDown,object,true);
ds_map_add(global.hullSize,object,0.75);
ds_map_add(global.hullCogX,object,0.0);
ds_map_add(global.hullCogY,object,2.0);


#macro hullAmount 3


/////////////////////////
//
//     item map
//
/////////////////////////

global.itemName = ds_map_create();
#macro itemDataName 0
global.itemData[itemDataName] = global.itemName;
global.itemDataStringRaw[itemDataName] = "Name";
global.itemDataString[itemDataName] = string_space_caps("Name");

global.itemDescription = ds_map_create();
#macro itemDataDescription 1
global.itemData[itemDataDescription] = global.itemDescription;
global.itemDataStringRaw[itemDataDescription] = "Description";
global.itemDataString[itemDataDescription] = string_space_caps("Description");

global.itemRole = ds_map_create();
#macro itemDataRole 2
global.itemData[itemDataRole] = global.itemRole;
global.itemDataStringRaw[itemDataRole] = "Role";
global.itemDataString[itemDataRole] = string_space_caps("Role");

global.itemType = ds_map_create();
#macro itemDataType 3
global.itemData[itemDataType] = global.itemType;
global.itemDataStringRaw[itemDataType] = "Type";
global.itemDataString[itemDataType] = string_space_caps("Type");

global.itemMass = ds_map_create();
#macro itemDataMass 4
global.itemData[itemDataMass] = global.itemMass;
global.itemDataStringRaw[itemDataMass] = "Mass";
global.itemDataString[itemDataMass] = string_space_caps("Mass");

global.itemArmor = ds_map_create();
#macro itemDataArmor 5
global.itemData[itemDataArmor] = global.itemArmor;
global.itemDataStringRaw[itemDataArmor] = "Armor";
global.itemDataString[itemDataArmor] = string_space_caps("Armor");

global.itemShield = ds_map_create();
#macro itemDataShield 6
global.itemData[itemDataShield] = global.itemShield;
global.itemDataStringRaw[itemDataShield] = "Shield";
global.itemDataString[itemDataShield] = string_space_caps("Shield");

global.itemQPU = ds_map_create();
#macro itemDataQPU 7
global.itemData[itemDataQPU] = global.itemQPU;
global.itemDataStringRaw[itemDataQPU] = "QPU";
global.itemDataString[itemDataQPU] = string_space_caps("QPU");

global.itemThrust = ds_map_create();
#macro itemDataThrust 8
global.itemData[itemDataThrust] = global.itemThrust;
global.itemDataStringRaw[itemDataThrust] = "Thrust";
global.itemDataString[itemDataThrust] = string_space_caps("Thrust");

global.itemCogX = ds_map_create();
#macro itemDataCogX 9
global.itemData[itemDataCogX] = global.itemCogX;
global.itemDataStringRaw[itemDataCogX] = "CogX";
global.itemDataString[itemDataCogX] = string_space_caps("CogX");

global.itemCogY = ds_map_create();
#macro itemDataCogY 10
global.itemData[itemDataCogY] = global.itemCogY;
global.itemDataStringRaw[itemDataCogY] = "CogY";
global.itemDataString[itemDataCogY] = string_space_caps("CogY");

global.itemWidth = ds_map_create();
#macro itemDataWidth 11
global.itemData[itemDataWidth] = global.itemWidth;
global.itemDataStringRaw[itemDataWidth] = "Width";
global.itemDataString[itemDataWidth] = string_space_caps("Width");

global.itemHeight = ds_map_create();
#macro itemDataHeight 12
global.itemData[itemDataHeight] = global.itemHeight;
global.itemDataStringRaw[itemDataHeight] = "Height";
global.itemDataString[itemDataHeight] = string_space_caps("Height");

global.itemEnergyGenerated = ds_map_create();
#macro itemDataEnergyGenerated 13
global.itemData[itemDataEnergyGenerated] = global.itemEnergyGenerated;
global.itemDataStringRaw[itemDataEnergyGenerated] = "EnergyGenerated";
global.itemDataString[itemDataEnergyGenerated] = string_space_caps("EnergyGenerated");

global.itemEnergyConsumption = ds_map_create();
#macro itemDataEnergyConsumption 14
global.itemData[itemDataEnergyConsumption] = global.itemEnergyConsumption;
global.itemDataStringRaw[itemDataEnergyConsumption] = "EnergyConsumption";
global.itemDataString[itemDataEnergyConsumption] = string_space_caps("EnergyConsumption");

global.itemEnergyStored = ds_map_create();
#macro itemDataEnergyStored 15
global.itemData[itemDataEnergyStored] = global.itemEnergyStored;
global.itemDataStringRaw[itemDataEnergyStored] = "EnergyStored";
global.itemDataString[itemDataEnergyStored] = string_space_caps("EnergyStored");

global.itemRateOfFire = ds_map_create();
#macro itemDataRateOfFire 16
global.itemData[itemDataRateOfFire] = global.itemRateOfFire;
global.itemDataStringRaw[itemDataRateOfFire] = "RateOfFire";
global.itemDataString[itemDataRateOfFire] = string_space_caps("RateOfFire");

global.itemWeaponDamage = ds_map_create();
#macro itemDataWeaponDamage 17
global.itemData[itemDataWeaponDamage] = global.itemWeaponDamage;
global.itemDataStringRaw[itemDataWeaponDamage] = "WeaponDamage";
global.itemDataString[itemDataWeaponDamage] = string_space_caps("WeaponDamage");

global.itemWeaponDeviation = ds_map_create();
#macro itemDataWeaponDeviation 18
global.itemData[itemDataWeaponDeviation] = global.itemWeaponDeviation;
global.itemDataStringRaw[itemDataWeaponDeviation] = "WeaponDeviation";
global.itemDataString[itemDataWeaponDeviation] = string_space_caps("WeaponDeviation");

global.itemWeaponVolley = ds_map_create();
#macro itemDataWeaponVolley 19
global.itemData[itemDataWeaponVolley] = global.itemWeaponVolley;
global.itemDataStringRaw[itemDataWeaponVolley] = "WeaponVolley";
global.itemDataString[itemDataWeaponVolley] = string_space_caps("WeaponVolley");

global.itemWeaponVolleyDelay = ds_map_create();
#macro itemDataWeaponVolleyDelay 20
global.itemData[itemDataWeaponVolleyDelay] = global.itemWeaponVolleyDelay;
global.itemDataStringRaw[itemDataWeaponVolleyDelay] = "WeaponVolleyDelay";
global.itemDataString[itemDataWeaponVolleyDelay] = string_space_caps("WeaponVolleyDelay");

global.itemConnectionRight = ds_map_create();
#macro itemDataConnectionRight 21
global.itemData[itemDataConnectionRight] = global.itemConnectionRight;
global.itemDataStringRaw[itemDataConnectionRight] = "ConnectionRight";
global.itemDataString[itemDataConnectionRight] = string_space_caps("ConnectionRight");

global.itemConnectionUp = ds_map_create();
#macro itemDataConnectionUp 22
global.itemData[itemDataConnectionUp] = global.itemConnectionUp;
global.itemDataStringRaw[itemDataConnectionUp] = "ConnectionUp";
global.itemDataString[itemDataConnectionUp] = string_space_caps("ConnectionUp");

global.itemConnectionLeft = ds_map_create();
#macro itemDataConnectionLeft 23
global.itemData[itemDataConnectionLeft] = global.itemConnectionLeft;
global.itemDataStringRaw[itemDataConnectionLeft] = "ConnectionLeft";
global.itemDataString[itemDataConnectionLeft] = string_space_caps("ConnectionLeft");

global.itemConnectionDown = ds_map_create();
#macro itemDataConnectionDown 24
global.itemData[itemDataConnectionDown] = global.itemConnectionDown;
global.itemDataStringRaw[itemDataConnectionDown] = "ConnectionDown";
global.itemDataString[itemDataConnectionDown] = string_space_caps("ConnectionDown");



var object = "iron";
global.item[0] = "iron";
ds_map_add(global.itemName,object,"Iron");
ds_map_add(global.itemDescription,object,"Basic and Heavy");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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
global.item[1] = "aluminum";
ds_map_add(global.itemName,object,"Aluminum");
ds_map_add(global.itemDescription,object,"Light, but not durable");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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
global.item[2] = "titanium";
ds_map_add(global.itemName,object,"Titanium");
ds_map_add(global.itemDescription,object,"Strong and lightweight");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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
global.item[3] = "nanonium";
ds_map_add(global.itemName,object,"Nanonium");
ds_map_add(global.itemDescription,object,"Heavy, but good for electronics");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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
global.item[4] = "aerogel";
ds_map_add(global.itemName,object,"Aerogel");
ds_map_add(global.itemDescription,object,"Heavy, but incredibly strong");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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
global.item[5] = "starlite";
ds_map_add(global.itemName,object,"Starlite");
ds_map_add(global.itemDescription,object,"Heavy, but great with energy");
ds_map_add(global.itemRole,object,"material");
ds_map_add(global.itemType,object,"resource");
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


var object = "armor";
global.item[6] = "armor";
ds_map_add(global.itemName,object,"Armor");
ds_map_add(global.itemDescription,object,"Reinforces your blocks");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"armor");
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


var object = "battery";
global.item[7] = "battery";
ds_map_add(global.itemName,object,"Battery");
ds_map_add(global.itemDescription,object,"Stores energy");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"energy");
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


var object = "cockpit";
global.item[8] = "cockpit";
ds_map_add(global.itemName,object,"Cockpit");
ds_map_add(global.itemDescription,object,"Core of your ship");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"cockpit");
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
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "processor";
global.item[9] = "processor";
ds_map_add(global.itemName,object,"Processor");
ds_map_add(global.itemDescription,object,"Increases QPU");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"processor");
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


var object = "reactor";
global.item[10] = "reactor";
ds_map_add(global.itemName,object,"Reactor");
ds_map_add(global.itemDescription,object,"Generates energy");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"energy");
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


var object = "solar";
global.item[11] = "solar";
ds_map_add(global.itemName,object,"Solar");
ds_map_add(global.itemDescription,object,"Generates energy");
ds_map_add(global.itemRole,object,"module");
ds_map_add(global.itemType,object,"energy");
ds_map_add(global.itemMass,object,10.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,-5.0);
ds_map_add(global.itemThrust,object,0.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,0.0);
ds_map_add(global.itemWidth,object,1.0);
ds_map_add(global.itemHeight,object,1.0);
ds_map_add(global.itemEnergyGenerated,object,0.5);
ds_map_add(global.itemEnergyConsumption,object,0.0);
ds_map_add(global.itemEnergyStored,object,5.0);
ds_map_add(global.itemRateOfFire,object,0.0);
ds_map_add(global.itemWeaponDamage,object,0.0);
ds_map_add(global.itemWeaponDeviation,object,0.0);
ds_map_add(global.itemWeaponVolley,object,0.0);
ds_map_add(global.itemWeaponVolleyDelay,object,0.0);
ds_map_add(global.itemConnectionRight,object,false);
ds_map_add(global.itemConnectionUp,object,false);
ds_map_add(global.itemConnectionLeft,object,false);
ds_map_add(global.itemConnectionDown,object,false);


var object = "laser_basic";
global.item[12] = "laser_basic";
ds_map_add(global.itemName,object,"Basic Laser");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemRole,object,"attachment");
ds_map_add(global.itemType,object,"weapon");
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
global.item[13] = "thruster_basic";
ds_map_add(global.itemName,object,"Basic Thruster");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemRole,object,"attachment");
ds_map_add(global.itemType,object,"propulsion");
ds_map_add(global.itemMass,object,10.0);
ds_map_add(global.itemArmor,object,5.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,10.0);
ds_map_add(global.itemThrust,object,10.0);
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
global.item[14] = "engine_basic";
ds_map_add(global.itemName,object,"Basic Engine");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemRole,object,"attachment");
ds_map_add(global.itemType,object,"propulsion");
ds_map_add(global.itemMass,object,20.0);
ds_map_add(global.itemArmor,object,10.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,15.0);
ds_map_add(global.itemThrust,object,25.0);
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


var object = "rocket_single";
global.item[15] = "rocket_single";
ds_map_add(global.itemName,object,"Basic Rocket");
ds_map_add(global.itemDescription,object,"");
ds_map_add(global.itemRole,object,"attachment");
ds_map_add(global.itemType,object,"propulsion");
ds_map_add(global.itemMass,object,40.0);
ds_map_add(global.itemArmor,object,20.0);
ds_map_add(global.itemShield,object,0.0);
ds_map_add(global.itemQPU,object,20.0);
ds_map_add(global.itemThrust,object,75.0);
ds_map_add(global.itemCogX,object,0.0);
ds_map_add(global.itemCogY,object,-12.0);
ds_map_add(global.itemWidth,object,1.0);
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


#macro itemAmount 16
