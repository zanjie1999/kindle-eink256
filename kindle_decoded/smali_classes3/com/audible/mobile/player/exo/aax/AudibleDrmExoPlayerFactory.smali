.class public Lcom/audible/mobile/player/exo/aax/AudibleDrmExoPlayerFactory;
.super Lcom/audible/mobile/player/exo/BaseExoPlayerFactory;
.source "AudibleDrmExoPlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/audible/mobile/player/exo/BaseExoPlayerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected getMediaSourceProvider(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;
    .locals 3

    .line 24
    const-class p1, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p2, p1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/audible/mobile/identity/IdentityManager;

    .line 25
    const-class v0, Lcom/audible/license/VoucherManager;

    invoke-virtual {p2, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/license/VoucherManager;

    .line 26
    const-class v1, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-virtual {p2, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 27
    const-class v2, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {p2, v2}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/audible/mobile/metric/logger/MetricManager;

    .line 29
    new-instance v2, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/audible/mobile/player/exo/sources/AudibleDrmMediaSourceProvider;-><init>(Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/license/provider/VoucherProvider;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/mobile/metric/logger/MetricManager;)V

    return-object v2
.end method
