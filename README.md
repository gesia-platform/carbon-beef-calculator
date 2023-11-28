# 🚗 Beef Carbon Footprint Calculator

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)

## 📖 Overview
The Smart Contract-Based Footprint Calculator is a decentralized tool designed to estimate the carbon footprint associated with pete consumption. This smart contract operates on a blockchain platform and provides a straightforward way to calculate and retrieve carbon emission data from the blockchain.

## ✨ Features
**Calculate Carbon Footprint (Public)**: Users can calculate the carbon footprint from the set Beef carbon emission factor. This public function returns an estimate of the carbon footprint associated with the weight of the Beef.
```
calculateCO2ByImportedBeef(consumption)

1000kg/year(consumption)
 - Scale by 10000
 - calculateCO2ByImportedBeef(10000000)
 - 3020000000000000000000 (in UI it should be divided by 18 decimals 3020)
```
```
calculateCO2ByDomesticBeef(consumption)

1000kg/year(consumption)
 - Scale by 10000
 - calculateCO2ByDomesticBeef(10000000)
 - 2850000000000000000000 (in UI it should be divided by 18 decimals 2850)
```

## 📝 How is it calculated?
The carbon emissions are calculated based on the emission factors and calculation methods referenced from [Prediction of the Carbon Dioxide Emission Change Resulting from the Changes in Bovine Meat Consumption Behavior in Korea](https://jekosae.or.kr/_common/do.php?a=full&b=41&bidx=385&aidx=4856)

## 📚 Sources
- [Prediction of the Carbon Dioxide Emission Change Resulting from the Changes in Bovine Meat Consumption Behavior in Korea](https://jekosae.or.kr/_common/do.php?a=full&b=41&bidx=385&aidx=4856)

## 📄 License
This project is licensed under the [MIT License](LICENSE).