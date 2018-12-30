//
//  WhiteView.swift
//  ScrollViewWizardry
//
//  Created by Will Bishop on 29/12/18.
//  Copyright © 2018 Will Bishop. All rights reserved.
//

import UIKit

class WhiteView: UIView {

    override func draw(_ rect: CGRect) {
         self.frame.size.height = 490
    }
 
    override func willMove(toWindow newWindow: UIWindow?) {
        print("Moving")
    }
    @IBAction func buttonTap(_ sender: Any) {
        print("Tapped")
    }
}
