.class public Lcom/amazon/kcp/reader/PdfNavigator;
.super Lcom/amazon/kcp/reader/ReaderNavigator;
.source "PdfNavigator.java"


# static fields
.field private static PANNING_SPEED:F = 1000.0f


# instance fields
.field pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 29
    iget-object v0, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ReaderNavigator;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/pdf/PdfView;

    if-eqz v0, :cond_0

    .line 32
    new-instance v1, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    invoke-direct {v1, v0}, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;-><init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    .line 37
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ReaderNavigator;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    if-eqz v0, :cond_7

    const/16 v0, 0x13

    if-eq p1, v0, :cond_3

    const/16 v0, 0x14

    if-eq p1, v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, -0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    .line 48
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    if-nez p2, :cond_5

    .line 49
    iget-object p2, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    const/4 v0, 0x0

    sget v2, Lcom/amazon/kcp/reader/PdfNavigator;->PANNING_SPEED:F

    int-to-float p1, p1

    mul-float v2, v2, p1

    invoke-virtual {p2, v0, v2}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->startScrollingPan(FF)V

    .line 50
    iget-object p1, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    invoke-virtual {p1}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 51
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;->startAnimation()V

    goto :goto_1

    .line 54
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/PdfNavigator;->pdfViewPanningAnimation:Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;->stopScrollingPan()V

    :cond_6
    :goto_1
    return v1

    :cond_7
    :goto_2
    const/4 p1, 0x0

    return p1
.end method
