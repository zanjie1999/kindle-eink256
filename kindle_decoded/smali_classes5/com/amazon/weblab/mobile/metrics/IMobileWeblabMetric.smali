.class public interface abstract Lcom/amazon/weblab/mobile/metrics/IMobileWeblabMetric;
.super Ljava/lang/Object;
.source "IMobileWeblabMetric.java"


# virtual methods
.method public abstract getMetric()Ljava/lang/Object;
.end method

.method public abstract increment(Ljava/lang/String;D)V
.end method

.method public abstract log(Ljava/lang/String;I)V
.end method

.method public abstract logError(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract logTime(Ljava/lang/String;D)V
.end method
