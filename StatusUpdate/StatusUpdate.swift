//
//  StatusUpdate.swift
//  StatusUpdate
//
//  Created by Corry Handayani on 9/9/21.
//  Copyright © 2021 Corry Handayani. All rights reserved.
//
// USING INTENTS - when creating new widget file, please check mark the option for intents configurations to avoid issues with XCode Versions

// USING TARGET MEMBERSHIP - to share files ( only one side is required, not the widget side)

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
    func category(for configuration: ConfigurationIntent) -> UpdateCategory{
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
   // let category: UpdateCategory
}

struct StatusUpdateEntryView : View {
   let entry: Provider.Entry
    let category: Configuration
    
    var body: some View {
        VStack {
            StatusView(category: entry.configuration.configuration)
        }
        .padding()
    
    }
}
struct StatusView: View {

    let category: Configuration

    var body: some View {
        switch category {
        case .inoffice:

            VStack(alignment: .leading,spacing: 0){
                VStack(alignment: .leading){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 20)
                     

                    Text("In Office")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                        
           
                       
                    Image("Avatar-in-office")
                        .padding(.top,12)
                    
                }
                .padding()
            }
            .FramePadding()
            .Green()
          
          

        case .businesstrip:
            
            VStack(alignment: .leading,spacing: 0) {
                Text("WORKING STATUS")
                    .font(.system(size: 10))
                  .padding(.bottom, 7)

                Text("Business Trip")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
       
                   
                Image("Avatar-business-trip")
                    .padding(.top,12)
                
            }
            .padding()
            .FramePadding()
            .Cyan()
   
        case .remote:
                
            VStack(alignment: .leading,spacing: 0){
                VStack(alignment: .leading){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)


                    Text("Remote")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)



                    Image("Avatar-remote")
                        .padding(.top,12)

                }
                .padding()
            }

            .FramePadding()
            .Blue()

            
            
        case .onleave:
                
            VStack(alignment: .leading,spacing: 0){
                VStack(alignment: .leading){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)

                    Text("On leave")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

                    Image("Avatar-on-leave")
                        .padding(.top,12)
                }
                .padding()
            }

            .FramePadding()
            .Black()
        
                
       
            
        case .sick:
    
            VStack(alignment: .leading,spacing: 0){
                VStack(alignment: .leading){
                    Text("WORKING STATUS")
                        .font(.system(size: 10))
                      .padding(.bottom, 7)


                    Text("Sick")
                        .font(.system(size: 24))
                        .fontWeight(.semibold)
                        .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)



                    Image("Avatar-sick")
                        .padding(.top,12)

                }
                .padding()

            }

            .FramePadding()
            .Peach()
        
   
            
        case .notworking:
                
            VStack(alignment: .leading,spacing: 0){
                Text("WORKING STATUS")
                    .font(.system(size: 10))
                  .padding(.bottom, 7)

                Text("Not working")
                    .font(.system(size: 24))
                    .fontWeight(.semibold)
                    .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
       
                Image("Avatar-not-working")
                    .padding(.top,12)
                
            }
            .padding()
            .FramePadding()
            .Magenta()
            
        
            
            
        //unknown = 0
        // inoffice = 1
        // to adjust rendering widget here
        case .unknown:
            
                VStack(alignment: .leading,spacing: 0){
                    VStack(alignment: .leading){
                        Text("WORKING STATUS")
                          .font(.system(size: 10))
                          .padding(.bottom, 7)


                        Text("Remote")
                            .font(.system(size: 24))
                            .fontWeight(.semibold)
                            .fixedSize(horizontal: false, vertical: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)

                        Image("Avatar-remote")
                            .padding(.top,12)

                    }
                    .padding()
                }

                .FramePadding()
                .Blue()
            
                
            
        }
    }
}


@main
struct StatusUpdate: Widget {
    let kind: String = "StatusUpdate"
    
    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            StatusUpdateEntryView(entry: entry, category: Configuration.inoffice)
        }
        .configurationDisplayName("Smart App Widget")
        .description("Update Your Status")
    }
}


struct StatusUpdate_Previews: PreviewProvider {
    static var previews: some View {
        StatusUpdateEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()), category: Configuration.inoffice)
            .previewContext(WidgetPreviewContext(family: .systemSmall))
    }
    
}
