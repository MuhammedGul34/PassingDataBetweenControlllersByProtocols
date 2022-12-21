//
//  ViewController.swift
//  HW1(Protocols)
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit



class ViewController: UIViewController,DataSentDelegate {
    
    let customLabels = SetupCustomUILabels()
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var color1Lbl: UILabel!
    @IBOutlet weak var color2Lbl: UILabel!
    @IBOutlet weak var color3Lbl: UILabel!
    
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    @IBOutlet weak var ButtonUI: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        customLabels.setupUIView(UIview: titleLbl, 20)
        customLabels.setupUIView(UIview: color1Lbl, 10)
        customLabels.setupUIView(UIview: color2Lbl, 10)
        customLabels.setupUIView(UIview: color3Lbl, 10)
        customLabels.setupUIView(UIview: redLabel, 10)
        customLabels.setupUIView(UIview: greenLabel, 10)
        customLabels.setupUIView(UIview: blueLabel, 10)
        customLabels.setupUIView(UIview: ButtonUI, 30)
        
    }
    @IBAction func buttonToSecondVC(_ sender: Any) {
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            let SecondVC : SecondViewController = segue.destination as! SecondViewController
            SecondVC.delegate = self
        }
    }
    
    func userDidEnterData(data: [String?]) {
        redLabel.text = data[0]
        blueLabel.text = data[1]
        greenLabel.text = data[2]
    }
}
