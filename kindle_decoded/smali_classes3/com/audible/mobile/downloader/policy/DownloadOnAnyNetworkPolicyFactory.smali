.class public Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory;
.super Ljava/lang/Object;
.source "DownloadOnAnyNetworkPolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/NetworkStatePolicyFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPolicy(Landroid/content/Context;)Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
    .locals 2

    .line 17
    new-instance v0, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-direct {v0, p1}, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v0
.end method
