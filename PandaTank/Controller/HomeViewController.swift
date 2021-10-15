//
//  HomeViewController.swift
//  PandaTank
//
//  Created by HuaLaLa on 2021/10/12.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import RxDataSources

class HomeViewController: UIViewController {
    
    fileprivate lazy var disposeBag : DisposeBag = DisposeBag()
    
//    let homeModel = HomeModel()
    
    let tableView:UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor.orange
        tableView.separatorStyle = .none
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "目标"
        self.view.backgroundColor = UIColor.white
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.top.left.right.bottom.equalTo(self.view)
        }
        
        tableView.register(LeftTitleTableViewCell.self, forCellReuseIdentifier: "LeftTitleTableViewCell")
        tableView.register(LeftsTitleTableViewCell.self, forCellReuseIdentifier: "LeftsTitleTableViewCell")
        
        //        let dsd = TargetViewModel()
        //        dsd.data.bind(to: tableView.rx.items(cellIdentifier: "LeftTitleTableViewCell")) { _,model,cell in
        //            cell.textLabel?.text = "22"
        //        }.disposed(by: disposeBag)
        //
        //        tableView.rx.modelSelected(EventModel.self).subscribe { element in
        //            print(element)
        //        }.disposed(by: disposeBag)
        //
        //        Observable.just(0..<10)
        //            .bind(to: tableView.rx.items, curriedArgument: { (tv, row, element) -> UITableViewCell in
        //                if row % 2 == 0 {
        //                    let cell:LeftTitleTableViewCell = tv.dequeueReusableCell(withIdentifier: "LeftTitleTableViewCell", for: IndexPath(row: row, section: 0)) as! LeftTitleTableViewCell
        //                    cell.nodeNameLabel.text = "第\(row)行元素为：\(element)"
        //                    return cell
        //                }else{
        //                    let cell:LeftsTitleTableViewCell = tv.dequeueReusableCell(withIdentifier: "LeftsTitleTableViewCell", for: IndexPath(row: row, section: 0)) as! LeftsTitleTableViewCell
        //                    cell.nodeNameLabel.text = "第\(row)行元素为：\(element)"
        //                    return cell
        //                }
        //
        //            }).disposed(by: disposeBag)
        //
        //        tableView.rx.itemSelected.subscribe { indexPath in
        //            print(indexPath.row)
        //        }.disposed(by: disposeBag)
        
        bindViewModel()
        //        updateData()
    }
    
    //    let dataSource = RxTableViewSectionedReloadDataSource<SectionModel<String, Double>>(
    //        configureCell: { (_, tv, indexPath, element) in
    //            let cell = tv.dequeueReusableCell(withIdentifier: "Cell")!
    //            cell.textLabel?.text = "\(element) @ row \(indexPath.row)"
    //            return cell
    //        },
    //        titleForHeaderInSection: { dataSource, sectionIndex in
    //            return dataSource[sectionIndex].model
    //        }
    //    )
    
    
    func bindViewModel() -> Void {
        
        
        //        //初始化数据
        //        let items = Observable.just([
        //            SectionModel(model: "基本控件", items: [
        //                "UILable的用法",
        //                "UIText的用法",
        //                "UIButton的用法"
        //            ]),
        //            SectionModel(model: "基本控件1", items: [
        //                "UILable1的用法",
        //                "UIText1的用法",
        //                "UIButton1的用法"
        //            ]),
        //            SectionModel(model: "基本控件2", items: [
        //                "UILable2的用法",
        //                "UIText2的用法",
        //                "UIButton2的用法"
        //            ])
        //        ])
        
        //        //创建数据源
        //        let dataSource = RxTableViewSectionedReloadDataSource
        //        <SectionModel<String, String>>(configureCell: {
        //            (dataSource, tv, indexPath, element) in
        //            let cell:LeftTitleTableViewCell = tv.dequeueReusableCell(withIdentifier: "LeftTitleTableViewCell") as! LeftTitleTableViewCell
        //            cell.nodeNameLabel.text = "\(indexPath.row)：\(element)"
        //            return cell
        //        })
        //
        //        //设置分区头标题
        //        dataSource.titleForHeaderInSection = { ds, index in
        //            return ds.sectionModels[index].model
        //        }
        
        //设置分区尾标题
        //dataSource.titleForFooterInSection = { ds, index in
        //    return "footer"
        //}
        
//        //初始化数据
//        let sections = Observable.just([
//            MySection(header: "基本控件", items: [
//                "UILable的用法",
//                "UIText的用法",
//                "UIButton的用法"
//            ]),
//            MySection(header: "高级控件", items: [
//                "UITableView的用法",
//                "UICollectionViews的用法"
//            ])
//        ])
        
        //创建数据源
//        let dataSource = RxTableViewSectionedAnimatedDataSource<TargetModel>(
//            //设置单元格
//            configureCell: { ds, tv, ip, item in
//                let cell:LeftTitleTableViewCell = tv.dequeueReusableCell(withIdentifier: "LeftTitleTableViewCell") as! LeftTitleTableViewCell
//                cell.nodeNameLabel.text = "\(ip.row)：\(item)"
//                return cell
//            },
//            //设置分区头标题
//            titleForHeaderInSection: { ds, index in
//                return ds.sectionModels[index].header
//            }
//        )
        
        //绑定单元格数据
//        TargetViewModel().sections
//            .bind(to: tableView.rx.items(dataSource: dataSource))
//            .disposed(by: disposeBag)
        
    }
    
//    func updateData() {
//        homeModel.updateGroupModels()
//    }
    
    
}


