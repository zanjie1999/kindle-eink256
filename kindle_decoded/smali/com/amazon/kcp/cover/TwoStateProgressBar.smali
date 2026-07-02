.class public Lcom/amazon/kcp/cover/TwoStateProgressBar;
.super Landroid/widget/FrameLayout;
.source "TwoStateProgressBar.java"

# interfaces
.implements Lcom/amazon/kcp/library/ui/IDownloadProgressIndicator;


# instance fields
.field private finalBar:Landroid/widget/ProgressBar;

.field private initialBar:Landroid/widget/ProgressBar;

.field private secondStateActive:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->secondStateActive:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->secondStateActive:Z

    return-void
.end method


# virtual methods
.method public getProgress()I
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    return v0
.end method

.method public isIndeterminate()Z
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isIndeterminate()Z

    move-result v0

    return v0
.end method

.method public onDownloadContentOpenable()V
    .locals 0

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/TwoStateProgressBar;->setSecondStateActive()V

    return-void
.end method

.method public onDownloadQueued()V
    .locals 1

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/TwoStateProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public onDownloadRequiredComplete()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 41
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 42
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->initial_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    .line 43
    sget v0, Lcom/amazon/kindle/librarymodule/R$id;->final_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    .line 45
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    .line 49
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public reset()V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 133
    iput-boolean v1, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->secondStateActive:Z

    .line 134
    invoke-virtual {p0, v1}, Lcom/amazon/kcp/cover/TwoStateProgressBar;->setProgress(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 1

    .line 121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 122
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 123
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 87
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setSecondStateActive()V
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->secondStateActive:Z

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->initialBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->finalBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const/4 v0, 0x1

    .line 116
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/TwoStateProgressBar;->secondStateActive:Z

    return-void
.end method
