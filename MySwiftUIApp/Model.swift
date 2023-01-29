//
//  Model.swift
//  SwiftUIApp
//
//  Created by Максим Донских on 29.01.2023.
//

import SwiftUI
import CoreLocation

struct Model: Hashable, Identifiable {

    
    var id: Int
    var name: String
    var imageName: String
    var image: Image {
        Image(imageName)
    }
    var coordinates: Coordinates
    var adress: String
    var state: String
    var description: String
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

let statesArray: [String] = [
    "California",
    "California",
    "California",
    "Moscow",
    "California",
    "Moscow",
    "California",
    "Walloon Brabant",
    "California",
    "Berlin",
    "California",
    "California",
    "California",
    "Tel Aviv District",
    "St Petersburg",
    "Guangdong Province",
    "California",
    "California",
    ]

let coordinatesArray: [Coordinates] = [
    Coordinates(latitude: 37.4843, longitude: -122.1494),
    Coordinates(latitude: 37.4843, longitude: -122.1494),
    Coordinates(latitude: 37.4249, longitude: -122.0074),
    Coordinates(latitude: 55.7539, longitude: 37.6208),
    Coordinates(latitude: 37.4843, longitude: -122.1494),
    Coordinates(latitude: 55.7539, longitude: 37.6208),
    Coordinates(latitude: 37.7748, longitude: -122.4020),
    Coordinates(latitude: 50.8146, longitude: 4.381187),
    Coordinates(latitude: 34.0127, longitude: -118.4951),
    Coordinates(latitude: 52.5200, longitude: 13.4049),
    Coordinates(latitude: 37.7680, longitude: -122.4224),
    Coordinates(latitude: 37.7750, longitude: -122.3922),
    Coordinates(latitude: 37.7768, longitude: -122.4169),
    Coordinates(latitude: 32.0805, longitude: 34.8173),
    Coordinates(latitude: 59.9386, longitude: 30.3141),
    Coordinates(latitude: 22.5479, longitude: 113.9471),
    Coordinates(latitude: 37.4843, longitude: -122.1494),
    Coordinates(latitude: 37.6254, longitude: -122.3930),
]

let adressesArray: [String] = [
    "1 Hacker Way\n Menlo Park CA 94025\n USA",
    "1 Hacker Way\n Menlo Park CA 94025\n USA",
    "222 2nd St\n Sunnyvale CA 94085\n USA",
    "15-ya Parkovaya St, bld. 1\n Moscow, Russia",
    "1 Hacker Way\n Menlo Park CA 94025\n USA",
    "15-ya Parkovaya St, bld. 1\n Moscow, Russia",
    "651 Brannan St\n San Francisco, CA 94107\n USA",
    "Chaussée de Tervuren 198A\n 1410 Waterloo\n Belgium",
    "63 Market St\n Santa Monica, CA 90405\n USA",
    "Friedrichstraße 165\n 10117 Berlin\n Germany",
    "1700 Mission St\n San Francisco, CA 94103\n USA",
    "350 Townsend St\n San Francisco, CA 94107\n USA",
    "1355 Market St\n San Francisco, CA 94103\n USA",
    "34 Jabotinsky St\n Ramat Gan\n Israel",
    "Moskovskaya St 19\n St Petersburg\n Russia",
    "Tencent Building, Kejizhongyi Avenue\n Nanshan District, Shenzhen\n China",
    "1601 Willow Rd\n Menlo Park CA 94025\n USA",
    "901 Cherry Ave\n San Bruno, CA 94066\n USA",
]

let descriptionsArray: [String] = [
    "Facebook is a social media platform that allows users to connect with friends and family, join or create interest groups, and share photos, videos, and status updates. It was launched in 2004 and has since become one of the largest social networks in the world, with over 2.7 billion monthly active users.",
    
    "Instagram is a photo and video-sharing social networking service. It allows users to share pictures and videos either publicly or privately to followers. It was launched in 2010 and has since grown to over 1 billion monthly active users. It also offers features such as filters, hashtags, and stories to enhance the sharing experience.",
    
    "LinkedIn is a professional networking platform. It allows users to create a profile, connect with other professionals, and search for job opportunities. It was founded in 2002 and has since become the largest professional network in the world, with over 700 million users in over 200 countries. It is also a platform for companies to showcase their brand and post job listings.",
    
    "Mail.ru is a Russian internet company that operates one of the largest email services in Russia, as well as a variety of other internet services such as social networks, online games, e-commerce sites, and more. It was founded in 1998 and is headquartered in Moscow, Russia. It has over 100 million registered users and is one of the largest internet companies in Russia and the CIS region.",
    
    "Messenger is a free instant messaging app developed by Facebook. It allows users to send text messages, make voice and video calls, and share photos and videos with friends and family.",
    
    "Odnoklassniki (OK.ru) is a social network service based in Russia. It allows users to connect with friends, join interest-based groups, play games, and share photos and videos. It was launched in 2006 and is one of the largest social networks in Russia and the CIS region.",
    
    "Pinterest is a social media and visual discovery platform that allows users to save and share ideas and inspiration for a wide range of topics, including cooking, fashion, home decor, travel, and more. It was founded in 2010",
    
    "Skype is a communication platform that provides voice and video calls, instant messaging, and file sharing capabilities. It was founded in 2003 and was later acquired by Microsoft in 2011. Skype is widely used for personal and business communication, offering users the ability to connect with friends, family, and colleagues from anywhere in the world.",
    
    "Snapchat is a multimedia messaging app that allows users to send and receive snaps, which are photos or videos that disappear after being viewed. It also includes features like filters, lenses, and stories. Snapchat was founded in 2011.",
    
    "Telegram is a cloud-based instant messaging app that offers encrypted messaging, voice and video calls, and file sharing capabilities. It was founded in 2013 and is headquartered in Berlin, Germany. Telegram is known for its focus on privacy and security, as well as its fast and user-friendly interface.",
    
    "TikTok is a social media platform for creating and sharing short-form videos. It was initially launched in 2016 under the name Douyin in China, and later became popular globally as TikTok. The app allows users to create and edit videos with music, special effects, and filters, and share them with their followers.",
    
    "Twitch is a live streaming platform that primarily focuses on video game streaming, but also includes other categories such as music, talk shows, and creative content. Twitch was founded in 2011 and was acquired by Amazon in 2014. It has become one of the largest live streaming platforms in the world, with millions of daily active users.",
    
    "Twitter is a microblogging platform that allows users to post and share short messages, called tweets, with their followers. It was founded in 2006 and has since become one of the largest and most influential social media platforms in the world. Twitter is known for its real-time updates, wide reach, and role in breaking news and shaping public discourse.",
    
    "Viber is a cross-platform instant messaging and voice over IP (VoIP) app that allows users to send text messages, make voice and video calls, and share media files. It was founded in 2010 and is available on multiple platforms including iOS, Android, and desktop. Viber is known for its end-to-end encryption and the ability to make calls without a cellular network.",
    
    "VK, also known as VKontakte, is a social network service based in Russia. It was founded in 2006 and has since become one of the largest social media platforms in the Russian-speaking world. VK allows users to create a profile, connect with friends, and share content such as photos, videos, and music. It also includes features like messaging, groups, and events.",
    
    "WeChat is a multi-purpose messaging, social media, and mobile payment app developed and owned by Tencent, a Chinese multinational conglomerate. It was first released in 2011 and has since become one of the largest social media platforms in China, with over a billion monthly active users. In addition to messaging and social media features, WeChat also offers services like mobile payment, e-commerce, and more.",
    
    "WhatsApp is a popular cross-platform instant messaging app that allows users to send text messages, voice messages, and make voice and video calls. It was acquired by Facebook in 2014 and has since become one of the most widely used messaging apps in the world, with over two billion monthly active users.",
    
    "YouTube is a video-sharing platform owned by Google, where users can upload, share and view videos. It has become one of the largest platforms for video content, with billions of videos watched daily. YouTube also offers features such as channels, playlists, and commenting, making it a social media platform as well.",
]

let models: [Model] = [
    Model(id: 1, name: "Facebook", imageName: "Facebook", coordinates: coordinatesArray[0], adress: adressesArray[0], state: statesArray[0], description:  descriptionsArray[0]),
    Model(id: 2, name: "Instagram", imageName: "Instagram", coordinates: coordinatesArray[1], adress: adressesArray[1], state: statesArray[1], description:  descriptionsArray[1]),
    Model(id: 3, name: "LinkedIn", imageName: "LinkedIn", coordinates: coordinatesArray[2], adress: adressesArray[2], state: statesArray[2], description:  descriptionsArray[2]),
    Model(id: 4, name: "Mail.ru", imageName: "Mail.ru", coordinates: coordinatesArray[3], adress: adressesArray[3], state: statesArray[3], description:  descriptionsArray[3]),
    Model(id: 5, name: "Messenger", imageName: "Messenger", coordinates: coordinatesArray[4], adress: adressesArray[4], state: statesArray[4], description:  descriptionsArray[4]),
    Model(id: 6, name: "Ok", imageName: "Ok", coordinates: coordinatesArray[5], adress: adressesArray[5], state: statesArray[5], description:  descriptionsArray[5]),
    Model(id: 7, name: "Pinterest", imageName: "Pinterest", coordinates: coordinatesArray[6], adress: adressesArray[6], state: statesArray[6], description:  descriptionsArray[6]),
    Model(id: 8, name: "Skype", imageName: "Skype", coordinates: coordinatesArray[7], adress: adressesArray[7], state: statesArray[7], description:  descriptionsArray[7]),
    Model(id: 9, name: "Snapchat", imageName: "Snapchat", coordinates: coordinatesArray[8], adress: adressesArray[8], state: statesArray[8], description:  descriptionsArray[8]),
    Model(id: 10, name: "Telegram", imageName: "Telegram", coordinates: coordinatesArray[9], adress: adressesArray[9], state: statesArray[9], description:  descriptionsArray[9]),
    Model(id: 11, name: "TikTok", imageName: "TikTok", coordinates: coordinatesArray[10], adress: adressesArray[10], state: statesArray[10], description:  descriptionsArray[10]),
    Model(id: 12, name: "Twitch", imageName: "Twitch", coordinates: coordinatesArray[11], adress: adressesArray[11], state: statesArray[11], description:  descriptionsArray[11]),
    Model(id: 13, name: "Twitter", imageName: "Twitter", coordinates: coordinatesArray[12], adress: adressesArray[12], state: statesArray[12], description:  descriptionsArray[12]),
    Model(id: 14, name: "Viber", imageName: "Viber", coordinates: coordinatesArray[13], adress: adressesArray[13], state: statesArray[13], description:  descriptionsArray[13]),
    Model(id: 15, name: "VK", imageName: "VK", coordinates: coordinatesArray[14], adress: adressesArray[14], state: statesArray[14], description:  descriptionsArray[14]),
    Model(id: 16, name: "WeChat", imageName: "WeChat", coordinates: coordinatesArray[15], adress: adressesArray[15], state: statesArray[15], description:  descriptionsArray[15]),
    Model(id: 17, name: "WhatsApp", imageName: "WhatsApp", coordinates: coordinatesArray[16], adress: adressesArray[16], state: statesArray[16], description:  descriptionsArray[16]),
    Model(id: 18, name: "YouTube", imageName: "YouTube", coordinates: coordinatesArray[17], adress: adressesArray[17], state: statesArray[17], description:  descriptionsArray[17]),
]


