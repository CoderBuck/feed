import 'package:feed/generated/json/base/json_convert_content.dart';

class ZhihuEntity with JsonConvert<ZhihuEntity> {
	String type;
	String styleType;
	String id;
	String cardId;
	ZhihuFeedSpecific feedSpecific;
	ZhihuTarget target;
	String attachedInfo;
}

class ZhihuFeedSpecific with JsonConvert<ZhihuFeedSpecific> {
	double answerCount;
}

class ZhihuTarget with JsonConvert<ZhihuTarget> {
	ZhihuTargetTitleArea titleArea;
	ZhihuTargetExcerptArea excerptArea;
	ZhihuTargetImageArea imageArea;
	ZhihuTargetMetricsArea metricsArea;
	ZhihuTargetLabelArea labelArea;
	ZhihuTargetLink link;
}

class ZhihuTargetTitleArea with JsonConvert<ZhihuTargetTitleArea> {
	String text;
}

class ZhihuTargetExcerptArea with JsonConvert<ZhihuTargetExcerptArea> {
	String text;
}

class ZhihuTargetImageArea with JsonConvert<ZhihuTargetImageArea> {
	String url;
}

class ZhihuTargetMetricsArea with JsonConvert<ZhihuTargetMetricsArea> {
	String text;
}

class ZhihuTargetLabelArea with JsonConvert<ZhihuTargetLabelArea> {
	String type;
	double trend;
	String nightColor;
	String normalColor;
}

class ZhihuTargetLink with JsonConvert<ZhihuTargetLink> {
	String url;
}
