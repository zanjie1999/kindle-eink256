.class public abstract Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;
.super Ljava/lang/Object;
.source "BaseCardBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/kindle/home/card/HomeCard;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCardBuilder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCardBuilder.kt\ncom/amazon/kcp/home/cards/base/BaseCardBuilder\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,111:1\n181#2,2:112\n1819#3,2:114\n*E\n*S KotlinDebug\n*F\n+ 1 BaseCardBuilder.kt\ncom/amazon/kcp/home/cards/base/BaseCardBuilder\n*L\n34#1,2:112\n71#1,2:114\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;


# instance fields
.field private final imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

.field private imagesCached:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->Companion:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/amazon/kcp/home/util/CardImageProvider;

    invoke-direct {v0}, Lcom/amazon/kcp/home/util/CardImageProvider;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    return-void
.end method

.method public static final synthetic access$getImageProvider$p(Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;)Lcom/amazon/kcp/home/util/CardImageProvider;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->imageProvider:Lcom/amazon/kcp/home/util/CardImageProvider;

    return-object p0
.end method

.method private final cacheImage(Lcom/amazon/kindle/home/model/ImageZone;)V
    .locals 3

    .line 48
    iget v0, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->imagesCached:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    .line 49
    sget-object v0, Lcom/amazon/kcp/library/HomeUtils;->INSTANCE:Lcom/amazon/kcp/library/HomeUtils;

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAsin()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/ImageZone;->getImageAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/amazon/kcp/library/HomeUtils;->cacheCoverForAsin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget p1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->imagesCached:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->imagesCached:I

    :cond_0
    return-void
.end method

.method private final cacheThemedImage(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/ThemedImageZone;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/CardData;",
            "TT;",
            "Lcom/amazon/kindle/home/model/ThemedImageZone;",
            ")V"
        }
    .end annotation

    .line 58
    sget-object v0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->Companion:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;->themedImagePaths(Lcom/amazon/kindle/home/model/ThemedImageZone;)Ljava/util/Map;

    move-result-object p3

    .line 59
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheThemedImageData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Ljava/util/Map;)V

    return-void
.end method

.method private final cacheThemedImage(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/CardData;",
            "TT;",
            "Lcom/amazon/kindle/home/model/WaysToReadBlock;",
            ")V"
        }
    .end annotation

    .line 66
    sget-object v0, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->Companion:Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;

    invoke-virtual {v0, p3}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$Companion;->themedImagePaths(Lcom/amazon/kindle/home/model/WaysToReadBlock;)Ljava/util/Map;

    move-result-object p3

    .line 67
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheThemedImageData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected final cacheThemedImageData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/CardData;",
            "TT;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imageData"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p3

    .line 114
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    .line 72
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 73
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 75
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;

    move-object v2, v1

    move-object v6, p0

    move-object v7, p2

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder$cacheThemedImageData$$inlined$forEach$lambda$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/CardData;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final cacheZoneData(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/home/model/CardData;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "widget"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/amazon/kindle/home/model/CardData;->getZones()Ljava/util/Map;

    move-result-object v0

    .line 112
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/home/model/HomeZone;

    .line 36
    instance-of v2, v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/amazon/kindle/home/model/ThemedImageZone;

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheThemedImage(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/ThemedImageZone;)V

    goto :goto_0

    .line 37
    :cond_0
    instance-of v2, v1, Lcom/amazon/kindle/home/model/ImageZone;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/amazon/kindle/home/model/ImageZone;

    invoke-direct {p0, v1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheImage(Lcom/amazon/kindle/home/model/ImageZone;)V

    goto :goto_0

    .line 38
    :cond_1
    instance-of v2, v1, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/amazon/kindle/home/model/WaysToReadBlock;

    invoke-direct {p0, p1, p2, v1}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->cacheThemedImage(Lcom/amazon/kindle/home/model/CardData;Lcom/amazon/kindle/home/card/HomeCard;Lcom/amazon/kindle/home/model/WaysToReadBlock;)V

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/home/cards/base/BaseCardBuilder;->getTag()Ljava/lang/String;

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

    :cond_3
    return-void
.end method

.method protected abstract getTag()Ljava/lang/String;
.end method

.method protected onThemedImageReady(Lcom/amazon/kindle/home/card/HomeCard;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const-string/jumbo p3, "widget"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "theme"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
