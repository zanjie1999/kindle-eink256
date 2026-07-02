.class public Lcom/amazon/nwstd/ui/PopupWidget;
.super Landroid/widget/RelativeLayout;
.source "PopupWidget.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/AnimatableVisibility;


# instance fields
.field private mIsShown:Z

.field private mLandscapeModeCloseAnimation:Landroid/view/animation/Animation;

.field private mLandscapeModeOpenAnimation:Landroid/view/animation/Animation;

.field private mPortraitModeCloseAnimation:Landroid/view/animation/Animation;

.field private mPortraitModeOpenAnimation:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 17
    iput-boolean p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeOpenAnimation:Landroid/view/animation/Animation;

    .line 20
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeOpenAnimation:Landroid/view/animation/Animation;

    .line 21
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeCloseAnimation:Landroid/view/animation/Animation;

    .line 22
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeCloseAnimation:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public hide(Z)Z
    .locals 3

    .line 31
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 33
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeCloseAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    .line 35
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeCloseAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    const/16 p1, 0x8

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 42
    iput-boolean v1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    return v0

    :cond_2
    return v1
.end method

.method public isShown()Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 82
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setLandscapeModeCloseAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeCloseAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setLandscapeModeOpenAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeOpenAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setPortraitModeCloseAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeCloseAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setPortraitModeOpenAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeOpenAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public show(Z)Z
    .locals 3

    .line 57
    iget-boolean v0, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mPortraitModeOpenAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 62
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    iget-object p1, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mLandscapeModeOpenAnimation:Landroid/view/animation/Animation;

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 67
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 68
    iput-boolean v0, p0, Lcom/amazon/nwstd/ui/PopupWidget;->mIsShown:Z

    return v0

    :cond_2
    return v1
.end method
