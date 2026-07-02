.class public final Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;
.super Ljava/lang/Object;
.source "SearchAttemptMetricsSectionAsinHandler.kt"

# interfaces
.implements Lcom/amazon/kcp/search/metrics/ISearchMetricsHandler;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchAttemptMetricsSectionAsinHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchAttemptMetricsSectionAsinHandler.kt\ncom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,232:1\n1#2:233\n*E\n"
.end annotation


# instance fields
.field private final customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

.field private final fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    .line 29
    const-class v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    iput-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    return-void
.end method

.method private final buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;
    .locals 3

    .line 207
    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 208
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SEARCH_SESSION_ID:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 209
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->SECTION_NAME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getSectionName()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->getEmitName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_POSITION:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getItemPosition()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 213
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getBookType()Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->BOOK_TYPE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 214
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getItemValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->ITEM_VALUE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addString(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 215
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getHasImage()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->HAS_IMAGE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 216
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getWasPrimeBadgeShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_PRIME:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 217
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getWasKindleUnlimitedBadgeShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_KU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 218
    :cond_4
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getWasComixBadgeShown()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_CU:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 219
    :cond_5
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getReviewStars()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    sget-object v2, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->REVIEW_STARS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addDouble(Ljava/lang/String;D)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 220
    :cond_6
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getTotalReview()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->TOTAL_REVIEW:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 221
    :cond_7
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getPrice()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    sget-object v2, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->PRICE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 222
    :cond_8
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getWasAvailable()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WAS_AVAILABLE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 223
    :cond_9
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getReadProgress()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->READ_PROGRESS:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 224
    :cond_a
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getWasDownloaded()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->WAS_DOWNLOADED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 225
    :cond_b
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getFileSize()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->FILE_SIZE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addInteger(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 226
    :cond_c
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->isSeries()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    sget-object v1, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->IS_SERIES:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addBoolean(Ljava/lang/String;Z)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 227
    :cond_d
    invoke-virtual {p2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;->getLastAccessed()Ljava/util/Date;

    move-result-object p2

    if-eqz p2, :cond_e

    sget-object v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->LAST_ACCESSED:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsKeyNames;->getEmitName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-interface {p1, v0, v1, v2}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->addLong(Ljava/lang/String;J)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    .line 229
    :cond_e
    invoke-interface {p1}, Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;->build()Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object p1

    const-string p2, "payloadBuilder.build()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final prepareAsinRecords(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;",
            ">;"
        }
    .end annotation

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 60
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryResults()Ljava/util/List;

    move-result-object v1

    .line 61
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreResults()Ljava/util/List;

    move-result-object v2

    if-eqz v1, :cond_0

    .line 65
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryProcessPosition()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 68
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getLibraryProcessPosition()I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    if-ge v3, v4, :cond_0

    .line 69
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/search/ContentResult;

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, v5, v3, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->transformLibraryItem(Lcom/amazon/kcp/search/ContentResult;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_1

    .line 75
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreProcessPosition()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 78
    invoke-virtual {p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getStoreProcessPosition()I

    move-result v1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    :goto_1
    if-ge v1, v3, :cond_1

    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/search/store/StoreContentMetadata;

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v4, v1, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->transformStoreItem(Lcom/amazon/kcp/search/store/StoreContentMetadata;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private final transformLibraryItem(Lcom/amazon/kcp/search/ContentResult;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 98
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 105
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v3

    .line 106
    iget-object v4, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    const/4 v5, 0x1

    .line 108
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    .line 106
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    const-string v8, "item.libraryItem"

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->shouldShowSubscriptionBadge(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    iget-object v4, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v4}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasCUSubscription()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isCUOriginType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v15, v2

    move-object/from16 v16, v15

    move-object/from16 v26, v6

    goto :goto_2

    .line 109
    :cond_0
    iget-object v4, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v4}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasKUSubscription()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 110
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isKUOriginType(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    move-object v15, v2

    move-object/from16 v26, v15

    move-object/from16 v16, v6

    goto :goto_2

    .line 113
    :cond_2
    iget-object v4, v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->customerBenefits:Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;

    invoke-interface {v4}, Lcom/amazon/kcp/library/customerbenefits/ICustomerBenefits;->hasPrimeSubscription()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getLibraryItem()Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    invoke-static {v4, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/amazon/kcp/util/LibraryUtils;->isPrimeOriginType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    move-object v6, v2

    :goto_0
    move-object/from16 v16, v2

    move-object/from16 v26, v16

    move-object v15, v6

    goto :goto_2

    :cond_4
    if-nez v3, :cond_5

    move-object v15, v7

    goto :goto_1

    :cond_5
    move-object v15, v2

    :goto_1
    move-object/from16 v16, v15

    move-object/from16 v26, v16

    :goto_2
    if-eqz v3, :cond_6

    .line 125
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getLastAccessed()Ljava/util/Date;

    move-result-object v2

    goto :goto_3

    :cond_6
    move-object v2, v7

    :goto_3
    if-eqz v2, :cond_7

    .line 128
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_4

    :cond_7
    move-object v4, v7

    :goto_4
    if-eqz v4, :cond_8

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-gez v4, :cond_8

    move-object/from16 v2, p1

    move-object/from16 v27, v7

    goto :goto_5

    :cond_8
    move-object/from16 v27, v2

    move-object/from16 v2, p1

    .line 132
    :goto_5
    instance-of v4, v2, Lcom/amazon/kcp/search/GroupContentResult;

    if-eqz v4, :cond_9

    .line 134
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    move-object/from16 v21, v7

    move-object/from16 v23, v21

    goto :goto_9

    .line 141
    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getMetadata()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 143
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/ContentResult;->getMetadata()Lcom/amazon/kindle/model/content/IListableBook;

    move-result-object v2

    const-string v4, "item.metadata"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    const-string v4, "item.metadata.bookType"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_6

    .line 146
    :cond_a
    sget-object v2, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    :goto_6
    if-eqz v3, :cond_b

    .line 148
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_b

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getReadingProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_7

    :cond_b
    move-object v4, v7

    :goto_7
    if-eqz v3, :cond_c

    .line 149
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    if-lez v6, :cond_c

    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getSize()J

    move-result-wide v8

    long-to-int v6, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_8

    :cond_c
    move-object v6, v7

    :goto_8
    move-object/from16 v21, v4

    move-object/from16 v23, v6

    .line 152
    :goto_9
    new-instance v4, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    .line 153
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v9

    .line 154
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v10

    if-eqz v3, :cond_d

    .line 155
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v6

    move-object v11, v6

    goto :goto_a

    :cond_d
    move-object v11, v7

    .line 157
    :goto_a
    sget-object v13, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->LIBRARY:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    if-eqz v3, :cond_e

    .line 161
    invoke-interface {v3}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->isLocal()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    :cond_e
    move-object/from16 v22, v7

    .line 163
    sget-object v3, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;->Name:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;

    invoke-virtual {v3, v2}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType$Name;->getBookTypeForLogging(Lcom/amazon/kcp/library/models/BookType;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;

    move-result-object v24

    .line 164
    sget-object v3, Lcom/amazon/kcp/library/models/BookType;->BT_SERIES_GROUP:Lcom/amazon/kcp/library/models/BookType;

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v25

    const/16 v28, 0xf20

    const/16 v29, 0x0

    move-object v8, v4

    move/from16 v12, p2

    .line 152
    invoke-direct/range {v8 .. v29}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v4
.end method

.method private final transformStoreItem(Lcom/amazon/kcp/search/store/StoreContentMetadata;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;
    .locals 23

    move/from16 v4, p2

    .line 182
    new-instance v22, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    move-object/from16 v0, v22

    .line 183
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchId()Ljava/util/UUID;

    move-result-object v1

    .line 184
    invoke-virtual/range {p3 .. p3}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;->getSearchSessionId()Ljava/util/UUID;

    move-result-object v2

    .line 185
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v3

    .line 187
    sget-object v5, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;->STORE:Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;

    .line 188
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getRating()F

    move-result v6

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    .line 189
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->getReviewCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/kcp/search/store/StoreContentMetadata;->isKU()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    const/4 v6, 0x0

    .line 191
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    move-object v7, v14

    move-object/from16 v18, v14

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const v20, 0x5dc20

    const/16 v21, 0x0

    .line 182
    invoke-direct/range {v0 .. v21}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;-><init>(Ljava/util/UUID;Ljava/util/UUID;Ljava/lang/String;ILcom/amazon/kcp/search/metrics/SearchAttemptMetricsSection$SectionName;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Integer;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsBookType;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/util/Date;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v22
.end method


# virtual methods
.method public submitRecord(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)V
    .locals 4

    const-string v0, "record"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 34
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->prepareAsinRecords(Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsRecord;)Ljava/util/List;

    move-result-object p1

    .line 35
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsinHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Num New Asin Records to FM: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;

    .line 37
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsinHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asin Record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    const-string v3, "kindle_app_search_event_section_asin"

    invoke-interface {v2, v3, v1}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->getPayloadBuilder(Ljava/lang/String;I)Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;

    move-result-object v2

    const-string v3, "fastMetrics.getPayloadBu\u2026                        )"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0, v2, v0}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->buildPayload(Lcom/amazon/kindle/fastmetrics/service/client/IPayloadBuilder;Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsin;)Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;

    move-result-object v0

    .line 45
    iget-object v2, p0, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsAsinHandler;->fastMetrics:Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;->record(Lcom/amazon/kindle/fastmetrics/service/provider/AbstractPayload;)V

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/search/metrics/SearchAttemptMetricsSectionAsinHandlerKt;->access$getLOG_TAG$p()Ljava/lang/String;

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
