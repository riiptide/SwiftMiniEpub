//
//  Extensions.swift
//  MiniEpub
//
//  Created by Aaliyah Sayed on 7/18/22.
//

import Foundation
import SwiftUI

extension Color {
    init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let length = hexSanitized.count

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0

        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0

        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, opacity: a)
    }
}



struct K {
//    func rgb(r: Double, g: Double, b: Double) -> Color {
//        return Color(red: r / 255, green: g / 255, blue: b / 255)
//    }

    
    static let softBlack = Color(hex: "0c0c0b")
    static let tintedWhite = Color(hex: "f7e9f4")
    static let sepiaColor = Color(hex: "FBEFD8")
    
//    static let readwellGreen = Color.rgb(r: 99, g: 200, b: 162)
    
    
}
let sampleText = "I don’t know why I didn’t think of someone like Miss Emily. It never occurred to me to imagine her. I guess you could say I lacked imagination. I married her son after knowing him for only five days. A whirlwind romance.\(par) I was the cashier at the local supermarket. Her son came in on Tuesdays to shop, to get discounts. I thought he was someone who didn’t spend lavishly even though he could. I could tell he came from good people. He always wore a nice suit, and he had this beautiful coat, the kind of fabric that made you want to reach out and touch.\(par) Of course, I could never do anything like that. I am not that bold. And, anyway, we weren’t allowed to behave that way with customers. I wasn’t selling clothes. I scanned bar codes. We were instructed only to take the coupons and the cash, or to press the buttons for the credit-card machines. We don’t accept personal checks anymore, we were told to say.\(par) The evening I actually met Miss Emily’s son, I was finishing up my shift when I saw him come in. He seemed real glamorous, and I hadn’t seen someone like that before so close up, looking right back at me. He certainly was not like the kind of people I’d grown up around. The kind who cuss, grab their crotch, belch. If they didn’t like you, you’d know about it and they’d say it to your face. There was no pretending.\(par) I helped him carry some things to his car, and we got to talking. I liked talking to him. He was funny and friendly and polite. That’s all I really need to know about anyone. I remember now that it snowed. Large, fluffy, soft flakes that made you think of diamonds. That night, I went home with him, and the rest, as they say, is history. We got married.\(par) I met Miss Emily not long after marrying her son, on a Friday evening. She took the earliest flight she could get to come see her son. She thought I was pregnant because of how sudden it was. I was not.\(par) She was so eager to meet me. She made her son drive her to the supermarket, and they waited in the parking lot for two hours until I finished my shift. I had been on my feet for eight hours, so I wasn’t looking too hot or feeling that great about myself. But I didn’t think of things like that, impressions—first impressions—what they mean and how people don’t change their feelings about you even years after.\(par) I was wearing jeans and a pair of old runners, and a sweatshirt several sizes too large. My hair was tied back in a low ponytail. I wasn’t wearing any makeup. Like I said, I didn’t think of things like that at the time."

let pumpkinland = "In the Land of Sure Enough, away down South, in a most wonderful land named Georgia, lives a little boy called Happy. He is fat and round as a brown cookie, with eyes like two round moons, and these eyes just sparkle. Now this little boy's really name isn't Happy—he has a long, solemn name written in his Mammy's Bible, but somehow that long name didn't just fit the boy. It seemed as if that name was too long, just like it was when he tried on his daddy's pants; besides when you looked at him, you felt jolly all inside and outside and just up and said that that boy's name must be Happy ; so everyone called him Happy. He wasn't very big, because he liked candy ; and he wasn't very little, because he had a real knife in his pocket. He was just as high as this, but not quite as low as that; he could whistle Sometimes he got a spanking ; sometimes he got pennies. He lived in a funny little house made of logs, all nice and white; there was the biggest yard, and in it was a great big China-berry tree; under the tree was a bench so big and so untippy that Happy often played that it was a boat. He had a little dog, with a very long tail ; a big black rooster and a little red hen,—all his own.Now this very day Happy was sitting on the bench under the China-berry tree, waiting for his Mammy to come home with the syrup from the cane mill,—real, ribbon cane syrup that only southern girls and boys know about, and which is far nicer than any candy. Happy saw his Mammy coming away down the white road. His mouth began to water, his round little stom-ick away down inside of him begged for that syrup ; so Happy's little fat legs said to his little fat feet, and Happy almost knocked Mammy Tibblets over, begging for a bit; but she walked right straight into the kitchen, put the bucket on the table, and said to Happy— Now, Happy, you go on and play. Don't you bother that syrup, and for supper I'll bake you a pile of waffles ‘most as high as yourself and you can swim them in that syrup. I am going over to Captain Jones' and get’ their clothes to wash. Now don't you bother that syrup. Happy turned cart-wheels out the door and landed on the bench under the China-berry tree. He tried very hard not to think about that syrup. He made a whistle with his he fed the old black rooster and the little red hen, although it wasn't near time ; and all the while a small voice kept saying, After a while, although Happy did not tell them to, his right little leg started to the house and, of course, the fat little left leg followed, back to the kitchen door, right up to the kitchen table. There sat the bucket of syrup, and that little voice said again"

let par = "\n\n\n"






