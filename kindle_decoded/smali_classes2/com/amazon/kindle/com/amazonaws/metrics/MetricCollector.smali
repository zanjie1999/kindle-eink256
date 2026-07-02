.class public abstract Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector;
.super Ljava/lang/Object;
.source "MetricCollector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector$Factory;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector$1;

    invoke-direct {v0}, Lcom/amazon/kindle/com/amazonaws/metrics/MetricCollector$1;-><init>()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getRequestMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/RequestMetricCollector;
.end method

.method public abstract getServiceMetricCollector()Lcom/amazon/kindle/com/amazonaws/metrics/ServiceMetricCollector;
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract stop()Z
.end method
