.class public final Lcom/audible/mobile/player/AudibleReadyPlayerFactory;
.super Lcom/audible/mobile/player/BasePlayerFactory;
.source "AudibleReadyPlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/audible/mobile/player/BasePlayerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method protected get(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/Player;
    .locals 9

    .line 20
    const-class v0, Lcom/audible/mobile/identity/IdentityManager;

    invoke-virtual {p2, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/identity/IdentityManager;

    .line 21
    const-class v1, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {p2, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/audible/mobile/metric/logger/MetricManager;

    .line 22
    const-class v1, Lcom/audible/mobile/activation/ActivationDataRepository;

    invoke-virtual {p2, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/audible/mobile/activation/ActivationDataRepository;

    .line 23
    const-class v1, Lcom/audible/cdn/voucher/VoucherManager;

    invoke-virtual {p2, v1}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lcom/audible/cdn/voucher/VoucherManager;

    .line 24
    new-instance p2, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;

    new-instance v6, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;

    invoke-direct {v6, p1, v0, v8}, Lcom/audible/mobile/player/metadata/SdkBasedAudioMetadataProviderImpl;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;)V

    move-object v1, p2

    move-object v2, p1

    move-object v5, v0

    move-object v7, v8

    invoke-direct/range {v1 .. v7}, Lcom/audible/mobile/player/audio/SdkBasedAudioPlayer;-><init>(Landroid/content/Context;Lcom/audible/mobile/activation/ActivationDataRepository;Lcom/audible/cdn/voucher/VoucherManager;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/audio/metadata/AudioMetadataProvider;Lcom/audible/mobile/metric/logger/MetricManager;)V

    .line 30
    new-instance v1, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;

    invoke-direct {v1, p1, v0, v8, p2}, Lcom/audible/mobile/player/DefaultAudibleReadyPlayer;-><init>(Landroid/content/Context;Lcom/audible/mobile/identity/IdentityManager;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/audio/AudiobookPlayer;)V

    return-object v1
.end method
