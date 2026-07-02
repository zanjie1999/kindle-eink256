.class public Lcom/amazon/kindle/socialsharing/util/ConnectivityHelper;
.super Ljava/lang/Object;
.source "ConnectivityHelper.java"


# direct methods
.method public static hasNetworkConnection()Z
    .locals 3

    .line 29
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 31
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSocialSharingPlugin()Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;->reportConnectivityType(Ljava/lang/String;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
