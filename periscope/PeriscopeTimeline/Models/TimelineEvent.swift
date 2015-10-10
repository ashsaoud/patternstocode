//
//  TimelineEvent.swift
//  PeriscopeTimeline
//
//  Created by Christopher Pilcher on 9/10/15.
//  Copyright © 2015 Christopher Pilcher. All rights reserved.
//

import UIKit

class TimelineEvent {

  private(set) var timelineImage: UIImage!
  private(set) var title: String
  private(set) var location: String
  private(set) var username: String
  private(set) var avatarImage: UIImage!
  private(set) var liveCount: String

  init(timelineImageName: String, title: String, location: String, username: String, avatarImageName: String, liveCount: String) {
    self.timelineImage = UIImage(named: timelineImageName)
    self.title = title
    self.location = location
    self.username = username
    self.avatarImage = UIImage(named: avatarImageName)
    self.liveCount = liveCount
  }
}