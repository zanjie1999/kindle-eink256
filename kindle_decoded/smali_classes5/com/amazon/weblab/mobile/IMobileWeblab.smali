.class public interface abstract Lcom/amazon/weblab/mobile/IMobileWeblab;
.super Ljava/lang/Object;
.source "IMobileWeblab.java"


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method

.method public abstract getTreatmentAssignment()Ljava/lang/String;
.end method

.method public abstract recordTrigger()Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation
.end method
