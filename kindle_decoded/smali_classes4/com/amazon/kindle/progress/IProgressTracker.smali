.class public interface abstract Lcom/amazon/kindle/progress/IProgressTracker;
.super Ljava/lang/Object;
.source "IProgressTracker.java"


# virtual methods
.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getPriority()I
.end method

.method public abstract getRetryCount()I
.end method

.method public abstract getTaskCreated()J
.end method

.method public abstract getTaskLastUpdated()J
.end method

.method public abstract getTaskProgress()I
.end method

.method public abstract getTaskType()Ljava/lang/String;
.end method

.method public abstract setRetryCount(I)V
.end method

.method public abstract setTaskCreated(J)V
.end method

.method public abstract setTaskLastUpdated(J)V
.end method
