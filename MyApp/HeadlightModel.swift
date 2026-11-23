import Foundation

struct Headlight: Identifiable {
    let id: UUID
    let name: String
    let subtitle: String
    let representativeModels: String
    let features: String
    let imageName: String
    let urlString: String
}

extension Headlight {
    static let catalog: [Headlight] = [
        Headlight(
            id: UUID(),
            name: "膠囊型全 LED 頭燈",
            subtitle: "以數位矩陣點亮未來感",
            representativeModels: "Gogoro 1 系列、S1、Pulse",
            features: "標誌性水平膠囊造型，外圈日行燈光環，Pulse 更搭載 13 顆獨立 LED 數位矩陣式頭燈與主動彎道補光。",
            imageName: "Pulse",
            urlString: "https://www.gogoro.com/tw/smartscooter/pulse/"
        ),
        Headlight(
            id: UUID(),
            name: "雙圓眼甜甜圈頭燈",
            subtitle: "對稱光環的經典辨識",
            representativeModels: "Gogoro 2 系列、S2、Delight",
            features: "經典左右對稱雙圓燈設計，外圈 LED 光環搭配中央遠近光燈，照明範圍寬廣。",
            imageName: "Delight",
            urlString: "https://www.gogoro.com/tw/smartscooter/delight/"
        ),
        Headlight(
            id: UUID(),
            name: "極簡水滴單燈",
            subtitle: "將流線融入車頭斜板",
            representativeModels: "Gogoro 3 系列、VIVA MIX、VIVA XL",
            features: "圓滑流線單燈造型，整合於車頭斜板，採用高亮度 LED 與反射式燈杯。",
            imageName: "VIVA MIX",
            urlString: "https://www.gogoro.com/tw/smartscooter/viva-mix/"
        ),
        Headlight(
            id: UUID(),
            name: "迷你魚眼小燈",
            subtitle: "小巧燈體，聚焦鮮明",
            representativeModels: "Gogoro VIVA、JEGO",
            features: "極簡輕量化獨立圓形小頭燈，高聚光 LED 透鏡設計，省電且辨識度極高。",
            imageName: "JEGO",
            urlString: "https://www.gogoro.com/tw/smartscooter/jego/"
        )
    ]
}
