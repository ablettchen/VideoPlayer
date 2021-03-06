//
//  ViewController.swift
//  VideoPlayer
//
//  Created by 黄山哥 on 2019/1/16.
//  Copyright © 2019 黄山哥. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        playerTest()
    }
    
    // avplayer Test
    func playerTest() {
//        PoAVPlayerCacheManager.shared.deleteAllFiles()
        
        // avplayer是显示层
        let player = PoAVPlayer(frame: view.bounds)
        player.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // controlView是播放的交互控制层，可自定义
        let control = PoAVPlayerControlView(player: player)
        player.addControlLayer(control)
        
        view.addSubview(player)

//        let urlArray = ["http://www.w3school.com.cn/example/html5/mov_bbb.mp4",
//                        "http://clips.vorwaerts-gmbh.de/big_buck_bunny.mp4",
//                        "https://media.w3.org/2010/05/sintel/trailer.mp4",
//                        "http://mvvideo2.meitudata.com/576bc2fc91ef22121.mp4",
//                        "http://mvvideo10.meitudata.com/5a92ee2fa975d9739_H264_3.mp4",
//                        "http://mvvideo11.meitudata.com/5a44d13c362a23002_H264_11_5.mp4",
//                        "http://mvvideo10.meitudata.com/572ff691113842657.mp4",                   "https://api.tuwan.com/apps/Video/play?key=aHR0cHM6Ly92LnFxLmNvbS9pZnJhbWUvcGxheWVyLmh0bWw%2FdmlkPWswNjk2enBud2xvJnRpbnk9MCZhdXRvPTA%3D&aid=381395"
//        ]
//
//        player.play(with: URL(string:urlArray.randomElement()!)!, needCache: true)

        player.play(with: URL(string:"https://api.tuwan.com/apps/Video/play?key=aHR0cHM6Ly92LnFxLmNvbS9pZnJhbWUvcGxheWVyLmh0bWw%2FdmlkPWswNjk2enBud2xvJnRpbnk9MCZhdXRvPTA%3D&aid=381395")!, needCache: true)
    }

}
