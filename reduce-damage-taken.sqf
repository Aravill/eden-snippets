{
  _x addEventHandler ["HandleDamage",{damage (_this select 0)+((_this select 2)*0.05)}]; 
} forEach units this;
