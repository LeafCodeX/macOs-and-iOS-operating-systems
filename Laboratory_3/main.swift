//
//  main.swift
//  Laboratory_3
//
//  Created by Marcin Bajkowski on 06/04/2024.
//

import Foundation

enum MediaType {
    case Video
    case Music
    case Shorts
    case MusicVideo
}

struct MediaData {
    let title: String
    let duration: Int
    let uploadDate: Date
}

struct Media {
    let id: String
    let metadata: MediaData
    let type: MediaType
    var views: Int
    var likes: Int
    var comments: Int
}

class YouTubeChannel {
    let id: String
    let name: String
    var subscribers: Int
    var media: [Media]
    
    init(id: String, name: String, subscribers: Int) {
        self.id = id
        self.name = name
        self.subscribers = subscribers
        self.media = []
    }
    
    func printFeed() {
        let formattedSubscribers = formatNumber(subscribers)
        print("=-=-=-=-=-=-= Channel name: \(self.name) =-= Subscriptions: \(formattedSubscribers) =-=-=-=-=-=-=")
        
        for (index, media) in self.media.enumerated() {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd.MM.yyyy"
            let formattedDate = dateFormatter.string(from: media.metadata.uploadDate)
            
            let formattedLikes = formatNumber(media.likes)
            let formattedViews = formatNumber(media.views)
            let formattedComments = formatNumber(media.comments)
            let formattedDuration = formatDuration(media.metadata.duration)
            
            print("[MEDIA NUMBER: \(index + 1)]")
            print(">> Title: \(media.metadata.title),")
            print(">> Duration: \(formattedDuration),")
            print(">> Upload Date: \(formattedDate)r.,")
            print(">> Number of likes: \(formattedLikes),")
            print(">> Views: \(formattedViews),")
            print(">> Comments: \(formattedComments),")
            print(">> Media type: \(media.type).")
            print("")
        }
    }
    
    func formatNumber(_ number: Int) -> String {
        if number >= 1000 && number < 1000000 {
            return String(format: "%.1fk", Double(number)/1000.0)
        } else if number >= 1000000 {
            return String(format: "%.1fm", Double(number)/1000000.0)
        } else {
            return "\(number)"
        }
    }
    
    func formatDuration(_ duration: Int) -> String {
        let hours = duration / 3600
        let minutes = (duration % 3600) / 60
        let seconds = (duration % 3600) % 60
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}

let dateFormatter = DateFormatter()
dateFormatter.dateFormat = "dd.MM.yyyy"

if let date1 = dateFormatter.date(from: "09.03.2018"), let date2 = dateFormatter.date(from: "23.07.2018"), let date3 = dateFormatter.date(from: "10.11.2023") {
    let channelsData = [
        ("001", "Olympics", 11300000, [
            ("Yuzuru Hanyu (JPN) - Gold Medal, Men's Figure Skating, PyeongChang 2018", 560, MediaType.Video, 34772682, 814703, 22003, date1),
            ("Yuzuru Hanyu performs to Chopin's Ballade No 1 at PyeongChang 2018", 422, MediaType.Video, 7335402, 160042, 4158, date2)
        ]),
        ("002", "Dua Lipa", 23300000, [
            ("Dua Lipa - Houdini (Official Music Video)", 188, MediaType.MusicVideo, 103903853, 1152222, 419333, date3)
        ])
    ]

    for (channelId, channelName, channelSubscribers, mediaData) in channelsData {
        let channel = YouTubeChannel(id: channelId, name: channelName, subscribers: channelSubscribers)
        
        for (mediaTitle, mediaDuration, mediaType, mediaViews, mediaLikes, mediaComments, mediaUploadDate) in mediaData {
            let mediaData = MediaData(title: mediaTitle, duration: mediaDuration, uploadDate: mediaUploadDate)
            let media = Media(id: channelId, metadata: mediaData, type: mediaType, views: mediaViews, likes: mediaLikes, comments: mediaComments)
            
            channel.media.append(media)
        }
        
        channel.printFeed()
    }
}
