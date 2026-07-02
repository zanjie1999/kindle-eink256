.class public final Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;
.super Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;
.source "BooksBlurbCardBuilder.kt"

# interfaces
.implements Lcom/amazon/kindle/home/card/SidekickCardBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/kcp/home/cards/base/BaseCardBuilder<",
        "Lcom/amazon/kcp/home/widget/BooksBlurbCard;",
        ">;",
        "Ljava/lang/Object;",
        "Lcom/amazon/kindle/home/card/SidekickCardBuilder;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBooksBlurbCardBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BooksBlurbCardBuilder.kt\ncom/amazon/kcp/home/cards/BooksBlurbCardBuilder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1819#2,2:166\n1819#2,2:168\n*E\n*S KotlinDebug\n*F\n+ 1 BooksBlurbCardBuilder.kt\ncom/amazon/kcp/home/cards/BooksBlurbCardBuilder\n*L\n102#1,2:166\n137#1,2:168\n*E\n"
.end annotation


# instance fields
.field private final fastMetrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;
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
            "Lcom/amazon/kcp/home/widget/BooksBlurbCard;",
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

    const-string v0, "fastMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->fastMetrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    const-string p1, "com.amazon.kcp.home.cards.BooksBlurbCardBuilder"

    .line 37
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->tag:Ljava/lang/String;

    .line 38
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->templateId:Ljava/lang/String;

    const-string p1, "ESS_BOOKLIST_BLURB_CARD_LAUNCH_398128"

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->weblabName:Ljava/lang/String;

    .line 40
    new-instance p1, Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {p1}, Lcom/amazon/kcp/home/util/CardImageProvider;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    .line 41
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->widgets:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic access$getImageProvider$p(Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;)Lcom/amazon/kcp/home/util/CardImageProvider;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    return-object p0
.end method

.method private final cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V
    .locals 8

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-cover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    new-instance v1, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/DescriptionImageZone;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Lcom/amazon/kcp/library/HomeUtils;->imagePathForShovelerUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    .line 134
    invoke-static {p2}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 137
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 168
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 138
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 139
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 140
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;

    move-object v2, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kindle/home/model/ThemedImageZone;)V
    .locals 8

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    .line 100
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getLightImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 101
    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-virtual {v1}, Lcom/amazon/kindle/krx/theme/Theme;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/ThemedImageZone;->getDarkImageUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/amazon/kcp/library/HomeUtils;->themedImageCachePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 99
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p2

    .line 102
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    .line 166
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 103
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    .line 104
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 105
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;

    move-object v2, v1

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder$cacheImagesIfMissing$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final checkAndFetchDataForWidget(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V
    .locals 4

    .line 75
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 76
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/model/HomeZone;

    .line 79
    instance-of v2, v1, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    if-eqz v2, :cond_0

    .line 80
    check-cast v1, Lcom/amazon/kindle/home/model/DescriptionImageZone;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kindle/home/model/DescriptionImageZone;)V

    goto :goto_0

    .line 83
    :cond_0
    instance-of v2, v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v2, :cond_1

    .line 84
    check-cast v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->cacheImagesIfMissing(Lcom/amazon/kcp/home/widget/BooksBlurbCard;Lcom/amazon/kindle/home/model/ThemedImageZone;)V

    goto :goto_0

    .line 86
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Nothing to fetch data for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/amazon/kindle/home/model/CardData;)Lcom/amazon/kindle/home/card/HomeCard;
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    sget-object p1, Lcom/amazon/kcp/home/models/CardType;->BOOKS_BLURB_CARD:Lcom/amazon/kcp/home/models/CardType;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/models/CardType;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getTemplateId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 50
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

    const-string p2, "com.amazon.kcp.home.cards.BooksBlurbCardBuilder"

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 55
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    if-eqz p1, :cond_1

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;->getCardData()Lcom/amazon/kindle/home/model/CardData;

    move-result-object v0

    :cond_1
    invoke-static {v0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Creating new BooksBlurbCard for id="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    new-instance p1, Lcom/amazon/kcp/home/widget/BooksBlurbCard;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->fastMetrics:Lcom/amazon/discovery/RequiredUniqueDiscovery;

    invoke-virtual {v1}, Lcom/amazon/discovery/RequiredUniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "fastMetrics.value()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;

    invoke-direct {p1, v0, v1, p2}, Lcom/amazon/kcp/home/widget/BooksBlurbCard;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/fastmetrics/service/client/IKindleFastMetrics;Lcom/amazon/kindle/home/model/CardData;)V

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->widgets:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/amazon/kindle/home/model/CardData;->getId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->checkAndFetchDataForWidget(Lcom/amazon/kcp/home/widget/BooksBlurbCard;)V

    return-object p1
.end method

.method protected getTag()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public getWeblabName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->weblabName:Ljava/lang/String;

    return-object v0
.end method

.method public isEnabled(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;)Z
    .locals 1

    const-string/jumbo v0, "weblabManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->getWeblabName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAndRecordTrigger()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "T1"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method public reset()V
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/BooksBlurbCardBuilder;->widgets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method
