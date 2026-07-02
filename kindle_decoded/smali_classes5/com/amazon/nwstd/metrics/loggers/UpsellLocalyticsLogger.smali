.class public Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;
.super Ljava/lang/Object;
.source "UpsellLocalyticsLogger.java"

# interfaces
.implements Lcom/amazon/nwstd/metrics/IMetricsLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;,
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;,
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;,
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;,
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;,
        Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


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

.field private final mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/kindle/model/content/ILocalBookItem;Ljava/lang/String;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 9

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    invoke-static {p4}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getContentExplorerLocalyticsAppKey(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Ljava/lang/String;

    move-result-object p4

    .line 510
    new-instance v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    invoke-direct {v0, p1, p4}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    .line 512
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    iput-object p4, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    .line 515
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getPublicationDateInMillis()J

    move-result-wide v0

    invoke-static {p4, v0, v1}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getIssueId(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v2

    .line 516
    iget-object p4, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ISSUE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->getPFM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 520
    sget-object p4, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "Cannot report library banner click event: customer PFM is unknown."

    invoke-static {p4, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 522
    :cond_0
    iget-object p4, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->MARKETPLACE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->NORMAL:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    .line 527
    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v3

    .line 528
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getGenericMetadata()Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;

    move-result-object p1

    const-string p4, "doc_sym_publication_id"

    invoke-interface {p1, p4}, Lcom/amazon/kindle/model/content/ILocalBookMetadataModel;->getStringValueFromMetadata(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 529
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v5

    .line 530
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getVolumeLabel()Ljava/lang/String;

    move-result-object v6

    .line 532
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IListableBook;->getParentAsin()Ljava/lang/String;

    move-result-object v8

    move-object v7, p3

    .line 525
    invoke-static/range {v2 .. v8}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 533
    :goto_0
    invoke-static {p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    return-void
.end method

.method private checkUpsellBannerAttributes(Ljava/util/Map;)Z
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

    .line 750
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 751
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 752
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 753
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 754
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 755
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 756
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

.method private checkUpsellFullPageAttributes(Ljava/util/Map;)Z
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

    .line 735
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->TIME:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 736
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 737
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 738
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 739
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 740
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 741
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

.method private checkUpsellLinkClickedAttributes(Ljava/util/Map;)Z
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

    .line 766
    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 767
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 768
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/nwstd/metrics/MetricsAttributes;->UPSELL_CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/MetricsAttributes;

    .line 769
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

.method public static createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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

    .line 261
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 265
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "None"

    if-eqz v1, :cond_0

    move-object p0, v2

    .line 268
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p2, v2

    .line 279
    :cond_1
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object p3, v2

    .line 287
    :cond_2
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p4, v2

    .line 293
    :cond_3
    invoke-virtual {v0, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getDebugID()Ljava/lang/String;

    move-result-object v1

    .line 297
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 300
    :cond_4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object p5, v2

    .line 307
    :cond_5
    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 310
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    move-object p6, v2

    .line 313
    :cond_6
    invoke-virtual {v0, p6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 316
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UpsellLocalyticsLogger ; create custom dimensions ;  CUSTOM_DIMENSION_0 : Issue id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_1 : Session id : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_2 : Publication ID : "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_3 : Title "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_4 : Volume label "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_5 : Debug ID "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ;  CUSTOM_DIMENSION_6 : Campaign ID "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "; CUSTOM_DIMENSION_7 : Parent ASIN "

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v3, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method

.method private static getPFM(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 365
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 368
    new-instance v0, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;

    invoke-direct {v0, p0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v0}, Lcom/amazon/nwstd/utils/ReaderTokensAvailabilityHelper;->preloadReaderData()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 370
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/16 v0, 0x8

    const-string v2, "Cannot get user\'s PFM: failed to preload Reader data"

    invoke-static {p0, v0, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 374
    :cond_1
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    .line 375
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_2

    .line 376
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    const-string v2, "Cannot report metrics as the user is not registered yet"

    invoke-static {p0, v0, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-object v1

    .line 379
    :cond_2
    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p0

    .line 380
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-object v1

    .line 383
    :cond_3
    invoke-interface {p0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getPFM()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 384
    invoke-virtual {p0}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    :cond_4
    return-object v1
.end method

.method private static logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            "Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 331
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 332
    :goto_1
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    if-eqz p4, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 333
    :goto_2
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 335
    invoke-static {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->getPFM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    if-nez v0, :cond_3

    .line 337
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const-string v3, "Cannot report event: customer PFM is unknown."

    invoke-static {v2, v1, v3}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 342
    :cond_3
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getContentExplorerLocalyticsAppKey(Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)Ljava/lang/String;

    move-result-object p1

    .line 341
    invoke-static {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->createUpsellLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;

    move-result-object p0

    if-nez p0, :cond_4

    .line 344
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const-string p1, "Cannot report event: UpsellLocalyticsSession cannot be initialized."

    invoke-static {p0, v1, p1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    .line 347
    :cond_4
    invoke-virtual {p0, p4}, Lcom/localytics/android/LocalyticsSession;->open(Ljava/util/List;)V

    if-nez p3, :cond_5

    .line 350
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 352
    :cond_5
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->MARKETPLACE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {p1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3, p4}, Lcom/localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    .line 355
    invoke-virtual {p0}, Lcom/localytics/android/LocalyticsSession;->upload()V

    .line 356
    invoke-virtual {p0, p4}, Lcom/localytics/android/LocalyticsSession;->close(Ljava/util/List;)V

    return-void
.end method

.method private mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
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

    .line 611
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 612
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 613
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsAttributes:[I

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 667
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not mapping unknow metrics attribute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amazon/nwstd/metrics/MetricsAttributes;

    invoke-virtual {p2}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, v1, p2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    .line 658
    :pswitch_0
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mapMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 660
    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->READING_MODE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 662
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid upsell view type : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 649
    :pswitch_1
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mapUpsellClickOriginValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 651
    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICK_ORIGIN:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 653
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid upsell click origin : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 645
    :pswitch_2
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 641
    :pswitch_3
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION_CHANGES:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 636
    :pswitch_4
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ORIENTATION:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    .line 637
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;

    move-result-object p2

    invoke-static {p2}, Lcom/amazon/nwstd/metrics/MetricsUtils;->mapOrientation(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsOrientation;)Ljava/lang/String;

    move-result-object p2

    .line 636
    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 625
    :pswitch_5
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->decode(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 626
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :try_start_0
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_TIME:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    .line 630
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "NumberFormatException, Impossible to get the bucketed time"

    .line 631
    invoke-static {v1, p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto/16 :goto_0

    .line 619
    :pswitch_6
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->BUCKETED_PERCENT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getBucketedPercentage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 615
    :pswitch_7
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->ARTICLE_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p3, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method private static mapMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 708
    :try_start_0
    invoke-static {p0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsReadingMode;

    move-result-object p0

    .line 709
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsReadingMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 717
    :cond_0
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->TEXTVIEW:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 714
    :cond_1
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->REPLICA:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 711
    :cond_2
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->YJ:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsReadingMode;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 723
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method private static mapUpsellClickOriginValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    .line 682
    :try_start_0
    invoke-static {p0}, Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;->valueOf(Ljava/lang/String;)Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsUpsellClickOrigin;

    move-result-object p0

    .line 683
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsUpsellClickOrigin:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    goto :goto_1

    .line 688
    :cond_0
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->UPSELL_BANNER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 685
    :cond_1
    sget-object p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsUpsellClickOrigin;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 695
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->TAG:Ljava/lang/String;

    const/16 v2, 0x10

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, p0}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-object v0
.end method

.method public static reportCampaignChangedEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 412
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    const/4 v3, 0x0

    .line 415
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CAMPAIGN_CHANGED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object v8, p2

    invoke-static/range {v3 .. v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 416
    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 419
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 420
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "None"

    .line 423
    :cond_2
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->PREVIOUS_CAMPAIGN_ID:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    .line 428
    sget-object p1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->CAMPAIGN_CHANGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p0, p1, p2, v0, v2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method public static reportDownloadEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/nwstd/resources/DynamicResourceOrigin;",
            ")V"
        }
    .end annotation

    .line 492
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    .line 493
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->DOWNLOAD:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 494
    :goto_0
    invoke-static {p2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 496
    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_DOWNLOAD_COMPLETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p0, p4, p2, p3, p1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method public static reportIssueDeletedEvent(Landroid/content/Context;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 393
    :goto_0
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 395
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getTitle()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v1 .. v7}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 396
    invoke-virtual {p1}, Lcom/amazon/kindle/content/ContentMetadata;->getOriginType()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getMagazineUpsellOrigin(Ljava/lang/String;)Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 402
    :cond_1
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_DELETED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p0, p1, v1, p2, v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method public static reportLibraryBannerClickEvent(Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 470
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 473
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 474
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->LIBRARY_BANNER:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 475
    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 478
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 479
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->LIBRARY_BANNER_CLICK_CHOICE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;

    invoke-virtual {v1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsAttributes;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LibraryBannerClickEvent;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 480
    sget-object p0, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->LIBRARY_BANNER_CLICK:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p1, p0, v1, v0, v2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method public static reportUpsellContentBoughtEvent(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 436
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 439
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 440
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 441
    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 444
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 445
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_CONTENT_BOUGHT:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p0, v1, v3, v0, v2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method

.method public static reportUpsellInterstitialPageDismissedEvent(Landroid/content/Context;)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 453
    :goto_0
    invoke-static {v2}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 455
    invoke-static {}, Lcom/amazon/nwstd/upsell/UpsellUtils;->getCampaignId()Ljava/lang/String;

    move-result-object v8

    const/4 v3, 0x0

    .line 456
    sget-object v2, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;

    invoke-virtual {v2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->createLocalyticsCustomDimensions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 457
    :goto_1
    invoke-static {v0}, Lcom/amazon/nwstd/utils/Assertion;->Assert(Z)V

    .line 460
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 461
    sget-object v1, Lcom/amazon/nwstd/resources/DynamicResourceOrigin;->CE:Lcom/amazon/nwstd/resources/DynamicResourceOrigin;

    sget-object v3, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_INTERSTITIAL_PAGE_DISMISSED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-static {p0, v1, v3, v0, v2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->logEvent(Landroid/content/Context;Lcom/amazon/nwstd/resources/DynamicResourceOrigin;Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;Ljava/util/HashMap;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public onCloseSession()V
    .locals 2

    .line 553
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->closeLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onPauseSession()V
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->closeLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onResumeSession()V
    .locals 2

    .line 548
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->openLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public onStartSession()V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->openLocalyticsSession(Ljava/util/List;)V

    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V
    .locals 2

    .line 558
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 559
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 560
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    return-void
.end method

.method public reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;)V
    .locals 5
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

    .line 571
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 572
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->reportEvent(Lcom/amazon/nwstd/metrics/MetricsTags;)V

    .line 576
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 577
    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mDefaultAttributes:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 578
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$MetricsTags:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "Missing attribute in report event, event : "

    const/4 v4, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    goto/16 :goto_0

    .line 596
    :cond_2
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->checkUpsellBannerAttributes(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 597
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 598
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto/16 :goto_0

    .line 599
    :cond_3
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 600
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_BANNER_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 588
    :cond_4
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->checkUpsellLinkClickedAttributes(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 589
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 590
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 591
    :cond_5
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 592
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_LINK_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    goto :goto_0

    .line 580
    :cond_6
    invoke-direct {p0, p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->checkUpsellFullPageAttributes(Ljava/util/Map;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 581
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mapAttributes(Lcom/amazon/nwstd/metrics/MetricsTags;Ljava/util/Map;Ljava/util/Map;)V

    .line 582
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mCustomDimensions:Ljava/util/List;

    invoke-virtual {p1, p2, v0, v1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_0

    .line 583
    :cond_7
    invoke-static {}, Lcom/amazon/nwstd/utils/Assertion;->isDebug()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p2, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->UPSELL_FULL_PAGE_VIEWED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;

    invoke-virtual {p2}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsTagEvent;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/nwstd/utils/Assertion;->Assert(ZLjava/lang/String;)V

    :cond_8
    :goto_0
    return-void
.end method

.method public tagScreen(Lcom/amazon/nwstd/metrics/IMetricsHelper$EMetricsScreens;)V
    .locals 1

    .line 774
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$1;->$SwitchMap$com$amazon$nwstd$metrics$IMetricsHelper$EMetricsScreens:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 782
    :cond_0
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->UPSELL_FULL_PAGE:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 779
    :cond_1
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->UPSELL_BUTTON_CLICKED:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    goto :goto_0

    .line 776
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger;->mLocalyticsSessionHandler:Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->MAGAZINE_VIEWER:Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;

    invoke-virtual {v0}, Lcom/amazon/nwstd/metrics/loggers/UpsellLocalyticsLogger$LocalyticsScreens;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->tagScreen(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
