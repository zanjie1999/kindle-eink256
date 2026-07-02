.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsSectionHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchAttemptMetricsSectionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchAttemptMetricsSectionHandler.kt\ncom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,115:1\n1#2:116\n*E\n"
.end annotation


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 3

    .line 101
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 102
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 103
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTION_NAME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getSectionName()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 104
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getSectionPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 105
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getTotalFound()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_WIDGET:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->isWidget()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 107
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->OUTCOME_SEQ_NUM:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getOutcomeSeqNum()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 110
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;->getWidgetId()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WIDGET_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 112
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "payloadBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final prepareSearchAttemptSectionRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Ljava/util/List;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/2addr v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_1

    const/4 v2, 0x1

    .line 56
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    move/from16 v21, v5

    const/4 v13, 0x1

    goto :goto_3

    :cond_3
    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x1

    :goto_2
    move v13, v5

    const/16 v21, 0x1

    :goto_3
    if-eqz v1, :cond_5

    .line 66
    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;

    .line 67
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v7

    .line 68
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v8

    .line 69
    sget-object v9, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 70
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    .line 72
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcomeSeqNum()I

    move-result v14

    const/16 v15, 0x18

    const/16 v16, 0x0

    move-object v6, v1

    .line 66
    invoke-direct/range {v6 .. v16}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;ZLjava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    .line 79
    new-instance v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;

    .line 80
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v15

    .line 81
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v16

    .line 82
    sget-object v17, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    const/16 v18, 0x0

    const/16 v19, 0x0

    .line 83
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v20

    .line 85
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcomeSeqNum()I

    move-result v22

    const/16 v23, 0x18

    const/16 v24, 0x0

    move-object v14, v1

    .line 79
    invoke-direct/range {v14 .. v24}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;ZLjava/lang/String;IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    return-object v0
.end method


# virtual methods
.method public submitRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)V
    .locals 5

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;->prepareSearchAttemptSectionRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Ljava/util/List;

    move-result-object p1

    .line 21
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num of Section to FM: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;

    .line 23
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Section to FM:  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v3, "kindle_app_search_event_section"

    .line 26
    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v3

    const-string v4, "fastMetrics.getPayloadBu\u2026                        )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, v3, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandler;->buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    .line 24
    invoke-interface {v2, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    const-string v1, "No Implementation of fast metrics found for search %id"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
