.class public interface abstract Lcom/amazon/krf/platform/Selection;
.super Ljava/lang/Object;
.source "Selection.java"


# virtual methods
.method public abstract clearSelection()Z
.end method

.method public abstract getSelectionState()Lcom/amazon/krf/platform/SelectionState;
.end method

.method public abstract release()V
.end method

.method public abstract setSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
.end method

.method public abstract setSelectionRange(Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract setSelectionRanges(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/PositionRange;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V
.end method

.method public abstract setUnderlineSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;IF)V
.end method
