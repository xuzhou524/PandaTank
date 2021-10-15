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
        
        //创建数据源
        let dataSource = RxTableViewSectionedAnimatedDataSource<MySection>(
            //设置单元格
            configureCell: { ds, tableView, indexPath, item in
                let cell = getCell(tableView, cell: MainTableViewCell.self, indexPath: indexPath)
                cell.titleLabel.text = "\(indexPath.row)：\(item)"
                return cell
            }
        )
        
        //绑定单元格数据
        TargetViewModel().sections
            .bind(to: tableView.rx.items(dataSource: dataSource))
            .disposed(by: disposeBag)
        
    }

}
