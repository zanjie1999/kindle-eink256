.class Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$ExecutorHolder;
.super Ljava/lang/Object;
.source "MobileWeblabMetricExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExecutorHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;-><init>(Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$1;)V

    sput-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$ExecutorHolder;->INSTANCE:Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    return-void
.end method

.method static synthetic access$100()Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;
    .locals 1

    .line 22
    sget-object v0, Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor$ExecutorHolder;->INSTANCE:Lcom/amazon/weblab/mobile/metrics/MobileWeblabMetricExecutor;

    return-object v0
.end method
