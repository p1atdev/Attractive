//
//  Attractive.swift
//  Attractive
//
//  Created by 周廷叡 on 2021/01/19.
//

import UIKit

//attrativeの
public class AttractiveViewController: UITableViewController {
    
    //背景色
    open var defaultBackgroundColor: UIColor = UIColor.systemBackground
    
    //テキストの文字
    open var defaultTextColor: UIColor = UIColor.label
    
    //アクセントカラー
    open var accentColor: UIColor = UIColor.systemBlue
    
    //グレーアウトのカラー
    open var defaultGrayColor: UIColor = UIColor.secondaryLabel
    
    //オブジェクト
    var attractiveComponents: AttractiveComponents!
    
    //セルの登録
    open override func viewDidLoad() {
        //header
        tableView.register(UINib(nibName: "AttractiveHeaderCell", bundle: nil), forCellReuseIdentifier: "attractiveHeaderCell")
        
        //text
        tableView.register(UINib(nibName: "AttractiveTextCell", bundle: nil), forCellReuseIdentifier: "attractiveTextCell")
    }
    
    //生成
    public func create(attractive: AttractiveComponents) {
        
        self.attractiveComponents = attractive
        
    }
}

//セルとかの設定
extension AttractiveViewController {
    
    //セクションの数->1固定
    open override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    //セルの数
    open override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return attractiveComponents!.components.count   //要素の数だけ
    }
    
    //セルを指定
    open override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //何番目か
        let rowAt = indexPath.row
        
        //タイプで選別
        switch attractiveComponents.components[rowAt].type {
        case .header:
            //cell
            let cell = tableView.dequeueReusableCell(withIdentifier: "attractiveHeaderCell") as! AttractiveHeaderCell
            //代入
            cell.setData(header: attractiveComponents.components[rowAt].textContent!)
            
            return cell
            
        case .text:
            //cell
            let cell = tableView.dequeueReusableCell(withIdentifier: "attractiveTextCell") as! AttractiveTextCell
            
            //代入
            cell.setData(text: attractiveComponents.components[rowAt].textContent!)
            
            return cell
            
        default:
            let cell = tableView.dequeueReusableCell(withIdentifier: "attractiveTextCell") as! AttractiveTextCell
            
            //代入
            cell.setData(text: "Error!")
            
            return cell
        }
    }
    
}
