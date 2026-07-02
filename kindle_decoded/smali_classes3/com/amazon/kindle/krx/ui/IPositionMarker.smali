.class public interface abstract Lcom/amazon/kindle/krx/ui/IPositionMarker;
.super Ljava/lang/Object;
.source "IPositionMarker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;
    }
.end annotation


# virtual methods
.method public abstract getMarkedPosition()Lcom/amazon/kindle/krx/reader/IPosition;
.end method

.method public abstract getMarkerDrawableForMarkerLocation(Landroid/content/Context;Lcom/amazon/kindle/krx/ui/IPositionMarker$MarkerLocation;)Landroid/graphics/drawable/Drawable;
.end method
