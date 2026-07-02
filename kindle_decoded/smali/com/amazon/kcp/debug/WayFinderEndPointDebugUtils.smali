.class public final Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;
.super Ljava/lang/Object;
.source "WayFinderEndPointDebugUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

.field private static final WEBLAB_TREATMENT:Ljava/lang/String; = "T1"

.field private static isWayFinderEndpointEnabled:Z

.field private static isWayFinderPreProdEndpointEnabled:Z

.field private static final preProdBaseURLs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->INSTANCE:Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;

    const/16 v0, 0xe

    new-array v0, v0, [Lkotlin/Pair;

    .line 18
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-iad.iad.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 19
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CA:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-ca-iad.iad.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 20
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->UK:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-uk-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 21
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->DE:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-de-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 22
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->FR:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-fr-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 23
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IT:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-it-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 24
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->ES:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-es-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 25
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->JP:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-jp-pdx.pdx.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 26
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->CN:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-pek.pek.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 27
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->IN:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-in-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 28
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->BR:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-br-iad.iad.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 29
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->MX:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-mx-iad.iad.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 30
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->AU:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-au-pdx.pdx.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 31
    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->NL:Lcom/amazon/kcp/application/Marketplace;

    const-string/jumbo v2, "voltron-wayfinder-gamma-nl-dub.dub.proxy.amazon.com"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 17
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->preProdBaseURLs:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final isWayFinderEndpointWeblabEnabled()Z
    .locals 3

    .line 71
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "KINDLE_WAYFINDER_VOLTRON_SERVICE_361845"

    .line 73
    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;->getWeblab(Ljava/lang/String;)Lcom/amazon/kindle/krx/mobileweblab/IWeblab;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/amazon/kindle/krx/mobileweblab/IWeblab;->getTreatmentAssignment()Ljava/lang/String;

    move-result-object v1

    :cond_1
    const-string v0, "T1"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final getPreProdPageHostOverride(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    sget-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->preProdBaseURLs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->preProdBaseURLs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    sget-object p1, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->preProdBaseURLs:Ljava/util/Map;

    sget-object v0, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :goto_0
    return-object p1
.end method

.method public final initialize()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderEndpointWeblabEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderPreProdEndpointEnabled:Z

    if-nez v0, :cond_1

    .line 41
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderEndpointEnabled:Z

    return-void
.end method

.method public final isWayFinderEndpointEnabled()Z
    .locals 1

    .line 47
    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderEndpointEnabled:Z

    return v0
.end method

.method public final isWayFinderPreProdEndpointEnabled()Z
    .locals 1

    .line 53
    sget-boolean v0, Lcom/amazon/kcp/debug/WayFinderEndPointDebugUtils;->isWayFinderPreProdEndpointEnabled:Z

    return v0
.end method
