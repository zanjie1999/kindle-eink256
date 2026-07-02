.class public interface abstract Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;
.super Ljava/lang/Object;
.source "IMarkedPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IMarkedPositionsChangedListener"
.end annotation


# virtual methods
.method public abstract onMarkedPositionsChanged(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/reader/IPosition;",
            ">;)V"
        }
    .end annotation
.end method
