.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsOutcomeHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchAttemptMetricsOutcomeHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchAttemptMetricsOutcomeHandler.kt\ncom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,178:1\n1#2:179\n*E\n"
.end annotation


# instance fields
.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    return-void
.end method

.method private final buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 3

    .line 136
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 137
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 138
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->OUTCOME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getOutcome()Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->getMetricEmitName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->OUTCOME_SEQ_NUM:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getOutcomeSequenceNum()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_STORE_RESULT:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getTotalStoreResults()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 143
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getItemValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_VALUE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 144
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getItemType()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 145
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getItemPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 146
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getItemSectionPosition()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_SECTION_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 147
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->getSectionShown()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTIONS_SHOWN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 148
    :cond_4
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "payloadBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final getSectionShownString(II)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "|"

    if-ge p2, p1, :cond_0

    if-eqz p2, :cond_0

    .line 160
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    if-ge p1, p2, :cond_1

    if-eqz p1, :cond_1

    .line 165
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    if-eqz p1, :cond_2

    .line 170
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-eqz p2, :cond_3

    .line 173
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private final prepareOutcomeRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;
    .locals 12

    .line 53
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcome()Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v7, :cond_d

    .line 54
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v9

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 55
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v9

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 61
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/debug/InlineSearchSuggestionsWithCXUpdateDebugUtils;->isInlineSearchSuggestionsWithCXUpdateEnabled()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_1
    move v10, v0

    move v11, v1

    .line 66
    invoke-direct {p0, v10, v11}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->getSectionShownString(II)Ljava/lang/String;

    move-result-object v5

    .line 69
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->Companion:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;

    .line 70
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    .line 71
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcomeSeqNum()I

    move-result v4

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getTotalStoreResults()I

    move-result v6

    move-object v3, v7

    .line 69
    invoke-virtual/range {v0 .. v6}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome$Companion;->initialize(Ljava/util/UUID;Ljava/util/UUID;Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;ILjava/lang/String;I)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;

    move-result-object v0

    .line 79
    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->isStoreOutcome()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 80
    sget-object v1, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->STORE_SEE_MORE:Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    if-ne v7, v1, :cond_4

    .line 81
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemSectionPosition(Ljava/lang/Integer;)V

    .line 82
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->NON_ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemType(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;)V

    return-object v0

    .line 89
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSelectedPosition()I

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSelectedPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_5

    goto :goto_2

    .line 99
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSelectedPosition()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemValue(Ljava/lang/String;)V

    .line 100
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemSectionPosition(Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSelectedPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemPosition(Ljava/lang/Integer;)V

    .line 102
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemType(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;)V

    return-object v0

    .line 91
    :cond_6
    :goto_2
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_7

    .line 92
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    goto :goto_3

    .line 94
    :cond_7
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Store Position is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreSelectedPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", store length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_3
    return-object v8

    .line 105
    :cond_8
    invoke-virtual {v7}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->isLibraryOutcome()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibrarySelectedPosition()I

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibrarySelectedPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v1, v2, :cond_9

    goto :goto_4

    .line 114
    :cond_9
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibrarySelectedPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemPosition(Ljava/lang/Integer;)V

    .line 115
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibrarySelectedPosition()I

    move-result p1

    sub-int/2addr p1, v9

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/search/ContentResult;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 116
    invoke-interface {p1}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v8

    :cond_a
    invoke-virtual {v0, v8}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemValue(Ljava/lang/String;)V

    .line 117
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemSectionPosition(Ljava/lang/Integer;)V

    .line 118
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemType(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;)V

    return-object v0

    .line 111
    :cond_b
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Library Position is out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibrarySelectedPosition()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-object v8

    .line 122
    :cond_c
    sget-object p1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;->NON_ASIN:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;->setItemType(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$ItemType;)V

    return-object v0

    :cond_d
    return-object v8
.end method


# virtual methods
.method public submitRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)V
    .locals 4

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getOutcome()Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 25
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Handling outcome: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/LibrarySearchOutcome;->getMetricEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 28
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->prepareOutcomeRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 30
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Outcome to Log "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v2, "kindle_app_search_event_outcome"

    invoke-interface {v0, v2, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    const-string v1, "fastMetrics.getPayloadBu\u2026                        )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcome;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v0, p1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 41
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsOutcomeHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

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
    :goto_0
    return-void
.end method
