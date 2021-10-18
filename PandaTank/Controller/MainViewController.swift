//
//  MainViewController.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/15.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import RxDataSources

class MainViewController: UIViewController {

    fileprivate lazy var disposeBag : DisposeBag = DisposeBag()
    
    let tableView:UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor.white
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "钱罐"
        self.view.backgroundColor = UIColor.white
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .automatic
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self.view)
        }
        
        regClass(tableView, cell: MainTableViewCell.self)
                
        //数据View绑定
        bindViewModel()
        
    }
    
    func bindViewModel(){
        
        TargetViewModel().dataSource
            .bind(to: tableView.rx.items, curriedArgument: { (tableView, row, item) -> UITableViewCell in
                let cell = getCell(tableView, cell: MainTableViewCell.self, indexPath: NSIndexPath.init(row: row, section: 0) as IndexPath)
                cell.titleLabel.text = "\(item.title)"
                cell.amountLabel.text = "目标：\(item.currentAmount) / \(item.totalAmount)"
                let p:Float = ((Float("\(item.currentAmount)") ?? 0.0) / (Float(item.totalAmount) ?? 1.0)) * 100
                cell.progressLabel.text = String(format: "%.2f", p) + "%"
                return cell

            }).disposed(by: disposeBag)
        
    }

}
