//
//  StatusUpdate.swift
//  StatusUpdate
//
//  Created by Corry Handayani on 9/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }
    
    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }
    func category(for configuration: ConfigurationIntent) -> UpdateCategory {
        switch configuration.configuration {
        case .inoffice:
            return .inoffice
        case .businesstrip:
            return .businesstrip
        case .remote:
            return .remote
        case .onleave:
            return .onleave
        case .sick:
            return .sick
        case .notworking:
            return .notworking
        default:
            return .inoffice
        }
    }
    
    public enum UpdateCategory: Int {
        case inoffice = 1
        case businesstrip
        case remote
        case onleave
        case sick
        case notworking
        
        func description() ->  String {
            switch self {
            case.inoffice:
                return "inoffice"
                
            case .businesstrip:
                return "businesstrip"
                
            case .remote:
                return "remote"
                
            case .onleave:
                return "onleave"
                
            case .sick:
                return "sick"
                
            case .notworking:
                return "notworking"
            }
            
        }
        
        
    }
    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []
        
        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }
        
        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct PlaceholderView: View {
    var body: some View {
        Text("Loading...").redacted(reason: .placeholder)
    }
}
struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct StatusUpdateEntryView : View {
    var entry: Provider.Entry
    
    var body: some View {
        VStack {
          
        }
    }
}

//struct StatusView: View {
//
// let category: ConfigurationIntent
//
//    var body: some View {
//        switch category {
//
//        case .inoffice: {
//            ZStack {
//                Color.blue.opacity(<#T##opacity: Double##Double#>)
//            }
//        }
//
//        }
//    }
//}


@main
struct StatusUpdate: Widget {
    let kind: String = "StatusUpdate"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            StatusUpdateEntryView(entry: entry)
        }
        .configurationDisplayName("My Widget")
        .description("This is an example widget.")
    }
}

struct StatusUpdate_Previews: PreviewProvider {
    static var previews: some View {
        StatusUpdateEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
}
