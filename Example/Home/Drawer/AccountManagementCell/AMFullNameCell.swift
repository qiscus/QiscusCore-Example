//
//  AMFullNameCell.swift
//  Example
//
//  Created by Qiscus on 09/02/21.
//  Copyright © 2021 Qiscus. All rights reserved.
//

import UIKit

class AMFullNameCell: UITableViewCell {

    @IBOutlet weak var lbNotifEmptyFullName: UILabel!
    @IBOutlet weak var tfFullname: UITextField!
    var fullName = ""
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        var bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0.0, y: tfFullname.frame.height - 1, width: tfFullname.frame.width, height: 1.0)
        bottomLine.backgroundColor = UIColor.lightGray.cgColor
        tfFullname.borderStyle = UITextField.BorderStyle.none
        tfFullname.layer.addSublayer(bottomLine)
        
        let nc = NotificationCenter.default
        nc.addObserver(self, selector: #selector(updateUI), name: Notification.Name("AMFullnameChanged"), object: nil)
        
        self.tfFullname.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setupData(fullname : String = ""){
        if self.fullName.isEmpty == true {
            self.fullName = fullname
            self.tfFullname.text = fullname
        }
    }
    
    @objc func updateUI(){
        if self.tfFullname.text?.isEmpty == true {
            self.lbNotifEmptyFullName.isHidden = false
        } else {
            self.lbNotifEmptyFullName.isHidden = true
        }
    }
    
}

extension AMFullNameCell : UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
       
    }
    func textFieldDidEndEditing(_ textField: UITextField) {
       
    }
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        return true;
    }
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true;
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true;
    }
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.5) { () -> Void in
            if self.tfFullname.text?.isEmpty == false {
                self.lbNotifEmptyFullName.isHidden = true
            }
        }
        
        return true;
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true;
    }
    
}
