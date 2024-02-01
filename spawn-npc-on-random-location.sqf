// List the markers
_markers = ["maridPos1", "maridPos2", "maridPos3", "maridPos4", "maridPos5", "maridPos6"];
// Select vehicle
_vehicleType = "O_APC_Wheeled_02_rcws_v2_F";
// Spawn chance for the MARID is 70%
_chance = random 10;
if (_chance < 7) then
{
	// Select one of the markers and get its position
	_selectedMarker = _markers call BIS_fnc_selectRandom;
	_position = getMarkerPos _selectedMarker;
	_direction = markerDir _selectedMarker;
	// Spawn the vehicle and its crew (CAN_COLLIDE ensures it is placed on the exact location of the marker)
	_marid = createVehicle [_vehicleType, _position, [], 0, "CAN_COLLIDE"];
	_marid setDir _direction;
	_maridGroup = createVehicleCrew _marid;
};
