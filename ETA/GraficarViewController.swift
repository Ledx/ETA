//
//  FirstViewController.swift
//  ETA
//
//  Created by ledx on 8/23/18.
//  Copyright © 2018 ledx. All rights reserved.
//

import UIKit
import Charts
class GraficarViewController: UIViewController {
    
    @IBOutlet weak var chart: LineChartView!
    //var datos = LineChartData(value: 0)
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        setChartValues()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func setChartValues(_ count : Int = 20) {
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = Double(arc4random_uniform(UInt32(count)) + 3)
            return ChartDataEntry(x: Double(i), y: val)
        }
        
        let set1 = LineChartDataSet(values: values, label: "Temperatura")
        let data = LineChartData(dataSet: set1)
        
        self.chart.data = data
        
    }

}

