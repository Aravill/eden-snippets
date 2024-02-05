// List the markers
_markers = ["maridPos1"];
_patrolMarkers = ["maridPatrol1", "maridPatrol2", "maridPatrol3", "maridPatrol4", "maridPatrol5", "maridPatrol6", "maridPatrol7", "maridPatrol8", "maridPatrol9"];
// Select vehicle
_vehicleType = "O_APC_Wheeled_02_rcws_v2_F";
// Select one of the markers and get its position
_selectedMarker = _markers call BIS_fnc_selectRandom;
_position = getMarkerPos _selectedMarker;
_direction = markerDir _selectedMarker;
// Spawn the vehicle and its crew
_marid = createVehicle [_vehicleType, _position, [], 0, "CAN_COLLIDE"];
_marid setDir _direction;
_maridGroup = createVehicleCrew _marid;
// Set the global variable
_marid setVehicleVarName "marid";
marid = _marid;
publicVariable "marid";
_marid call BIS_fnc_objectVar;
_marid setBehaviour "SAFE";
_marid setSpeedMode "LIMITED";
{
	_wayPos = getMarkerPos _x;
	_waypoint = _maridGroup addWaypoint [_wayPos, 0];
	if (_forEachIndex == count _patrolMarkers - 1) then {
		// Cycle on the last waypoint
		_waypoint setWaypointType "CYCLE";
	} else {
		// Otherwise move to waypoint
		_waypoint setWaypointType "MOVE";
	};
} forEach _patrolMarkers;
