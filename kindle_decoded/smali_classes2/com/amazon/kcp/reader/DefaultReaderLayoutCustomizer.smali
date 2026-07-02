.class public Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;
.super Ljava/lang/Object;
.source "DefaultReaderLayoutCustomizer.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;
    }
.end annotation


# instance fields
.field private volatile handler:Landroid/os/Handler;

.field private volatile setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->handler:Landroid/os/Handler;

    .line 29
    iput-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    return-void
.end method


# virtual methods
.method public getSystemUIFlagsAnimator(Lcom/amazon/kcp/reader/ui/ReaderLayout;I)Landroid/animation/Animator;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    invoke-static {v0}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->access$000(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;)V

    :cond_0
    and-int/lit8 p2, p2, 0x11

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 115
    :goto_0
    new-instance v1, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;-><init>(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;ZLcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$1;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    .line 116
    new-instance p1, Lcom/amazon/kcp/animation/RunnableAnimator;

    iget-object p2, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    invoke-direct {p1, p2, v0}, Lcom/amazon/kcp/animation/RunnableAnimator;-><init>(Ljava/lang/Runnable;Z)V

    return-object p1
.end method

.method public getSystemUILayoutFlags()I
    .locals 1

    const/16 v0, 0x1700

    return v0
.end method

.method public getSystemUiFlags(Z)I
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->getSystemUILayoutFlags()I

    move-result v0

    if-nez p1, :cond_0

    or-int/lit8 v0, v0, 0x6

    :cond_0
    return v0
.end method

.method public onCreate(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 38
    invoke-static {p1}, Lcom/amazon/kindle/panels/ReaderTOCPanelProviderProvider;->supportsTOCPanel(Lcom/amazon/kcp/reader/ReaderActivity;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 39
    sget p2, Lcom/amazon/kindle/krl/R$id;->reader_drawer_layout:I

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/drawerlayout/widget/DrawerLayout;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 41
    invoke-virtual {p1, p2}, Landroidx/drawerlayout/widget/DrawerLayout;->setDrawerLockMode(I)V

    :cond_0
    return-void
.end method

.method public onReaderModeChanged(Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    return-void
.end method

.method public onSelectionAreaChanged(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 97
    invoke-virtual {p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibility(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V

    :cond_0
    return-void
.end method

.method protected setSystemUiVisibility(ZLcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 1

    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    .line 123
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->getSystemUiFlags(Z)I

    move-result p1

    .line 124
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getSystemUiVisibility()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 126
    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    :goto_0
    return-void
.end method

.method public setVisibleOverlays(Lcom/amazon/kcp/reader/ui/ReaderLayout;II)V
    .locals 2

    and-int/lit8 p2, p2, 0x11

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 55
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->handler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->handler:Landroid/os/Handler;

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    if-eqz v0, :cond_2

    .line 60
    iget-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    invoke-static {v0}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;->access$000(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;)V

    .line 62
    :cond_2
    new-instance v0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;-><init>(Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;ZLcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$1;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    .line 63
    iget-object p1, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->handler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer;->setSystemUiVisibilityRunnable:Lcom/amazon/kcp/reader/DefaultReaderLayoutCustomizer$SetSystemUiVisibilityRunnable;

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
