import 'package:feed/page/zhihu/bean/zhihu_entity.dart';

zhihuEntityFromJson(ZhihuEntity data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['styleType'] != null) {
		data.styleType = json['styleType']?.toString();
	}
	if (json['id'] != null) {
		data.id = json['id']?.toString();
	}
	if (json['cardId'] != null) {
		data.cardId = json['cardId']?.toString();
	}
	if (json['feedSpecific'] != null) {
		data.feedSpecific = new ZhihuFeedSpecific().fromJson(json['feedSpecific']);
	}
	if (json['target'] != null) {
		data.target = new ZhihuTarget().fromJson(json['target']);
	}
	if (json['attachedInfo'] != null) {
		data.attachedInfo = json['attachedInfo']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuEntityToJson(ZhihuEntity entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['styleType'] = entity.styleType;
	data['id'] = entity.id;
	data['cardId'] = entity.cardId;
	if (entity.feedSpecific != null) {
		data['feedSpecific'] = entity.feedSpecific.toJson();
	}
	if (entity.target != null) {
		data['target'] = entity.target.toJson();
	}
	data['attachedInfo'] = entity.attachedInfo;
	return data;
}

zhihuFeedSpecificFromJson(ZhihuFeedSpecific data, Map<String, dynamic> json) {
	if (json['answerCount'] != null) {
		data.answerCount = json['answerCount']?.toDouble();
	}
	return data;
}

Map<String, dynamic> zhihuFeedSpecificToJson(ZhihuFeedSpecific entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['answerCount'] = entity.answerCount;
	return data;
}

zhihuTargetFromJson(ZhihuTarget data, Map<String, dynamic> json) {
	if (json['titleArea'] != null) {
		data.titleArea = new ZhihuTargetTitleArea().fromJson(json['titleArea']);
	}
	if (json['excerptArea'] != null) {
		data.excerptArea = new ZhihuTargetExcerptArea().fromJson(json['excerptArea']);
	}
	if (json['imageArea'] != null) {
		data.imageArea = new ZhihuTargetImageArea().fromJson(json['imageArea']);
	}
	if (json['metricsArea'] != null) {
		data.metricsArea = new ZhihuTargetMetricsArea().fromJson(json['metricsArea']);
	}
	if (json['labelArea'] != null) {
		data.labelArea = new ZhihuTargetLabelArea().fromJson(json['labelArea']);
	}
	if (json['link'] != null) {
		data.link = new ZhihuTargetLink().fromJson(json['link']);
	}
	return data;
}

Map<String, dynamic> zhihuTargetToJson(ZhihuTarget entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	if (entity.titleArea != null) {
		data['titleArea'] = entity.titleArea.toJson();
	}
	if (entity.excerptArea != null) {
		data['excerptArea'] = entity.excerptArea.toJson();
	}
	if (entity.imageArea != null) {
		data['imageArea'] = entity.imageArea.toJson();
	}
	if (entity.metricsArea != null) {
		data['metricsArea'] = entity.metricsArea.toJson();
	}
	if (entity.labelArea != null) {
		data['labelArea'] = entity.labelArea.toJson();
	}
	if (entity.link != null) {
		data['link'] = entity.link.toJson();
	}
	return data;
}

zhihuTargetTitleAreaFromJson(ZhihuTargetTitleArea data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetTitleAreaToJson(ZhihuTargetTitleArea entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	return data;
}

zhihuTargetExcerptAreaFromJson(ZhihuTargetExcerptArea data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetExcerptAreaToJson(ZhihuTargetExcerptArea entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	return data;
}

zhihuTargetImageAreaFromJson(ZhihuTargetImageArea data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetImageAreaToJson(ZhihuTargetImageArea entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	return data;
}

zhihuTargetMetricsAreaFromJson(ZhihuTargetMetricsArea data, Map<String, dynamic> json) {
	if (json['text'] != null) {
		data.text = json['text']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetMetricsAreaToJson(ZhihuTargetMetricsArea entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['text'] = entity.text;
	return data;
}

zhihuTargetLabelAreaFromJson(ZhihuTargetLabelArea data, Map<String, dynamic> json) {
	if (json['type'] != null) {
		data.type = json['type']?.toString();
	}
	if (json['trend'] != null) {
		data.trend = json['trend']?.toDouble();
	}
	if (json['nightColor'] != null) {
		data.nightColor = json['nightColor']?.toString();
	}
	if (json['normalColor'] != null) {
		data.normalColor = json['normalColor']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetLabelAreaToJson(ZhihuTargetLabelArea entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['type'] = entity.type;
	data['trend'] = entity.trend;
	data['nightColor'] = entity.nightColor;
	data['normalColor'] = entity.normalColor;
	return data;
}

zhihuTargetLinkFromJson(ZhihuTargetLink data, Map<String, dynamic> json) {
	if (json['url'] != null) {
		data.url = json['url']?.toString();
	}
	return data;
}

Map<String, dynamic> zhihuTargetLinkToJson(ZhihuTargetLink entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['url'] = entity.url;
	return data;
}