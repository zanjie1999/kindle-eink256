.class public Lcom/amazon/krf/platform/performance/PerformanceLogging;
.super Ljava/lang/Object;
.source "PerformanceLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "PerformanceLogging"

.field private static sPerformanceLogger:Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPerformanceLogger()Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/krf/platform/performance/PerformanceLogging;->sPerformanceLogger:Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;

    return-object v0
.end method

.method public static logPerformanceMarker(Ljava/lang/String;)V
    .locals 3

    .line 47
    sget-object v0, Lcom/amazon/krf/platform/performance/PerformanceLogging;->sPerformanceLogger:Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0, p0}, Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;->logPerformanceMarker(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\t"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :goto_0
    return-void
.end method

.method public static setPerformanceLogger(Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;)V
    .locals 0

    .line 30
    sput-object p0, Lcom/amazon/krf/platform/performance/PerformanceLogging;->sPerformanceLogger:Lcom/amazon/krf/platform/performance/PerformanceLogging$PerformanceLogger;

    return-void
.end method
