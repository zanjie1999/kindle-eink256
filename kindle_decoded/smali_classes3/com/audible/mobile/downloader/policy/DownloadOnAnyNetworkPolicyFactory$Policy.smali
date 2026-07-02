.class public Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;
.super Ljava/lang/Object;
.source "DownloadOnAnyNetworkPolicyFactory.java"

# interfaces
.implements Lcom/audible/mobile/downloader/policy/NetworkStatePolicy;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Policy"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final transient mConnMgr:Landroid/net/ConnectivityManager;


# direct methods
.method protected constructor <init>(Landroid/net/ConnectivityManager;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;->mConnMgr:Landroid/net/ConnectivityManager;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 50
    invoke-static {}, Lcom/audible/mobile/downloader/policy/NetworkPolicyController;->getAppContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 55
    new-instance v1, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-direct {v1, v0}, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;-><init>(Landroid/net/ConnectivityManager;)V

    return-object v1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "NetworkPolicyController was not prepopulated with the app context!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public canDownload()Z
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/audible/mobile/downloader/policy/DownloadOnAnyNetworkPolicyFactory$Policy;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
