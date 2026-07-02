.class public Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;
.super Ljava/lang/Object;
.source "MobileWeblabMetricExecutor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$ExecutorHolder;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I = 0x0

.field private static final MAX_POOL_SIZE:I = 0x4

.field private static final THREAD_ALIVE_TIME:I = 0x1388


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;


# direct methods
.method private constructor <init>()V
    .locals 8

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v7, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x4

    const-wide/16 v3, 0x1388

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v7, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;
    .locals 1

    .line 27
    invoke-static {}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$ExecutorHolder;->access$100()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExecutorService()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;->executorService:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
