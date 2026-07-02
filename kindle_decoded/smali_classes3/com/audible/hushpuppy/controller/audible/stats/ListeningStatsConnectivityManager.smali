.class public Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsConnectivityManager;
.super Ljava/lang/Object;
.source "ListeningStatsConnectivityManager.java"

# interfaces
.implements Lcom/audible/application/stats/util/IConnectivityManager;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The context param must not be null"

    .line 28
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsConnectivityManager;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final hasNetworkConnection()Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/audible/stats/ListeningStatsConnectivityManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/audible/hushpuppy/common/system/AndroidUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
