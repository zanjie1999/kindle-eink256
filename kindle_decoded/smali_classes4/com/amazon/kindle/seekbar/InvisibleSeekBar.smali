.class public Lcom/amazon/kindle/seekbar/InvisibleSeekBar;
.super Landroid/widget/SeekBar;
.source "InvisibleSeekBar.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/IKRXReversibleSeekBar;


# instance fields
.field protected currentProgress:I

.field protected maxProgress:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->currentProgress:I

    .line 21
    iput p1, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->maxProgress:I

    return-void
.end method


# virtual methods
.method public attachToParent(Landroid/view/ViewGroup;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public getMax()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->maxProgress:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 29
    iget v0, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->currentProgress:I

    return v0
.end method

.method public getSeekBar()Landroid/widget/SeekBar;
    .locals 0

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public invalidate()V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    .line 55
    invoke-virtual {p0, p1, p1}, Landroid/widget/SeekBar;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public removeSeekBarFromOldParent()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 76
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V
    .locals 0

    return-void
.end method

.method public setMax(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->maxProgress:I

    return-void
.end method

.method public setMinPosition(I)V
    .locals 0

    return-void
.end method

.method public setProgress(I)V
    .locals 0

    .line 34
    iput p1, p0, Lcom/amazon/kindle/seekbar/InvisibleSeekBar;->currentProgress:I

    return-void
.end method

.method public setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V
    .locals 0

    return-void
.end method

.method public updateDimensions(II)V
    .locals 0

    return-void
.end method
