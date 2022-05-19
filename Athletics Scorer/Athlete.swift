//
//  Athlete.swift
//  Athletics Scorer
//
//  Created by Hughes, Teo (BJH) on 19/05/2022.
//
import SwiftUI

struct Athlete: Identifiable, Codable {
    var Event: String
    var Name: String
    var Points: Int
    var Position: Int
    var Score: Double
    var School: String
    var id: String = UUID().uuidString
}


