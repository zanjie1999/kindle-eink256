.class public interface abstract Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;
.super Ljava/lang/Object;
.source "IKRXReversibleSeekBar.java"


# virtual methods
.method public abstract attachToParent(Landroid/view/ViewGroup;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract getSeekBar()Landroid/widget/SeekBar;
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public abstract invalidate()V
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;)V
.end method

.method public abstract onTouchEvent(Landroid/view/MotionEvent;)Z
.end method

.method public abstract removeSeekBarFromOldParent()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
.end method

.method public abstract setMax(I)V
.end method

.method public abstract setMinPosition(I)V
.end method

.method public abstract setProgress(I)V
.end method

.method public abstract setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V
.end method

.method public abstract updateDimensions(II)V
.end method
