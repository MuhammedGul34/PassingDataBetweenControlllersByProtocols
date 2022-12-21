//
//  SetupCustomUILabels.swift
//  HW1(Protocols)
//
//  Created by Muhammed Gül on 20.12.2022.
//

import UIKit

class SetupCustomUILabels {
    func setupUIView(UIview : UIView,_ cornerRadius: CGFloat){
        UIview.layer.masksToBounds = true
        UIview.clipsToBounds = true
        UIview.layer.cornerRadius = cornerRadius
    }
}
