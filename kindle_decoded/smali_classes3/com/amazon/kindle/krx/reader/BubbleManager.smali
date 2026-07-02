.class public Lcom/amazon/kindle/krx/reader/BubbleManager;
.super Lcom/amazon/kindle/krx/reader/BaseBubbleManager;
.source "BubbleManager.java"


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/events/IPubSubEventsManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BaseBubbleManager;-><init>()V

    .line 26
    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 1

    .line 89
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    .line 90
    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createNewBuilder()Lcom/amazon/kindle/krx/reader/IBubbleBuilder;
    .locals 1

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/reader/BubbleBuilder;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/reader/BubbleBuilder;-><init>()V

    return-object v0
.end method

.method public dismissShownBubble()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 60
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBubbleView()Lcom/amazon/kcp/reader/ui/BubbleView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/16 v1, 0x8

    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method public handleReaderActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 85
    invoke-virtual {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;->dismissShownBubble()V

    return-void
.end method

.method public isBubbleAvailable()Z
    .locals 2

    .line 101
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBubbleView()Lcom/amazon/kcp/reader/ui/BubbleView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public isBubbleShowing()Z
    .locals 2

    .line 70
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 75
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBubbleView()Lcom/amazon/kcp/reader/ui/BubbleView;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 80
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public showBubble(Lcom/amazon/kindle/krx/reader/IBubble;FF)V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/BubbleManager;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getBubbleView()Lcom/amazon/kcp/reader/ui/BubbleView;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 46
    :cond_1
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 47
    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IBubble;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 48
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 49
    invoke-virtual {v0, p2, p3}, Lcom/amazon/kcp/reader/ui/BubbleView;->setPosition(FF)V

    const/4 p1, 0x1

    .line 50
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    return-void
.end method
