//
//  MarketDataModel.swift
//  SwiftUI-Crypto
//
//  Created by Okan Orkun on 30.10.2023.
//

import Foundation

// JSON Data:
/*
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 {
   "data": {
     "active_cryptocurrencies": 10639,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 912,
     "total_market_cap": {
       "btc": 38275226.83247136,
       "eth": 728003634.8412962,
       "ltc": 19201418091.02318,
       "bch": 5369591631.670972,
       "bnb": 5799774221.886295,
       "eos": 2118162397005.3127,
       "xrp": 2362677945672.8525,
       "xlm": 11367363445802.85,
       "link": 116066398137.99986,
       "dot": 305463148174.6085,
       "yfi": 221764249.2653712,
       "usd": 1319955966524.5403,
       "aed": 4848132267246.326,
       "ars": 462017946210773.75,
       "aud": 2072287308896.634,
       "bdt": 145419196403765.56,
       "bhd": 497695996957.9109,
       "bmd": 1319955966524.5403,
       "brl": 6618655202944.001,
       "cad": 1826948413354.6836,
       "chf": 1191713004684.9163,
       "clp": 1199959969447767.8,
       "cny": 9658777785043.322,
       "czk": 30703495737327.348,
       "dkk": 9304963588216.416,
       "eur": 1246782887564.2876,
       "gbp": 1087569798882.0946,
       "hkd": 10323878517411.668,
       "huf": 477025808591390.5,
       "idr": 20918042395916040,
       "ils": 5353464209470.578,
       "inr": 109868516127575.98,
       "jpy": 197523490654598.22,
       "krw": 1778892428013049,
       "kwd": 407954830705.8405,
       "lkr": 431659259930669.8,
       "mmk": 2769457456475503.5,
       "mxn": 23785879747657.273,
       "myr": 6286290290573.117,
       "ngn": 1041352860670204.4,
       "nok": 14705785177853.941,
       "nzd": 2261864664632.753,
       "php": 74943802529259.12,
       "pkr": 365958713048193.25,
       "pln": 5548665897580.056,
       "rub": 122957206091412.95,
       "sar": 4951765970046.062,
       "sek": 14707411363604.72,
       "sgd": 1802798498991.1494,
       "thb": 47448381891167.68,
       "try": 37280573647281.79,
       "twd": 42742154130014.35,
       "uah": 48028015474703.42,
       "vef": 132167190928.10226,
       "vnd": 32427371225894836,
       "zar": 24769371018578.918,
       "xdr": 1005777407460.4373,
       "xag": 56867689304.89603,
       "xau": 661007548.9161608,
       "bits": 38275226832471.36,
       "sats": 3827522683247136.5
     },
     "total_volume": {
       "btc": 3441076.691485977,
       "eth": 65450071.66474059,
       "ltc": 1726274609.0492802,
       "bch": 482745058.243933,
       "bnb": 521419976.8995995,
       "eos": 190430203980.7513,
       "xrp": 212413006562.3931,
       "xlm": 1021965710829.3683,
       "link": 10434774927.540634,
       "dot": 27462204832.704933,
       "yfi": 19937381.233350683,
       "usd": 118668655579.12532,
       "aed": 435864038509.34973,
       "ars": 41537028446957.53,
       "aud": 186305873193.59274,
       "bdt": 13073694100621.2,
       "bhd": 44744609929.38713,
       "bmd": 118668655579.12532,
       "brl": 595040239670.408,
       "cad": 164249048849.75623,
       "chf": 107139165009.02429,
       "clp": 107880595970234.95,
       "cny": 868357887200.2493,
       "czk": 2760351597426.035,
       "dkk": 836548754072.2645,
       "eur": 112090139988.44107,
       "gbp": 97776326752.48672,
       "hkd": 928152768042.1141,
       "huf": 42886287738169.81,
       "idr": 1880605134886786.5,
       "ils": 481295146611.2618,
       "inr": 9877563668780.53,
       "jpy": 17758052295482.62,
       "krw": 159928647777561.88,
       "kwd": 36676565373.87356,
       "lkr": 38807676425091.13,
       "mmk": 248983906568387.66,
       "mxn": 2138433737947.542,
       "myr": 565159472195.5837,
       "ngn": 93621262446039.23,
       "nok": 1322101494708.3926,
       "nzd": 203349540182.48886,
       "php": 6737709829481.108,
       "pkr": 32900967590034.074,
       "pln": 498844460741.5804,
       "rub": 11054282650846.396,
       "sar": 445181070664.8331,
       "sek": 1322247694492.0679,
       "sgd": 162077887127.28046,
       "thb": 4265775397989.4604,
       "try": 3351653893114.356,
       "twd": 3842669070635.4424,
       "uah": 4317886483382.564,
       "vef": 11882292483.137823,
       "vnd": 2915334030023955,
       "zar": 2226853041207.6157,
       "xdr": 90422904840.87085,
       "xag": 5112604061.6885605,
       "xau": 59426889.34091451,
       "bits": 3441076691485.9766,
       "sats": 344107669148597.7
     },
     "market_cap_percentage": {
       "btc": 51.02040305462796,
       "eth": 16.515861341982504,
       "usdt": 6.402698216046852,
       "bnb": 2.652051241705335,
       "xrp": 2.2671470131282185,
       "usdc": 1.896153922509973,
       "steth": 1.2110113092514758,
       "sol": 1.1067135838521744,
       "ada": 0.7880744977668441,
       "doge": 0.742636067646481
     },
     "market_cap_change_percentage_24h_usd": 1.0604239156374584,
     "updated_at": 1698660878
   }
 }
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$\(item.value.formattedWithAbbreviations())"
        }
        
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        
        return ""
    }
}
