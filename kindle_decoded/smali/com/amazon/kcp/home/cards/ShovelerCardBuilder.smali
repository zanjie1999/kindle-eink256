.class public final Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;
.super Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;
.source "ShovelerCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/SidekickCardBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/home/cards/base/BaseCardBuilder<",
        "Lcom/amazon/kcp/home/widget/ShovelerWidget;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/home/card/SidekickCardBuilder;"
    }
.end annotation


# instance fields
.field private final fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;"
        }
    .end annotation
.end field

.field private final imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

.field private final tag:Ljava/lang/String;

.field private final templateId:Ljava/lang/String;

.field private final weblabName:Ljava/lang/String;

.field private final widgets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/home/widget/ShovelerWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/amazon/discovery/RequiredUniqueDiscovery;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/discovery/RequiredUniqueDiscovery<",
            "Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;",
            ">;)V"
        }
    .end annotation

    const-string v0, "fm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    const-string p1, "com.amazon.kcp.home.cards.ShovelerCardBuilder"

    .line 33
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->tag:Ljava/lang/String;

    .line 34
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->templateId:Ljava/lang/String;

    .line 37
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->widgets:Ljava/util/Map;

    .line 38
    new-instance p1, Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {p1}, Lcom/amazon/kcp/home/util/CardImageProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->SHOVELER:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid Card template="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", returning null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.amazon.kcp.home.cards.ShovelerCardBuilder"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 51
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    if-eqz p1, :cond_1

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/ShovelerWidget;->getCard()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    invoke-static {v1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Creating new ShovelerWidget for id="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    const-string v1, "Utils.getFactory()"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverCache()Lcom/amazon/kcp/cover/ICoverCacheManager;

    move-result-object v5

    .line 56
    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unified-ebooks-home-ruby_FalkorFollowCard"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "coverCache"

    const-string v3, "fm.value()"

    if-eqz v1, :cond_2

    .line 57
    new-instance v7, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;

    .line 58
    iget-object v1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    .line 59
    invoke-static {v0}, Lcom/amazon/kindle/cover/ImageSizes;->getInstance(Ljava/util/Map;)Lcom/amazon/kindle/cover/ImageSizes;

    move-result-object v0

    const-string v4, "ImageSizes.getInstance(null)"

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    sget-object v4, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    new-instance v6, Landroid/util/LruCache;

    const/16 v8, 0x14

    invoke-direct {v6, v8}, Landroid/util/LruCache;-><init>(I)V

    invoke-static {v4, v6}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v4

    .line 57
    invoke-direct {v7, v1, v0, v4}, Lcom/amazon/kcp/home/util/HomeCoverUrlDownloadManager;-><init>(Lcom/amazon/kcp/home/util/CardImageProvider;Lcom/amazon/kindle/cover/ImageSizes;Ljava/util/Map;)V

    .line 62
    new-instance v0, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v1}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    new-instance v8, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    iget-object v4, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v4}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v2, v8

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kcp/home/util/CoverUrlDownloadManager;)V

    invoke-direct {v0, p1, v1, v8}, Lcom/amazon/kcp/home/widget/ShovelerWidget;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;)V

    goto :goto_1

    .line 64
    :cond_2
    new-instance v0, Lcom/amazon/kcp/home/widget/ShovelerWidget;

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v1}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    new-instance v4, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;

    iget-object v6, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->fm:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v6}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v4, p1, v6, v5, p2}, Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/home/model/CardData;)V

    invoke-direct {v0, p1, v1, v4}, Lcom/amazon/kcp/home/widget/ShovelerWidget;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kcp/home/widget/ShovelerWidgetAdapter;)V

    :goto_1
    move-object p1, v0

    .line 67
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_3
    invoke-virtual {p0, p2, p1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheZoneData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;)V

    return-object p1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->weblabName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/ShovelerCardBuilder;->widgets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
