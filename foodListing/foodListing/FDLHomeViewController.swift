//
//  FDLHomeViewController.swift
//  foodListing
//
//  Created by Vijay on 16/02/21.
//

import UIKit
var imageData = [ foodListing(sectionType: "Section 1", ImageGallery: ["img01" , "img05" , "img03", "img08" , "img04", "img06"]),
                  foodListing(sectionType: "Section 2", ImageGallery: ["img02" , "img03" , "img04", "img05" , "img010", "img07"]),
                  foodListing(sectionType: "Section 3", ImageGallery: ["img11" , "img07" , "img08", "img09" , "img05", "img01"]),
                  foodListing(sectionType: "Section 4", ImageGallery: ["img10" , "img02" , "img05", "img08" , "img02", "img03"]),
                  foodListing(sectionType: "Section 5", ImageGallery: ["img11" , "img07" , "img02", "img03" , "img09", "img04"]),
                  foodListing(sectionType: "Section 6", ImageGallery: ["img04" , "img06" , "img001", "img08" , "img02", "img03"])]

class FDLHomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    
    @IBOutlet weak var tblOutletImagesHome: UITableView!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
        tblOutletImagesHome.dataSource = self
        tblOutletImagesHome.delegate = self
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return imageData.count
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        imageData[section].sectionType
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let vc = tblOutletImagesHome.dequeueReusableCell(withIdentifier: "FDLImagesTableViewCell", for: indexPath) as! FDLImagesTableViewCell
        vc.clcOutletImages.tag = indexPath.section
        return vc
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }

    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        view.tintColor = .yellow
    }
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
       // let header: UITableViewHeaderFooterView = view as! UITableViewHeaderFooterView
//            header.textLabel?.font = UIFont(name: "AvenirNext-Regular", size: 14.0)
//            header.textLabel?.textAlignment = NSTextAlignment.Right
        
        
    }
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 100))

            // code for adding centered title
            //headerView.backgroundColor = UIColor.gray
            let headerLabel = UILabel(frame: CGRect(x: -110, y: 0, width:
                tableView.bounds.size.width, height: 28))
        headerView.backgroundColor = .white
                headerLabel.textColor = UIColor.black
                headerLabel.text = imageData[section].sectionType
                headerLabel.textAlignment = .center
                headerView.addSubview(headerLabel)

            // code for adding button to right corner of section header
                let viewAllButton: UIButton = UIButton(frame: CGRect(x:headerView.frame.size.width - 120, y:0, width:100, height:28))
                viewAllButton.setTitle("View All", for: .normal)
                viewAllButton.setTitleColor(UIColor.blue, for: .normal)
               //     viewAllButton.backgroundColor = UIColor.blue
                viewAllButton.addTarget(self, action: #selector(viewAllImage), for: .touchUpInside)
                headerView.addSubview(viewAllButton)

            return headerView
    }
    @objc func viewAllImage()
    {
        print("View All Image Code Here...")
    }
}
