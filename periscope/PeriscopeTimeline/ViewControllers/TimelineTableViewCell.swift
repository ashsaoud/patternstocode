//
//  TimelineTableViewCell.swift
//  PeriscopeTimeline
//
//  Created by Christopher Pilcher on 9/10/15.
//  Copyright © 2015 Christopher Pilcher. All rights reserved.
//

import UIKit

class TimelineTableViewCell : UITableViewCell {

  @IBOutlet weak var backgroundImage: UIImageView!
  @IBOutlet weak var liveCount: UILabel!
  @IBOutlet weak var title: UILabel!
  @IBOutlet weak var location: UILabel!
  @IBOutlet weak var username: UILabel!
  @IBOutlet weak var avatarImage: UIImageView!

  func configure(timelineEvent: TimelineEvent) {
    backgroundImage.image = timelineEvent.timelineImage
    liveCount.text = timelineEvent.liveCount
    title.text = timelineEvent.title
    location.text = timelineEvent.location
    username.text = timelineEvent.username
    avatarImage.image = timelineEvent.avatarImage
  }
}
