// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SmartBuildingAutomation {

    // Variables for controlling the smart building facilities
    int256 public minTemperature;
    int256 public maxTemperature;
    uint256 public minCO2Level;
    uint256 public maxCO2Level;
    uint256 public minLuxLevel;
    uint256 public maxLuxLevel;
    uint256 public minHumidity;
    uint256 public maxHumidity;

    address public constant dao = 0x3aF5647E366fb51C89e4c43Bc8C173dAa018AFf6;

    // Events to notify when values are updated
    event MinTemperatureUpdated(int256 minTemperature);
    event MaxTemperatureUpdated(int256 maxTemperature);
    event MinCO2LevelUpdated(uint256 minCO2Level);
    event MaxCO2LevelUpdated(uint256 maxCO2Level);
    event MinLuxLevelUpdated(uint256 minLuxLevel);
    event MaxLuxLevelUpdated(uint256 maxLuxLevel);
    event MinHumidityUpdated(uint256 minHumidity);
    event MaxHumidityUpdated(uint256 maxHumidity);

    // Modifier to restrict access to DAO
    modifier onlyDAO() {
        require(msg.sender == dao, "Only DAO can set the values");
        _;
    }
    // Setter functions
    function setMinTemperature(int256 _minTemperature) public onlyDAO {
        minTemperature = _minTemperature;
        emit MinTemperatureUpdated(_minTemperature);
    }
    function setMaxTemperature(int256 _maxTemperature) public onlyDAO {
        maxTemperature = _maxTemperature;
        emit MaxTemperatureUpdated(_maxTemperature);
    }
    function setMinCO2Level(uint256 _minCO2Level) public onlyDAO {
        minCO2Level = _minCO2Level;
        emit MinCO2LevelUpdated(_minCO2Level);
    }
    function setMaxCO2Level(uint256 _maxCO2Level) public onlyDAO {
        maxCO2Level = _maxCO2Level;
        emit MaxCO2LevelUpdated(_maxCO2Level);
    }
    function setMinLuxLevel(uint256 _minLuxLevel) public onlyDAO {
        minLuxLevel = _minLuxLevel;
        emit MinLuxLevelUpdated(_minLuxLevel);
    }
    function setMaxLuxLevel(uint256 _maxLuxLevel) public onlyDAO {
        maxLuxLevel = _maxLuxLevel;
        emit MaxLuxLevelUpdated(_maxLuxLevel);
    }
    function setMinHumidity(uint256 _minHumidity) public onlyDAO {
        minHumidity = _minHumidity;
        emit MinHumidityUpdated(_minHumidity);
    }
    function setMaxHumidity(uint256 _maxHumidity) public onlyDAO {
        maxHumidity = _maxHumidity;
        emit MaxHumidityUpdated(_maxHumidity);
    }
    // Getter functions
    function getMinTemperature() public view returns (int256) {
        return minTemperature;
    }
    function getMaxTemperature() public view returns (int256) {
        return maxTemperature;
    }
    function getMinCO2Level() public view returns (uint256) {
        return minCO2Level;
    }
    function getMaxCO2Level() public view returns (uint256) {
        return maxCO2Level;
    }
    function getMinLuxLevel() public view returns (uint256) {
        return minLuxLevel;
    }
    function getMaxLuxLevel() public view returns (uint256) {
        return maxLuxLevel;
    }
    function getMinHumidity() public view returns (uint256) {
        return minHumidity;
    }
    function getMaxHumidity() public view returns (uint256) {
        return maxHumidity;
    }
}
