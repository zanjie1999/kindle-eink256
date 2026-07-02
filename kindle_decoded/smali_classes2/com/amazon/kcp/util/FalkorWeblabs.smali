.class final Lcom/amazon/kcp/util/FalkorWeblabs;
.super Ljava/lang/Object;
.source "FalkorUtils.kt"


# instance fields
.field private final addToLibraryWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

.field private final fireCardsFalkorGroupingWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

.field private final lastReadEpisodeWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

.field private final masterWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

.field private final vellaDeeplinkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    const-string v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KINDLE_ANDROID_FALKOR_ENABLED_275866"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->masterWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    .line 136
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KINDLE_ANDROID_FALKOR_ATL_ENABLED_337809"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->addToLibraryWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    .line 139
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KINDLE_ANDROID_FIRE_CARDS_FALKOR_GROUPING_359537"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->fireCardsFalkorGroupingWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    .line 142
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object v1

    const-string v2, "KINDLE_ANDROID_FALKOR_LAST_READ_EPISODE_374881"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->lastReadEpisodeWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    .line 145
    new-instance v0, Lcom/amazon/kindle/weblab/OnOffWeblab;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getWeblabManager()Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;

    move-result-object p1

    const-string v1, "KINDLE_ANDROID_FALKOR_DEEPLINK_404202"

    invoke-direct {v0, p1, v1}, Lcom/amazon/kindle/weblab/OnOffWeblab;-><init>(Lcom/amazon/kindle/krx/mobileweblab/IWeblabManager;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->vellaDeeplinkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-void
.end method


# virtual methods
.method public final getAddToLibraryWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->addToLibraryWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method

.method public final getLastReadEpisodeWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->lastReadEpisodeWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method

.method public final getMasterWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->masterWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method

.method public final getVellaDeeplinkWeblab()Lcom/amazon/kindle/weblab/OnOffWeblab;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/amazon/kcp/util/FalkorWeblabs;->vellaDeeplinkWeblab:Lcom/amazon/kindle/weblab/OnOffWeblab;

    return-object v0
.end method
