.class Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;
.super Landroid/graphics/drawable/ColorDrawable;
.source "PdfBackgroundDrawable.java"


# instance fields
.field private final m_cachedClipBounds:Landroid/graphics/Rect;

.field private final m_cachedTileViewRect:Landroid/graphics/Rect;

.field private final m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;


# direct methods
.method public constructor <init>(ILcom/amazon/android/docviewer/pdf/PdfView;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 17
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedClipBounds:Landroid/graphics/Rect;

    .line 18
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedTileViewRect:Landroid/graphics/Rect;

    .line 22
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    return-void
.end method

.method private final isBackgroundVisible(Landroid/graphics/Canvas;)Z
    .locals 3

    .line 40
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfView;->getCurrentTileView()Lcom/amazon/android/docviewer/pdf/PdfTileView;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedTileViewRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 52
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedTileViewRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_cachedClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfTileView;->isPageFillingView()Z

    move-result p1

    xor-int/2addr v0, p1

    :cond_2
    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->m_pdfView:Lcom/amazon/android/docviewer/pdf/PdfView;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfView;->isAnimatingViewChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfBackgroundDrawable;->isBackgroundVisible(Landroid/graphics/Canvas;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/ColorDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method
