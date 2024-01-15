//
//  Alert.swift
//  barcode-scanner
//
//  Created by amartiniuc on 15.01.2024.
//

import SwiftUI

struct AlertItem:Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid Device Input",
                                              message: "Something wrong with camera. We are unable to capture the barcode.",
                                              dismissButton: .default(Text("Ok")))
    static let invalidScannedValue = AlertItem(title: "Invalid Scan Value",
                                              message: "The value scanned is not valid. This app scans EAN-8 and EAN-13",
                                              dismissButton: .default(Text("Ok")))
}
