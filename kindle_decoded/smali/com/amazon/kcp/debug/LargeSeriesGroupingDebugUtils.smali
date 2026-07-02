.class public final Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;
.super Ljava/lang/Object;
.source "LargeSeriesGroupingDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;

.field private static final comicsEnabledPFMS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation
.end field

.field private static final enabledPFMs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/application/Marketplace;",
            ">;"
        }
    .end annotation
.end field

.field private static isLargeSeriesGroupingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 7
    new-instance v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;

    const/4 v0, 0x1

    .line 9
    sput-boolean v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled:Z

    const/4 v1, 0x4

    new-array v2, v1, [Lcom/amazon/kcp/application/Marketplace;

    .line 11
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 12
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    aput-object v3, v2, v0

    .line 13
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 14
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const/4 v6, 0x3

    aput-object v3, v2, v6

    .line 10
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->enabledPFMs:Ljava/util/List;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/amazon/kcp/application/Marketplace;

    .line 17
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    aput-object v3, v2, v4

    .line 18
    sget-object v3, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    aput-object v3, v2, v0

    .line 19
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    aput-object v0, v2, v5

    .line 20
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    aput-object v0, v2, v6

    .line 21
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    aput-object v0, v2, v1

    .line 22
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const/4 v1, 0x5

    aput-object v0, v2, v1

    .line 23
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const/4 v1, 0x6

    aput-object v0, v2, v1

    .line 24
    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const/4 v1, 0x7

    aput-object v0, v2, v1

    .line 16
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->comicsEnabledPFMS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final initializeLargeSeriesGroupingWeblab()V
    .locals 4

    .line 30
    sget-boolean v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabledByConditions$KindleReaderLibrary_release$default(Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled:Z

    return-void
.end method

.method public static final isLargeSeriesGroupingEnabled()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabled:Z

    return v0
.end method

.method public static synthetic isLargeSeriesGroupingEnabledByConditions$KindleReaderLibrary_release$default(Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;ZILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 39
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isComicsBuild()Z

    move-result p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->isLargeSeriesGroupingEnabledByConditions$KindleReaderLibrary_release(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final isLargeSeriesGroupingEnabledByConditions$KindleReaderLibrary_release(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 40
    sget-object p1, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->comicsEnabledPFMS:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/util/MarketplaceUtils;->getUserMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 42
    :cond_0
    sget-object p1, Lcom/amazon/kcp/debug/LargeSeriesGroupingDebugUtils;->enabledPFMs:Ljava/util/List;

    invoke-static {}, Lcom/amazon/kcp/util/MarketplaceUtils;->getUserMarketplace()Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method
