//
//  ViewController.swift
//  prectical1
//
//  Created by macbook on 24/09/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var txtAbc: UITextField!
    @IBOutlet weak var lblAbc: UILabel!
    
    var arrSrr = [String]()
    var arrFinalstr = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setCharcter()
    }
    
    func setCharcter() {
        var abc = ["a","b","c","d","e","f"]
        for ab in abc {
            arrSrr.append(ab)
            arrFinalstr.append(arrSrr.joined(separator: ""))
            arrFinalstr.append("\(arrSrr.joined(separator: "").uppercased())")
        }
        abc.removeLast()
        for _ in abc {
            arrSrr.removeLast()
            arrFinalstr.append(arrSrr.joined(separator: ""))
            arrFinalstr.append("\(arrSrr.joined(separator: "").uppercased())")
        }
        print(arrFinalstr)
    }
}
