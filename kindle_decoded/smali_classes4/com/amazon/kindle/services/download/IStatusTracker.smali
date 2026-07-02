.class public interface abstract Lcom/amazon/kindle/services/download/IStatusTracker;
.super Ljava/lang/Object;
.source "IStatusTracker.java"


# virtual methods
.method public abstract reportCurrentProgress(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract reportState(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract reset()V
.end method

.method public abstract setMaxProgress(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
