//
//  VideoDetailNetworkService.swift
//  Night_Club_Application
//
//  Created by Lubomir Olshansky on 20/07/2018.
//  Copyright © 2018 Lubomir Olshansky. All rights reserved.
//

import UIKit
import Foundation
import Alamofire

class VideoDetailNetworkService {
    
    typealias loadVideoDetailDataCompletion = ([VideosDetail]) -> Void
    
    var environment: Environment {
        return EnvironmentImp.Debug()
    }
    
    func loadVideoDetail(id: String, completion: @escaping loadVideoDetailDataCompletion ){
        
        let path = "/youtube/v3/videos"
        let parameters: Parameters = [
            "part": "statistics, contentDetails",
            "id": id,
            "key": self.environment.apiKey
        ]
        let url = self.environment.baseUrl + path
        
        Alamofire.request(url, method: .get, parameters: parameters).responseJSON(queue: .global(qos: .userInteractive))
        { respons in
            guard let data = respons.data else {return}
            print(data)
            do {
                let videosDecoded = try JSONDecoder().decode(VideosDetail.self, from: data)
                print(videosDecoded)
                DispatchQueue.main.async {
                    completion([videosDecoded])
                    return
                }
            } catch let jsonErr {
                print("Error serializing json:", jsonErr)
            }
        }
    }
}

