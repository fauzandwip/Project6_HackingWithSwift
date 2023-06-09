//
//  ViewController.swift
//  Project6b
//
//  Created by Fauzan Dwi Prasetyo on 21/04/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let label1 = UILabel()
        label1.translatesAutoresizingMaskIntoConstraints = false
        label1.backgroundColor = .red
        label1.text = "THESE"
        label1.sizeToFit()
        
        let label2 = UILabel()
        label2.translatesAutoresizingMaskIntoConstraints = false
        label2.backgroundColor = .green
        label2.text = "ARE"
        label2.sizeToFit()
        
        let label3 = UILabel()
        label3.translatesAutoresizingMaskIntoConstraints = false
        label3.backgroundColor = .orange
        label3.text = "SOME"
        label3.sizeToFit()
        
        let label4 = UILabel()
        label4.translatesAutoresizingMaskIntoConstraints = false
        label4.backgroundColor = .cyan
        label4.text = "AWESOME"
        label4.sizeToFit()
        
        let label5 = UILabel()
        label5.translatesAutoresizingMaskIntoConstraints = false
        label5.backgroundColor = .yellow
        label5.text = "LABELS"
        label5.sizeToFit()
        
        let viewsDictionary = ["label1": label1, "label2": label2, "label3": label3, "label4": label4, "label5": label5]

        for label in viewsDictionary.values {
            view.addSubview(label)
        }

//        for label in viewsDictionary.keys {
//            view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|[\(label)]|", metrics: nil, views: viewsDictionary))
//        }

//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1]-[label2]-[label3]-[label4]-[label5]", metrics: nil, views: viewsDictionary))
//
//        let metrics = ["labelHeight": 88]
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight)]-[label2(labelHeight)]-[label3(labelHeight)]-[label4(labelHeight)]-[label5(labelHeight)]->=10-|", metrics: metrics, views: viewsDictionary))
        
//        let metrics = ["labelHeight": 88]
//        view.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight@999)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-[label5(label1)]->=10-|", metrics: metrics, views: viewsDictionary))

        var previous: UILabel?
        
//        for label in [label1, label2, label3, label4, label5]{
//            label.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
//            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
//
//            if let previous = previous {
//                // we have a previous label – create a height constraint
//                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
//            } else {
//                 // this is the first label
//                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
//            }
//
//            previous = label
//        }
        
        for label in [label1, label2, label3, label4, label5]{
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
//            label.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 1, constant: 50).isActive = true
//            label.heightAnchor.constraint(equalToConstant: 88).isActive = true
            label.heightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.heightAnchor, multiplier: 0.2, constant: -10).isActive = true

            if let previous = previous {
                // we have a previous label – create a height constraint
                label.topAnchor.constraint(equalTo: previous.bottomAnchor, constant: 10).isActive = true
                
//                if previous == label4 {
//                    label.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
//                }
            } else {
                 // this is the first label
                label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 0).isActive = true
            }
            
            previous = label
        }
    }


}

