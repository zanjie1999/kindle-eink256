.class public interface abstract Lcom/amazon/krf/platform/SelectionState;
.super Ljava/lang/Object;
.source "SelectionState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/SelectionState$SelectionToolType;,
        Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;,
        Lcom/amazon/krf/platform/SelectionState$SelectionMode;,
        Lcom/amazon/krf/platform/SelectionState$SelectionType;,
        Lcom/amazon/krf/platform/SelectionState$LoupeStyle;,
        Lcom/amazon/krf/platform/SelectionState$HandleStyle;
    }
.end annotation


# virtual methods
.method public abstract getSelectionAdjustmentDirection()Lcom/amazon/krf/platform/SelectionState$SelectionAdjustmentDirection;
.end method

.method public abstract getSelectionMode()Lcom/amazon/krf/platform/SelectionState$SelectionMode;
.end method

.method public abstract getSelectionRange()Lcom/amazon/krf/platform/PositionRange;
.end method

.method public abstract getSelectionRects()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSelectionText()Ljava/lang/String;
.end method

.method public abstract getSelectionToolType()Lcom/amazon/krf/platform/SelectionState$SelectionToolType;
.end method

.method public abstract getSelectionTypes()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/amazon/krf/platform/SelectionState$SelectionType;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isNewSelection()Z
.end method

.method public abstract isSelectionCleared()Z
.end method
