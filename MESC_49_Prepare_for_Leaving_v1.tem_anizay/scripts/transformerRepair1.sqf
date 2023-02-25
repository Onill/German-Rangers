titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Der Transformator wurde repariert.</t>", "PLAIN DOWN", -1, true, true];
deleteVehicle ((smokeTF_1 getVariable "effectEmitter") select 0);  
deleteVehicle ((fireTF_1 getVariable "effectEmitter") select 0);
[transformer_1,["garage_doors",100,1]] remoteExec ["say3D"];
sleep 4;
[transformer_1,["OMEnergyHum",100,1]] remoteExec ["say3D"];
transformerRepaired_1 = true;
publicVariable "transformerRepaired_1";
