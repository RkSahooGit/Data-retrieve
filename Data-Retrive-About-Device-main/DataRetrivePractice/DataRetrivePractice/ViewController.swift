//
//  ViewController.swift
//  DataRetrivePractice
//
//  Created by Rakesh Kumar Sahoo on 01/03/24.
//

import UIKit
import OSLog

class ViewController: UIViewController {
    
    
   
        @IBOutlet weak var modelNameLabel: UILabel!
        @IBOutlet weak var iosVersionLabel: UILabel!
        @IBOutlet weak var serielNumber: UILabel!
        @IBOutlet weak var storageLabel: UILabel!
        @IBOutlet weak var batteryHealthLabel: UILabel!
        @IBOutlet weak var batteryLevelLabel: UILabel!
        @IBOutlet weak var cameraMegapixel: UILabel!
        @IBOutlet weak var cameraAperture: UILabel!
        @IBOutlet weak var processorInformation: UILabel!
        @IBOutlet weak var gpuInformation: UILabel!
        @IBOutlet weak var imei: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "About"
                // Model Name & Model Number
                modelNameLabel.text = "Model: \(UIDevice.current.model) (\(UIDevice.current.name))"

                // iOS Version
                iosVersionLabel.text = "iOS Version: \(UIDevice.current.systemVersion)"
        
                // Device's seriel number
                serielNumber.text = "Accessing the device's serial number is prohibited by App Store guidelines."
        
                // Storage
                do {
                    let url = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false)
                    let resourceValues = try url.resourceValues(forKeys: [.volumeAvailableCapacityForImportantUsageKey])
                    if let freeSpace = resourceValues.volumeAvailableCapacityForImportantUsage {
                        let value = freeSpace/1024/1024/1024
                        storageLabel.text = "Available Storage: \(value) gb"

                    }
                } catch {
                    storageLabel.text = "Storage information unavailable."
                }
                
                // Battery Health
                batteryHealthLabel.text = "Accessing the battery Health is strictly prohibited by App Store guidelines"

                // Battery Level
                batteryLevelLabel.text = "Battery Level: \(UIDevice.current.batteryLevel * 100)%"
        
                //Camera Megapixel
                cameraMegapixel.text = "Directly accessing camera specifications is not possible through public APIs."
        
                // Camera Aperture
                cameraAperture.text = "Directly accessing camera specifications is not possible through public APIs."
        
                // Processor Information
                processorInformation.text = "Retrieving detailed information about the device's processor and GPU is restricted."
            
                // GPU Information
                gpuInformation.text = "Accessing the GPU is strictly prohibited by App Store guidelines"
            
                //IMEI Number
                imei.text = "Accessing the IMEI is strictly prohibited by App Store guidelines."
        
    }
    
}

