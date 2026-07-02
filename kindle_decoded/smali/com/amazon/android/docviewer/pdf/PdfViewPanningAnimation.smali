.class public Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;
.super Lcom/amazon/android/docviewer/pdf/PanningAnimation;
.source "PdfViewPanningAnimation.java"


# instance fields
.field private final pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;


# direct methods
.method public constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PanningAnimation;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    return-void
.end method


# virtual methods
.method protected applyPanningTransformationToView(FF)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfView;->panPage(FF)V

    return-void
.end method

.method public startAnimation()V
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfViewPanningAnimation;->pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
