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
                cell.amountLabel.text = "\(item.totalAmount)"
                return cell

            }).disposed(by: disposeBag)
        
    }

}
