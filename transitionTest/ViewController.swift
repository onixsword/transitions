//
//  ViewController.swift
//  transitionTest
//
//  Created by Maestro on 29/01/18.
//  Copyright © 2018 alumno. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var lbl_contador: UILabel!
    @IBOutlet weak var vw_LabelContainer: UIView!
    var contador = 0;

    @IBAction func tap_Transition(_ sender: Any) {
        
        let random = round(Double(drand48()*6))
        
        switch(random){
        case 0:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionCurlUp], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 1:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionCurlDown], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 2:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromTop], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 3:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromLeft], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 4:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionCrossDissolve], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 5:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromRight], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        case 6:
            UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromBottom], animations: {
                self.oneUp()
            }, completion: nil)
            break;
        default:
            break;
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func oneUp(){
        self.contador += 1
        self.lbl_contador.text = String(self.contador)
    }

    @IBAction func toLeft(_ sender: Any) {
        UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromRight], animations: {
            self.oneUp()
        }, completion: nil)
    }
    
    @IBAction func toRight(_ sender: Any) {
        UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromLeft], animations: {
            self.oneUp()
        }, completion: nil)
    }
   
    @IBAction func toTop(_ sender: Any) {
        UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromTop], animations: {
            self.oneUp()
        }, completion: nil)
    }
    
    @IBAction func toDown(_ sender: Any) {
        UIView.transition(with: vw_LabelContainer, duration: 0.5, options: [.transitionFlipFromBottom], animations: {
            self.oneUp()
        }, completion: nil)
    }
}

