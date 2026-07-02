.class public interface abstract Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator;
.super Ljava/lang/Object;
.source "IAssetProgressCalculator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
    }
.end annotation


# virtual methods
.method public abstract calculateInitialState()V
.end method

.method public abstract deregisterProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V
.end method

.method public abstract getPercentage()I
.end method

.method public abstract getState()Lcom/amazon/kindle/yj/tracker/IAssetProgressCalculator$ProgressStateEnum;
.end method

.method public abstract registerProgressUpdateListener(Lcom/amazon/kindle/yj/tracker/IProgressUpdateListener;)V
.end method
