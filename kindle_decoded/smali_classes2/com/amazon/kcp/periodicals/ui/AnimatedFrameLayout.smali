.class public Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AnimatedFrameLayout.java"


# instance fields
.field private animationEndCallback:Lcom/amazon/foundation/ICallback;

.field private animationStartCallback:Lcom/amazon/foundation/ICallback;

.field private readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    return-void
.end method

.method protected onAnimationEnd()V
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    .line 75
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationEndCallback:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 76
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationEndCallback:Lcom/amazon/foundation/ICallback;

    :cond_0
    return-void
.end method

.method protected onAnimationStart()V
    .locals 1

    .line 83
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationStartCallback:Lcom/amazon/foundation/ICallback;

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0}, Lcom/amazon/foundation/ICallback;->execute()V

    const/4 v0, 0x0

    .line 87
    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationStartCallback:Lcom/amazon/foundation/ICallback;

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 93
    sget v0, Lcom/amazon/kindle/newsstand/core/R$id;->reader_menu_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iput-object v0, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;Lcom/amazon/foundation/ICallback;Lcom/amazon/foundation/ICallback;)V
    .locals 0

    .line 65
    iput-object p2, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationStartCallback:Lcom/amazon/foundation/ICallback;

    .line 66
    iput-object p3, p0, Lcom/amazon/kcp/periodicals/ui/AnimatedFrameLayout;->animationEndCallback:Lcom/amazon/foundation/ICallback;

    .line 68
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
