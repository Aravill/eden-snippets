// Find marker position
_markerPos = getMarkerPos "shorePatrolMarker"; 
// Determine the number of patrols
_unitCount = random [2, 3, 5];
// The premade unit group we wish  to spawn
_unitName = "OIA_InfTeam";

for "_i" from 1 to _unitCount do { 
  // Determine a random position for the unit to spawn at 
  _unitPos = [_markerPos, 100, random 360] call BIS_fnc_relPos; 
  // Spawn the unit
  _unit = [_unitPos, east, (configFile >> "CfgGroups" >> "East" >> "OPF_F" >> "Infantry" >> _unitName), [], [], [0.3, 0.5], [], [2, 0.5]] call BIS_fnc_spawnGroup;
  // Get the unit's position
  _pos = position (leader _unit);

  // Optional unit waypoint to set the unit's movement mode
  _waypoint = _unit addWaypoint [_pos, 0]; 
  _waypoint setWaypointType "MOVE"; 
  _waypoint setWaypointSpeed "LIMITED"; 
  _waypoint setWaypointBehaviour "SAFE"; 

  // Generate a patrol route
  [_unit, _markerPos, 100] call BIS_fnc_taskPatrol; 
};
