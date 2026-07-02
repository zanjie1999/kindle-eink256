.class Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;
.super Ljava/lang/Object;
.source "WeblabClientBase.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/cache/ICacheRefresher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/WeblabClientBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CacheListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;


# direct methods
.method private constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientBase;Lcom/amazon/weblab/mobile/WeblabClientBase$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;-><init>(Lcom/amazon/weblab/mobile/WeblabClientBase;)V

    return-void
.end method

.method private recordRefresh()V
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->access$000(Lcom/amazon/weblab/mobile/WeblabClientBase;)Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/weblab/mobile/settings/IMobileWeblabClientAttributes;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WeblabClientBaseCacheListenerRefreshOnCacheMiss"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v1, v0, v2, v3}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricTask;->incrementPeriodicMetric(Ljava/lang/String;Ljava/lang/String;D)V

    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;->this$0:Lcom/amazon/weblab/mobile/WeblabClientBase;

    invoke-virtual {v0}, Lcom/amazon/weblab/mobile/WeblabClientBase;->updateAsync()Ljava/util/concurrent/Future;

    .line 74
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/WeblabClientBase$CacheListener;->recordRefresh()V

    return-void
.end method
