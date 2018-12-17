class TopicListData {
  const TopicListData({
    this.global,
    this.forum,
    this.rows,
    this.topicList,
    this.currentRows,
    this.topicRows,
    this.rRows,
  });

  final dynamic global;
  final dynamic forum;
  final int rows;
  final Map<String, Topic> topicList;
  final int currentRows;
  final int topicRows;
  final int rRows;

  factory TopicListData.fromJson(Map<String, dynamic> map) {
    return TopicListData(
      global: map["__GLOBAL"],
      forum: map["__F"],
      rows: map["__ROWS"],
      topicList: map["__T"],
      currentRows: map["__T__ROWS"],
      topicRows: map["__T__ROWS__PAGE"],
      rRows: map["__R__ROWS_PAGE"],
    );
  }
}

class Topic {
  const Topic({
    this.tid,
    this.fid,
    this.tpcurl,
    this.quoteFrom,
    this.quoteTo,
    this.author,
    this.subject,
    this.icon,
    this.postDate,
    this.lastPoster,
    this.lastPost,
    this.lastModify,
    this.recommend,
    this.authorId,
    this.type,
    this.replies,
    this.topicMisc,
    this.parent,
  });

  final int tid;
  final int fid;
  final String tpcurl;
  final int quoteFrom;
  final int quoteTo;
  final String author;
  final dynamic authorId; // 匿名时为 String，非匿名时为 Int
  final String subject;
  final int icon;
  final int postDate;
  final dynamic lastPoster; // 也可能匿名
  final int lastPost;
  final int lastModify;
  final int recommend;
  final int type;
  final int replies;
  final int topicMisc;

  final TopicParent parent;

  factory Topic.fromJson(Map<String, dynamic> map) {
    return Topic(
      tid: map["tid"],
      fid: map["fid"],
      tpcurl: map["tpcurl"],
      quoteFrom: map["quote_from"],
      quoteTo: map["quote_to"],
      author: map["author"],
      authorId: map["authorid"],
      subject: map["subject"],
      icon: map["icon"],
      postDate: map["postdate"],
      lastPoster: map["lastposter"],
      lastPost: map["lastpost"],
      lastModify: map["lastmodify"],
      recommend: map["recommend"],
      type: map["type"],
      replies: map["replies"],
      topicMisc: map["topic_misc"],
      parent: map["parent"],
    );
  }
}

class TopicParent {
  const TopicParent(this.name);

  final String name;

  factory TopicParent.fromJson(Map<String, dynamic> map) {
    return TopicParent(map["2"]);
  }
}