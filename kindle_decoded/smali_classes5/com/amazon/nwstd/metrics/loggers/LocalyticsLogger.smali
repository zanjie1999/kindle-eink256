.class public Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;
.super Ljava/lang/Object;
.source "LocalyticsLogger.java"

# interfaces
.implements Lcom/amazon/nwstd/metrics/IMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;,
        Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;,
        Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;,
        Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LocalyticsLogger"


# instance fields
.field private final mCustomDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAttributes:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private final mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;)V
    .locals 8

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p3, :cond_0

    .line 319
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getLocalyticsParentAsinAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 322
    :cond_0
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    invoke-direct {v0, p1, p3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    .line 324
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    .line 325
    iput-object p2, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 328
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getIssueId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 329
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    sget-object p3, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {p3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->NORMAL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 334
    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getOriginType()Ljava/lang/String;

    move-result-object v4

    .line 336
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

    move-result-object p1

    const-string p3, "doc_sym_publication_id"

    invoke-interface {p1, p3}, Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;->getStringValueFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 337
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v6

    .line 338
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getVolumeLabel()Ljava/lang/String;

    move-result-object v7

    .line 332
    invoke-static/range {v2 .. v7}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    return-void
.end method

.method private checkAdAttributes(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 545
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 546
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 547
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 548
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 549
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 550
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 551
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkArticleAttributes(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 529
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 530
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 531
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 532
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 533
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 534
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 535
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 229
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "None"

    if-eqz v1, :cond_0

    move-object p2, v2

    .line 241
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p3, v2

    .line 249
    :cond_1
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p4, v2

    .line 257
    :cond_2
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p5, v2

    .line 263
    :cond_3
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getDebugID()Ljava/lang/String;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v1

    .line 270
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 273
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LocalyticsLogger ; create custom dimensions ;  CUSTOM_DIMENSION_0 : Issue id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_1 : Session id : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_2 : Subscriber Type : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_3 : Publication ID : "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_4 : Title "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_5 : Volume label "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_6 : Debug ID "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ; "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalyticsLogger"

    invoke-static {p1, v1, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 560
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 561
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not mapping unknow metrics attribute "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 659
    :pswitch_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapCloseZoomSessionOriginValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 661
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->STOP_ZOOM_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 663
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid close zoom session origin : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 655
    :pswitch_1
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 651
    :pswitch_2
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->INTERACTIVITY_ENGAGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 647
    :pswitch_3
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 643
    :pswitch_4
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 633
    :pswitch_5
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :try_start_0
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ADS_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedArticleRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 637
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NumberFormatException, Impossible to get the bucketed ads viewed value"

    .line 638
    invoke-static {v2, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 629
    :pswitch_6
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AGE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 619
    :pswitch_7
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :try_start_1
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_ARTICLE_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedArticleRead(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    nop

    .line 623
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NumberFormatException, Impossible to get the bucketed article read value"

    .line 624
    invoke-static {v2, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 615
    :pswitch_8
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 611
    :pswitch_9
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 606
    :pswitch_a
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    .line 607
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/MetricsUtils;->mapOrientation(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)Ljava/lang/String;

    move-result-object v0

    .line 606
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 595
    :pswitch_b
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 596
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 598
    :try_start_2
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :catch_2
    nop

    .line 600
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "NumberFormatException, Impossible to get the bucketed time"

    .line 601
    invoke-static {v2, v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 589
    :pswitch_c
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_TYPE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    .line 590
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/MetricsUtils;->mapArticleType(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsArticleType;)Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 585
    :pswitch_d
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 581
    :pswitch_e
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 572
    :pswitch_f
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    if-ne p1, v1, :cond_3

    .line 573
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 576
    :cond_3
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_NAME:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 563
    :pswitch_10
    sget-object v1, Lcom/amazon/nwstd/metrics/MetricsTags;->AD_VIEWED:Lcom/amazon/nwstd/metrics/MetricsTags;

    if-ne p1, v1, :cond_4

    .line 564
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->AD_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 567
    :cond_4
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private mapCloseZoomSessionOriginValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 683
    :try_start_0
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsStopZoomSessionOrigin;

    move-result-object p1

    .line 684
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsStopZoomSessionOrigin:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    goto :goto_1

    .line 692
    :cond_0
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->MOVE_TO_OTHER_ARTICLE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 689
    :cond_1
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->RESET_BUTTON:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 686
    :cond_2
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->PINCH_OUT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;

    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsStopZoomSessionOrigin;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p1

    :catch_0
    :goto_1
    return-object v0
.end method

.method public static reportDownloadEvent(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;",
            ")V"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->DOWNLOAD:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 299
    invoke-static {p2, p3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->createLocalyticsSessionForParentAsin(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;

    move-result-object p1

    .line 301
    invoke-virtual {p1, p0}, Lcom/localytics/android/LocalyticsSession;->open(Ljava/util/List;)V

    .line 303
    invoke-virtual {p5}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p4, p0}, Lcom/localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 305
    invoke-virtual {p1}, Lcom/localytics/android/LocalyticsSession;->upload()V

    .line 307
    invoke-virtual {p1, p0}, Lcom/localytics/android/LocalyticsSession;->close(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCloseSession()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->closeLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onPauseSession()V
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->closeLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onResumeSession()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->openLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onStartSession()V
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->openLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V
    .locals 3

    .line 363
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 364
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 365
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_OPENED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, v1, v0, v2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    :goto_0
    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/nwstd/metrics/MetricsTags;",
            "Ljava/util/Map<",
            "Lcom/amazon/nwstd/metrics/MetricsAttributes;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 378
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 379
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V

    .line 383
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 384
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 385
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "Missing attribute in report event, event : "

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 511
    :pswitch_0
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 512
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 513
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->YJ_ZOOM_SESSION:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 501
    :pswitch_1
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TARGET_URL:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 502
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 503
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 504
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 506
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_TEXT_LINK_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 492
    :pswitch_2
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 493
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 494
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 496
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_HOT_SPOT_CLICK:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 480
    :pswitch_3
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 481
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 482
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 483
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 484
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 485
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 487
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_SLIDESHOW_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 468
    :pswitch_4
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 469
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 470
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 471
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 472
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 473
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 475
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_VIDEO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 456
    :pswitch_5
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->OVERLAYID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 457
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 458
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->MEDIA_PERCENTAGE_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 459
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 460
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 461
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 463
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->INTERACTIVITY_AUDIO_READ:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 438
    :pswitch_6
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v4, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getFormattedDate(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    iget-object v4, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalBookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getAge(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PUBLICATION_DATE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->AGE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 442
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLES_READ:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 443
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 444
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ADS_VIEWED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 445
    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 446
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 447
    sget-object p1, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    long-to-int p2, p1

    .line 448
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    int-to-long v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;J)V

    goto/16 :goto_0

    .line 450
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ISSUE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 427
    :pswitch_7
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 428
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 429
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 430
    :cond_8
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_REMOVED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :pswitch_8
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 418
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 419
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 420
    :cond_9
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_BOOKMARK_ADDED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 407
    :pswitch_9
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PAGEID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 408
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 409
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 410
    :cond_a
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 397
    :pswitch_a
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->checkAdAttributes(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 398
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 399
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->AD_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 400
    :cond_b
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 401
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 387
    :pswitch_b
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->checkArticleAttributes(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 388
    invoke-direct {p0, p1, p2, v3}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 389
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v3, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 390
    :cond_c
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->ARTICLE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_d
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V
    .locals 1

    .line 704
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 715
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->BOOKMARK_POPUP:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 712
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->BROWSE:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->TOC:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 706
    :cond_3
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
