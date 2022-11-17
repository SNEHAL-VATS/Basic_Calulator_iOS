//
//  ViewController.swift
//  CalciBasic
//
//  Created by Apple on 03/11/22.
//

import UIKit

class ViewController: UIViewController {
    var numberOnScreen:Double = 0
    //var prevNumber:Double = 0
    var firstEntered:Double=0
    var MathOperation=false
    var operations=0
    
    @IBOutlet weak var labelButton:UILabel!

    @IBAction func numbers(_ sender: UIButton) {
        if MathOperation == true{
        labelButton.text=String(sender.tag-1)
        numberOnScreen=Double(labelButton.text!)!
            MathOperation=false;
    }
    
        else
        {
            labelButton.text = labelButton.text! + String(sender.tag-1)
            numberOnScreen=Double(labelButton.text!)!
        }
    }
    
    
    
    
    @IBAction func operatorbutton(_ sender: UIButton)
    {
        if labelButton.text != "" && sender.tag != 15 && sender.tag != 16{
            
            firstEntered=Double(labelButton.text!)!
            if sender.tag == 11{
                labelButton.text = "+"
            }
            else if sender.tag==12{
                labelButton.text =  "-"
            }
            else if sender.tag==13{
                //labelButton.text = labelButton.text! + String("*")
                labelButton.text = "*"
            }
            else if sender.tag==14{
                labelButton.text = "/"
            }
            else if sender.tag==18{
                labelButton.text = "%"
            }
            operations=sender.tag
            MathOperation = true
        }
        else if sender.tag==16{
            
            //numberOnScreen=Double(labelButton.text!)!
            
            if operations == 11{
                labelButton.text=String(firstEntered + numberOnScreen)
                //firstEntered=Double(labelButton.text!)!
                
            }
            else if operations == 12{
                labelButton.text=String(firstEntered - numberOnScreen)
                //firstEntered=Double(labelButton.text!)!
            }
            else if operations == 13{
                labelButton.text=String(firstEntered * numberOnScreen)
                //firstEntered=Double(labelButton.text!)!
            }
            else if operations == 14{
                labelButton.text=String(firstEntered / numberOnScreen)
                //firstEntered=Double(labelButton.text!)!
            }
            else if operations == 18{
                labelButton.text=String(((firstEntered/numberOnScreen)-Double(Int(firstEntered / numberOnScreen)))*numberOnScreen)
                //firstEntered=Double(labelButton.text!)!
            }
        }
        else if sender.tag==15{
            labelButton.text=""
            firstEntered=0;
            numberOnScreen=0;
            operations=0;
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }


    
}

