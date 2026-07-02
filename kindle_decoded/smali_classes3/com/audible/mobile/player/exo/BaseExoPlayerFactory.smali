.class public abstract Lcom/audible/mobile/player/exo/BaseExoPlayerFactory;
.super Lcom/audible/mobile/player/BasePlayerFactory;
.source "BaseExoPlayerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/audible/mobile/player/BasePlayerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/Player;
    .locals 2

    .line 20
    const-class v0, Lcom/audible/mobile/metric/logger/MetricManager;

    invoke-virtual {p2, v0}, Lcom/audible/mobile/framework/ComponentRegistry;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/metric/logger/MetricManager;

    .line 21
    invoke-virtual {p0, p1, p2}, Lcom/audible/mobile/player/exo/BaseExoPlayerFactory;->getMediaSourceProvider(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;

    move-result-object p2

    .line 22
    new-instance v1, Lcom/audible/mobile/player/exo/ExoPlayerController;

    invoke-direct {v1, p1, v0, p2}, Lcom/audible/mobile/player/exo/ExoPlayerController;-><init>(Landroid/content/Context;Lcom/audible/mobile/metric/logger/MetricManager;Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;)V

    return-object v1
.end method

.method protected abstract getMediaSourceProvider(Landroid/content/Context;Lcom/audible/mobile/framework/ComponentRegistry;)Lcom/audible/mobile/player/exo/sources/MediaSourceProvider;
.end method
