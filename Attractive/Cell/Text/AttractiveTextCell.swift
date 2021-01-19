//
//  AttractiveTextCell.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

class AttractiveTextCell: UITableViewCell {
    
    //テキストのラベル
    @IBOutlet weak var contentTextView: UITextView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    open func setData(text: String) {
        contentTextView.text = text
    }
    
}
