.class public Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;
.super Ljava/lang/Object;
.source "ConnectivityManagerWrapper.java"


# instance fields
.field private final mInner:Landroid/net/ConnectivityManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "connectivity"

    .line 21
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    return-void
.end method

.method public constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 74
    :cond_0
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    invoke-direct {v0, p1}, Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;-><init>(Landroid/net/NetworkInfo;)V

    return-object v0
.end method


# virtual methods
.method public getActiveNetworkInfo()Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 44
    invoke-direct {p0, v0}, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    move-result-object v0

    return-object v0
.end method

.method public getAllNetworkInfo()[Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;
    .locals 4

    .line 56
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v0

    .line 57
    array-length v1, v0

    new-array v1, v1, [Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    const/4 v2, 0x0

    .line 59
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 61
    aget-object v3, v0, v2

    invoke-direct {p0, v3}, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getBackgroundDataSetting()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    return v0
.end method

.method public getNetworkInfo(I)Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->wrapNetworkInfo(Landroid/net/NetworkInfo;)Lcom/amazon/whispersync/dcp/framework/NetworkInfoWrapper;

    move-result-object p1

    return-object p1
.end method

.method public getNetworkPreference()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getNetworkPreference()I

    move-result v0

    return v0
.end method

.method public isActiveNetworkMetered()Z
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isActiveNetworkMetered()Z

    move-result v0

    return v0
.end method

.method public requestRouteToHost(II)Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result p1

    return p1
.end method

.method public setNetworkPreference(I)V
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->setNetworkPreference(I)V

    return-void
.end method

.method public startUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public stopUsingNetworkFeature(ILjava/lang/String;)I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ConnectivityManagerWrapper;->mInner:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1, p2}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    move-result p1

    return p1
.end method
