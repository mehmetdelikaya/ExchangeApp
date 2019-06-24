//
//  ResponseModel.swift
//  Doviz
//
//  Created by Mehmet Delikaya on 24.06.2019.
//  Copyright © 2019 Mehmet Delikaya. All rights reserved.
//

// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let responseModel = try? newJSONDecoder().decode(ResponseModel.self, from: jsonData)

import Foundation

// MARK: - ResponseModel
struct ResponseModel: Codable {
    
    let abdDolari, avustralyaDolari, dani̇markaKronu, euro: PuneHedgehog
    let i̇ngi̇li̇zSterli̇ni̇, i̇svi̇çreFrangi, i̇sveçKronu, kanadaDolari: PuneHedgehog
    let kuveytDi̇nari, norveçKronu, suudi̇Arabi̇stanRi̇yali̇, japonYeni̇: PuneHedgehog
    let bulgarLevasi, rumenLeyi̇, rusRublesi̇, i̇ranRi̇yali̇: PuneHedgehog
    let çi̇nYuani, paki̇stanRupi̇si̇, katarRi̇yali̇: PuneHedgehog
    let çeyrekAltın, yarımAltın, tamAltın, cumhuriyetAltını: PuneHedgehog
    let ons, gramAltın, ataAltın, the14AyarAltın: PuneHedgehog
    let the18AyarAltın, the22AyarBilezik, i̇kibuçukAltın, beşliAltın: PuneHedgehog
    let gremseAltın, gümüş: PuneHedgehog
    
    enum CodingKeys: String, CodingKey {
    
        case abdDolari = "ABD DOLARI"
        case avustralyaDolari = "AVUSTRALYA DOLARI"
        case dani̇markaKronu = "DANİMARKA KRONU"
        case euro = "EURO"
        case i̇ngi̇li̇zSterli̇ni̇ = "İNGİLİZ STERLİNİ"
        case i̇svi̇çreFrangi = "İSVİÇRE FRANGI"
        case i̇sveçKronu = "İSVEÇ KRONU"
        case kanadaDolari = "KANADA DOLARI"
        case kuveytDi̇nari = "KUVEYT DİNARI"
        case norveçKronu = "NORVEÇ KRONU"
        case suudi̇Arabi̇stanRi̇yali̇ = "SUUDİ ARABİSTAN RİYALİ"
        case japonYeni̇ = "JAPON YENİ"
        case bulgarLevasi = "BULGAR LEVASI"
        case rumenLeyi̇ = "RUMEN LEYİ"
        case rusRublesi̇ = "RUS RUBLESİ"
        case i̇ranRi̇yali̇ = "İRAN RİYALİ"
        case çi̇nYuani = "ÇİN YUANI"
        case paki̇stanRupi̇si̇ = "PAKİSTAN RUPİSİ"
        case katarRi̇yali̇ = "KATAR RİYALİ"
        case çeyrekAltın = "Çeyrek Altın"
        case yarımAltın = "Yarım Altın"
        case tamAltın = "Tam Altın"
        case cumhuriyetAltını = "Cumhuriyet Altını"
        case ons = "Ons"
        case gramAltın = "Gram Altın"
        case ataAltın = "Ata Altın"
        case the14AyarAltın = "14 Ayar Altın"
        case the18AyarAltın = "18 Ayar Altın"
        case the22AyarBilezik = "22 Ayar Bilezik"
        case i̇kibuçukAltın = "İkibuçuk Altın"
        case beşliAltın = "Beşli Altın"
        case gremseAltın = "Gremse Altın"
        case gümüş = "Gümüş"
    }
}

// MARK: - PuneHedgehog
struct PuneHedgehog: Codable {
    let alış, satış: String
    let tür: Tür
    
    enum CodingKeys: String, CodingKey {
        case alış = "Alış"
        case satış = "Satış"
        case tür = "Tür"
    }
}

enum Tür: String, Codable {
    case altın = "Altın"
    case döviz = "Döviz"
}

// MARK: - ÖzelÇekmeHakkiSDR
struct ÖzelÇekmeHakkiSDR: Codable {
    let alış: String
    let satış: [JSONAny]
    let tür: Tür
    
    enum CodingKeys: String, CodingKey {
        case alış = "Alış"
        case satış = "Satış"
        case tür = "Tür"
    }
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {
    
    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }
    
    func hash(into hasher: inout Hasher){
        hasher.combine(0)
    }
    
    public init() {}
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String
    
    required init?(intValue: Int) {
        return nil
    }
    
    required init?(stringValue: String) {
        key = stringValue
    }
    
    var intValue: Int? {
        return nil
    }
    
    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {
    
    let value: Any
    
    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }
    
    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }
    
    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }
    
    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }
    
    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }
    
    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }
    
    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }
    
    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }
    
    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}

