//
//  SecondViewController.swift
//  HW1(Protocols)
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit

protocol DataSentDelegate {
    func userDidEnterData(data: [String?])
}

class SecondViewController: UIViewController {

    var delegate : DataSentDelegate? = nil
    let customLabels = SetupCustomUILabels()
    
    @IBOutlet weak var color1Label: UILabel!
    @IBOutlet weak var color2Label: UILabel!
    @IBOutlet weak var color3Label: UILabel!
    @IBOutlet weak var buttonUI: UIButton!
    @IBOutlet weak var redTextLabel: UITextField!
    @IBOutlet weak var greenTextLabel: UITextField!
    @IBOutlet weak var blueTextLabel: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customLabels.setupUIView(UIview: color1Label, 5)
        customLabels.setupUIView(UIview: color2Label, 5)
        customLabels.setupUIView(UIview: color3Label, 5)
        customLabels.setupUIView(UIview: redTextLabel, 5)
        customLabels.setupUIView(UIview: greenTextLabel, 5)
        customLabels.setupUIView(UIview: blueTextLabel, 5)
        customLabels.setupUIView(UIview: buttonUI, 30)
    }

@IBAction func buttonCompleteAssigning(_ sender: UIButton) {
    if delegate != nil {
        if redTextLabel.text != nil && blueTextLabel.text != nil && greenTextLabel.text != nil {
            let data = [redTextLabel.text, blueTextLabel.text, greenTextLabel.text]
            delegate?.userDidEnterData(data: data)
            }
        }
    _ = navigationController?.popViewController(animated: true)
    }
}
