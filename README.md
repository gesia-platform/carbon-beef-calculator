# 🥩 Beef Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with pete consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
### Calculate Carbon Footprint (Public)
> Users can calculate the carbon footprint from the set Beef carbon emission factor. This public function returns an estimate of the carbon footprint associated with the weight of the Beef.

### calculateCO2ByImportedBeef(consumption)
```
Overview:
 - This function calculates the carbon footprint according to annual consumption of imported beef.
 
Parameter:
 - consumption(kg/year): "consumption" is the annual consumption value of imported beef.

Example:
 - consumption: 1000(kg/year)
    1. Scale by 10000
    2. calculateCO2ByImportedBeef(10000000)
    3. 3020000000000000000000 (in UI it should be divided by 18 decimals 3020)
```

### calculateCO2ByDomesticBeef(consumption)
```
Overview:
 - This function calculates the carbon footprint according to annual consumption of domestic beef.
 
Parameter:
 - consumption: "consumption" is the annual consumption value of domestic beef.

Example:
 - 1000kg/year(consumption)
    1. Scale by 10000
    2. calculateCO2ByDomesticBeef(10000000)
    3. 2850000000000000000000 (in UI it should be divided by 18 decimals 2850)
```

## 🚀 Smart Contract Deployment Information
The Smart Contract-Based Carbon Footprint Calculator has been deployed on the Gesia Chain. Below are the deployment details:

### Calculator Contract
```
Contract Address: 0x6eBC3598057416d1F25AeE5D5F180002A13f9344
Transaction Hash: 0x8d9d58b6892b512ecbfc015c4ce265b24b25b5cc1bb2f68595d66a2401402fd9
```

You can verify the deployment of the Calculator Contract by checking the contract address and transaction hash on [Gesia Explorer](https://explorer.gesia.io). Here are the links for your convenience:

- [Calculator Contract on Gesia Chain](https://explorer.gesia.io/address/0x6eBC3598057416d1F25AeE5D5F180002A13f9344)

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from [Prediction of the Carbon Dioxide Emission Change Resulting from the Changes in Bovine Meat Consumption Behavior in Korea](https://jekosae.or.kr/_common/do.php?a=full&b=41&bidx=385&aidx=4856)

The following formula is the essential formula of Carbon Footprint Calculator.
``` plain
# emission factor of imported beef: 3.02
# emission factor of domestic beef: 2.85

annual beef consumption(kg/yr) x emission factor of beef(kgCO2/kg)
```

Please refer to the [Link](https://docs.google.com/spreadsheets/d/1Ux_1j0GeKGeHm8ODT-M-Hr23sCayQYw70shNw2le0Bs/edit#gid=834335308) for more detailed info.

## 📚 Sources
- [Prediction of the Carbon Dioxide Emission Change Resulting from the Changes in Bovine Meat Consumption Behavior in Korea](https://jekosae.or.kr/_common/do.php?a=full&b=41&bidx=385&aidx=4856)

## 📄 License
This project is licensed under the [MIT License](LICENSE).