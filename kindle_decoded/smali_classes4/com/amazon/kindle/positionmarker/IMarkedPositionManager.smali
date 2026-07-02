.class public interface abstract Lcom/amazon/kindle/positionmarker/IMarkedPositionManager;
.super Ljava/lang/Object;
.source "IMarkedPositionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;
    }
.end annotation


# virtual methods
.method public abstract addMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V
.end method

.method public abstract getMarkerDrawablesWithinRange(Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;Landroid/content/Context;Lcom/amazon/kindle/krx/reader/IPositionRange;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;",
            "Landroid/content/Context;",
            "Lcom/amazon/kindle/krx/reader/IPositionRange;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end method

.method public abstract notifyPositionMarkerUpdated(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method

.method public abstract registerPositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method

.method public abstract removeMarkedPositionsChangedListener(Lcom/amazon/kindle/positionmarker/IMarkedPositionManager$IMarkedPositionsChangedListener;)V
.end method

.method public abstract removePositionMarker(Lcom/amazon/kindle/krx/ui/IPositionMarker;)V
.end method
