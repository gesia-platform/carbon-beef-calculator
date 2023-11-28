// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract CarbonBeefCalculator {
    uint256 public importedCo2Emission = 30200; // scaled by 10000 // 국내산 소고기 배출계수 (1t/yr x 53GJ/t x 0.0537tCO2/GJ = 약 2.85tCO2/yr -> 약 2.85kgCO2/kg)
    uint256 public domesticCo2Emission = 28500; // scaled by 10000 // 수입 소고기 배출계수 (1t/yr x 53GJ/t x 0.0566tCO2/GJ = 약 3.02tCO2/yr -> 약 3.02kgCO2/kg)

    // calculate CO2 emission by imported beef in (18 decimals)
    function calculateCO2ByImportedBeef(uint256 consumption) public view returns (uint256) {
        // 연간 소비 소고기(kg/yr)
        // consumption scaled up by 10000
        return ((consumption * importedCo2Emission * 10e18)) / 10e8;
    }

    // calculate CO2 emission by domestic beef in (18 decimals)
    function calculateCO2ByDomesticBeef(uint256 consumption) public view returns (uint256) {
        // 연간 소비한 국내산 소고기(kg/yr)
        // weight scaled up by 10000
        return ((consumption * domesticCo2Emission * 10e18)) / 10e8;
    }
}
