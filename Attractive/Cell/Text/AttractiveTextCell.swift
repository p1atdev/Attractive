//
//  AttractiveTextCell.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

public class AttractiveTextCell: UITableViewCell {
    
    //テキストのラベル
    @IBOutlet weak var contentTextView: UITextView!
    

    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    public func setData(text: String) {
        contentTextView.text = text
    }
    
}
