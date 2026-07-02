.class public final Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;
.super Ljava/lang/Object;
.source "ClickstreamMetricsSearchAttributionHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/search/metrics/IClickstreamMetricsHandler;


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final buildClickstreamSearchAttributionInfoRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;
    .locals 20

    .line 70
    new-instance v19, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;

    move-object/from16 v0, v19

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getHitType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getTeamName()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getQueryId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSearchPage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getAliasOrIndex()Ljava/lang/String;

    move-result-object v7

    .line 73
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getKeywords()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getTotalFound()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getImpression()Ljava/util/List;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getPageType()Ljava/lang/String;

    move-result-object v11

    .line 74
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSubPageType()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSearchAttributionPageTypeId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRank()Ljava/lang/String;

    move-result-object v14

    .line 75
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSpellCorrection()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRefinements()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSearchPrefix()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getTabId()Ljava/lang/String;

    move-result-object v18

    .line 70
    invoke-direct/range {v0 .. v18}, Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v19
.end method

.method private final buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 3

    .line 87
    sget-object v0, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REQUEST_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 88
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->SESSION_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 89
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->REMOTE_ADDRESS:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getRemoteAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->USER_AGENT:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 91
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->LEGAL_ENTITY_ID:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getLegalEntityId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 92
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->STATUS_CODE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getStatusCode()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 93
    sget-object v1, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->INFO_LINE:Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/AggregatedClickstreamMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;->getInfo()Lcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 95
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "payloadBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final isValidRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Z
    .locals 1

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSessionId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getLegalEntityId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getStatusCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRemoteAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRefMarker()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSiteVariant()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getHitType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getTeamName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getQueryId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSearchPage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getAliasOrIndex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getKeywords()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 55
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getPageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSubPageType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSearchAttributionPageTypeId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final prepareClickstreamAttributionRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;
    .locals 9

    .line 61
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->buildClickstreamSearchAttributionInfoRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Lcom/amazon/kcp/search/metrics/ClickStreamSearchAttributionInfoRecord;

    move-result-object v7

    .line 63
    new-instance v8, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;

    .line 64
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRemoteAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getUserAgent()Ljava/lang/String;

    move-result-object v4

    .line 65
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getLegalEntityId()I

    move-result v5

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getStatusCode()I

    move-result v6

    move-object v0, v8

    .line 63
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/amazon/kcp/search/metrics/ClickStreamMetricsInfoRecord;)V

    return-object v8
.end method


# virtual methods
.method public submitRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)V
    .locals 4

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->isValidRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    invoke-static {}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    move-result-object p1

    const-string v0, "The input record does not contain valid data for all required fields for Clickstream search attribution metrics."

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->prepareClickstreamAttributionRecord(Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;)Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clickstream Search Attribution Record: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v2, "kindle_app_clickstream_attribution"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "fastMetrics.getPayloadBu\u2026VERSION\n                )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/ClickstreamAttributionRecord;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/search/metrics/ClickstreamMetricsSearchAttributionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/AggregatedClickStreamMetricsAttributionRecord;->getRequestId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No implementation of fast metrics found for request %id"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
