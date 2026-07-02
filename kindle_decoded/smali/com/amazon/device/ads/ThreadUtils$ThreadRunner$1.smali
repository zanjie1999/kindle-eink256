.class Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$ExecutionStyle;Lcom/amazon/device/ads/ThreadUtils$ExecutionThread;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$task:Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ThreadUtils$ThreadRunner;Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V
    .locals 0

    .line 191
    iput-object p2, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;->val$task:Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;

    iput-object p3, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;->val$params:[Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;->val$task:Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;

    iget-object v1, p0, Lcom/amazon/device/ads/ThreadUtils$ThreadRunner$1;->val$params:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->executeAsyncTask(Lcom/amazon/device/ads/ThreadUtils$MobileAdsAsyncTask;[Ljava/lang/Object;)V

    return-void
.end method
