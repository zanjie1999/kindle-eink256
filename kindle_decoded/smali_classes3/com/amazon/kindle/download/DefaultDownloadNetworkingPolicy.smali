.class public final Lcom/amazon/kindle/download/DefaultDownloadNetworkingPolicy;
.super Ljava/lang/Object;
.source "IDownloadNetworkingPolicy.kt"

# interfaces
.implements Lcom/amazon/kindle/download/IDownloadNetworkingPolicy;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isDownloadingEnabled(Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;)Z
    .locals 1

    const-string v0, "connectionEvent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/ConnectivityChangedEvent;->isConnected()Z

    move-result p1

    return p1
.end method

.method public isDownloadingEnabled(Lcom/amazon/kindle/network/INetworkService;)Z
    .locals 1

    const-string v0, "networkService"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-interface {p1}, Lcom/amazon/kindle/network/INetworkService;->hasNetworkConnectivity()Z

    move-result p1

    return p1
.end method
