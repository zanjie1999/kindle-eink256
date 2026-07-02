.class public Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;
.super Lcom/amazon/android/docviewer/mobi/MobiView;
.source "NewsstandMobiView.java"


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/NewsstandDocViewer;Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiView;-><init>(Lcom/amazon/android/docviewer/mobi/MobiDocViewer;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public initializePageFlipper(Landroid/content/Context;)V
    .locals 4

    .line 18
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-direct {v0, p1, v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    .line 21
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 23
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNewPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getNewPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;

    move-result-object v0

    .line 25
    new-instance v2, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-direct {v2, p1, v0, v3}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;-><init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1, v2}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setViewDelegator(Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;)V

    .line 27
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    new-instance v0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v2, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView$1;

    invoke-direct {v2, p0}, Lcom/amazon/android/docviewer/mobi/NewsstandMobiView$1;-><init>(Lcom/amazon/android/docviewer/mobi/NewsstandMobiView;)V

    invoke-direct {v0, v1, v1, v2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 42
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->removeAllViews()V

    .line 43
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/MobiView;->m_flipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
