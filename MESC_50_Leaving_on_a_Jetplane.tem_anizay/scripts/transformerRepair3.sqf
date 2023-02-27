titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Der Transformator wurde repariert.</t>", "PLAIN DOWN", -1, true, true];
deleteVehicle ((smokeTF_3 getVariable "effectEmitter") select 0);  
deleteVehicle ((fireTF_3 getVariable "effectEmitter") select 0);
[transformer_3,["garage_doors",100,1]] remoteExec ["say3D"];
sleep 4;
[transformer_3,["OMEnergyHum",100,1]] remoteExec ["say3D"];
transformerRepaired_3 = true;
publicVariable "transformerRepaired_3";