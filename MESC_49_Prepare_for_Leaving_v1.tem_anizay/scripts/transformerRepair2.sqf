titletext ["<t color='#ffffff' size='2' font='RobotoCondensed' shadow = '2' >Der Transformator wurde repariert.</t>", "PLAIN DOWN", -1, true, true];
deleteVehicle ((smokeTF_2 getVariable "effectEmitter") select 0);  
deleteVehicle ((fireTF_2 getVariable "effectEmitter") select 0);
[transformer_2,["garage_doors",100,1]] remoteExec ["say3D"];
sleep 4;
[transformer_2,["OMEnergyHum",100,1]] remoteExec ["say3D"];
transformerRepaired_2 = true;
publicVariable "transformerRepaired_2";