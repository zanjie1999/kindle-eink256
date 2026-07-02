.class public interface abstract Lcom/amazon/kindle/network/INetworkService;
.super Ljava/lang/Object;
.source "INetworkService.java"

# interfaces
.implements Lcom/amazon/kindle/krx/network/INetworkService;


# virtual methods
.method public abstract acquireLock()Lcom/amazon/kindle/network/IWifiLockManager$IWifiLock;
.end method

.method public abstract getActiveNetworkInfo()Landroid/net/NetworkInfo;
.end method

.method public abstract getActiveNetworkProperties()Lcom/amazon/kindle/network/NetworkProperties;
.end method

.method public abstract getWANType()Ljava/lang/String;
.end method

.method public abstract hasNetworkConnectivity()Z
.end method

.method public abstract isDataConnected()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract isDownloadSizeLimited(J)Z
.end method

.method public abstract isTransportExcluded(Lcom/amazon/kindle/krx/messaging/ITodoItem$TransportMethod;)Z
.end method

.method public abstract isWanConnected()Z
.end method

.method public abstract isWifiConnected()Z
.end method
