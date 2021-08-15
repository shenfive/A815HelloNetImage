//
//  ViewController.swift
//  A815HelloNetImage
//
//  Created by 申潤五 on 2021/8/15.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var contaner: UIView!
    @IBOutlet weak var theImageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        
        
        
        let start = Date().timeIntervalSince1970
        let imageAddress = "https://shop.r10s.jp/aikimania/cabinet/new/sw-1758_sp.jpg"
        if let imageURL = URL(string: imageAddress){
            DispatchQueue.global().async {
                do{
                    let imageData = try Data(contentsOf: imageURL)
                    DispatchQueue.main.async {
                        self.theImageView.image = UIImage(data: imageData)
                        print("loded:\(Date().timeIntervalSince1970 - start)")
                    }
                }catch{
                    print(error.localizedDescription)
                }
            }
            print("next:\(Date().timeIntervalSince1970 - start)")
        }
    }

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated )
        
        theImageView.clipsToBounds = true
        theImageView.layer.cornerRadius = theImageView.frame.size.height / 2
        theImageView.layer.borderColor = UIColor.red.cgColor
        theImageView.layer.borderWidth = 1
        
        contaner.layer.cornerRadius = theImageView.frame.size.height / 2
        contaner.layer.borderColor = UIColor.red.cgColor
        contaner.layer.borderWidth = 1
        
        contaner.clipsToBounds = false
        contaner.layer.shadowRadius = 20
        contaner.layer.shadowColor = UIColor.green.cgColor
        contaner.layer.shadowOffset = CGSize(width: 10, height: 10)
        contaner.layer.shadowOpacity = 0.6
    }

}

