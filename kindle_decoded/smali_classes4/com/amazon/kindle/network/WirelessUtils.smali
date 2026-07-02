.class public Lcom/amazon/kindle/network/WirelessUtils;
.super Ljava/lang/Object;
.source "WirelessUtils.java"


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kindle/network/WirelessUtils;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public hasNetworkConnectivity()Z
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, v0}, Lcom/amazon/kindle/network/WirelessUtils;->hasNetworkConnectivity(Z)Z

    move-result v0

    return v0
.end method

.method public hasNetworkConnectivity(Z)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/kindle/network/WirelessUtils;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/network/NetworkService;->hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z

    move-result p1

    return p1
.end method

.method public isWifiConnected()Z
    .locals 3

    .line 55
    iget-object v0, p0, Lcom/amazon/kindle/network/WirelessUtils;->context:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/network/NetworkService;->hasNetworkConnectivity(Landroid/content/Context;Ljava/lang/Integer;Z)Z

    move-result v0

    return v0
.end method
