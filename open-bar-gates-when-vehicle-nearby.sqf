// Opens gates if one of the specified vehicles is in range
// Then closes the gates 60 seconds later
if (truck in thisList) then {
 hint "truck detected";
 gate3 animate ["Door_1_rot", 1];
 gate4 animate ["Door_1_rot", 1];
 0 spawn {
  sleep 60;
   gate3 animate ["Door_1_rot", 0];
   gate4 animate ["Door_1_rot", 0];
 };

};
if (marid in thisList) then {
 hint "marid detected";
 gate1 animate ["Door_1_rot", 1];
 gate2 animate ["Door_1_rot", 1];
 0 spawn {
  sleep 60;
   gate1 animate ["Door_1_rot", 0];
   gate2 animate ["Door_1_rot", 0];
 };
};
