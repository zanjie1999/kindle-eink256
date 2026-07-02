.class public abstract Lcom/amazon/android/docviewer/mobi/PageDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PageDrawable.java"


# static fields
.field private static final PROGRESS_SIZE:I = 0x1e


# instance fields
.field private currentFooter:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_authorWidth:F

.field private m_bounds:Landroid/graphics/Rect;

.field private m_cachedTitle:Ljava/lang/String;

.field private m_callback:Landroid/graphics/drawable/Drawable$Callback;

.field private final m_centerTitle:Z

.field private final m_context:Landroid/content/Context;

.field private m_footerY:F

.field private m_gutter:Landroid/graphics/drawable/Drawable;

.field private m_hasFooter:Z

.field private m_hasTime:Z

.field private final m_hasTitle:Z

.field private m_headerY:F

.field private m_marginsPaint:Landroid/graphics/Paint;

.field private m_pageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

.field private final m_pageRect:Landroid/graphics/Rect;

.field private final m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

.field private m_pageTextDecorationHeight:I

.field private m_progressDrawable:Landroid/graphics/drawable/Drawable;

.field private m_progressRect:Landroid/graphics/Rect;

.field private m_showFooter:Z

.field private m_textDecorationPaint:Landroid/text/TextPaint;

.field private final m_titleRect:Landroid/graphics/Rect;

.field private m_titleVisibile:Z

.field private m_titleWidth:F

.field private m_truncatedAuthor:Ljava/lang/String;

.field private m_truncatedTitle:Ljava/lang/String;

.field private m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZ)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    .line 112
    invoke-direct/range {v0 .. v5}, Lcom/amazon/android/docviewer/mobi/PageDrawable;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;ZZZ)V
    .locals 2

    .line 115
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 116
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_context:Landroid/content/Context;

    .line 117
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 118
    iput-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    .line 119
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    .line 120
    iput-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_showFooter:Z

    .line 121
    iput-boolean p5, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    const/4 p5, 0x1

    .line 122
    iput-boolean p5, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleVisibile:Z

    .line 123
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    .line 124
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v0, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    invoke-direct {v0, p1, p4, p2}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;-><init>(Landroid/content/Context;ZLcom/amazon/kindle/yj/IMarginalContentProviderContext;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    if-eqz p3, :cond_0

    .line 131
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 133
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    const/4 p3, 0x0

    .line 136
    :goto_0
    iget-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-nez p4, :cond_1

    iget-boolean p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz p4, :cond_2

    :cond_1
    const/4 p3, 0x1

    :cond_2
    if-eqz p3, :cond_3

    .line 141
    new-instance p3, Landroid/text/TextPaint;

    invoke-direct {p3, p5}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/krl/R$dimen;->reader_text_decoration_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    .line 143
    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p4, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 146
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/amazon/kindle/krl/R$bool;->reader_title_centered:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    iput-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_centerTitle:Z

    .line 147
    new-instance p3, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    iget-object p4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_context:Landroid/content/Context;

    invoke-direct {p3, p4, p2}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;-><init>(Landroid/content/Context;Lcom/amazon/android/docviewer/mobi/MobiDocViewer;)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    .line 150
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 151
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDefaultFontFace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setDefaultFontFace(Ljava/lang/String;)V

    const-string p2, "ProgressBar.<init>"

    .line 153
    invoke-static {p2, p5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 154
    new-instance p3, Landroid/widget/ProgressBar;

    invoke-direct {p3, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 155
    invoke-static {p2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 157
    invoke-virtual {p3}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressDrawable:Landroid/graphics/drawable/Drawable;

    const/16 p2, 0x1e

    .line 159
    invoke-virtual {p1, v1, v1, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 160
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressDrawable:Landroid/graphics/drawable/Drawable;

    new-instance p2, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;

    invoke-direct {p2, p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable$1;-><init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;)V

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/PageDrawable;)Landroid/graphics/drawable/Drawable$Callback;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_callback:Landroid/graphics/drawable/Drawable$Callback;

    return-object p0
.end method

.method private calculateAllMargins()V
    .locals 7

    .line 507
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    iget-object v0, v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->m_docView:Lcom/amazon/android/docviewer/mobi/MobiView;

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiView;->getCurrentSafeInsets()Lcom/amazon/kcp/util/device/SafeInsets;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/amazon/kcp/util/device/SafeInsets;

    invoke-direct {v0}, Lcom/amazon/kcp/util/device/SafeInsets;-><init>()V

    :goto_0
    move-object v6, v0

    .line 509
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getColumnCount()I

    move-result v2

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 510
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object v4

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getLineSettings()Lcom/amazon/android/docviewer/KindleDocLineSettings;

    move-result-object v5

    .line 509
    invoke-static/range {v1 .. v6}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getRenderedPageRectangle(Landroid/graphics/Rect;ILcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/kcp/util/device/SafeInsets;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateAllMargins(Landroid/graphics/Rect;)V

    return-void
.end method

.method private calculateAllMargins(Landroid/graphics/Rect;)V
    .locals 4

    .line 521
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    if-nez v0, :cond_0

    .line 522
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getVerticalMargin()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 525
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 528
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 530
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->setPagePageOffset(II)V

    .line 533
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v1

    .line 535
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    if-eqz v1, :cond_3

    .line 536
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getTopOffsetForTitle()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 537
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, p1

    iput v2, v0, Landroid/graphics/Rect;->left:I

    .line 538
    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 540
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz p1, :cond_2

    .line 541
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getClockWidthPercentage()F

    move-result v0

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    .line 542
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 543
    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 546
    :cond_2
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 549
    :cond_3
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateTextDecorationHeight()V

    .line 551
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz p1, :cond_4

    .line 552
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getTopOffsetForHeader()I

    move-result v0

    add-int/2addr p1, v0

    iget v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageTextDecorationHeight:I

    add-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_headerY:F

    .line 555
    :cond_4
    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_showFooter:Z

    if-eqz p1, :cond_5

    .line 556
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getBottomOffsetForFooter()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_footerY:F

    .line 559
    :cond_5
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/lit8 p1, p1, -0x1e

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v0, p1

    .line 560
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/lit8 p1, p1, -0x1e

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v1, p1

    .line 561
    new-instance p1, Landroid/graphics/Rect;

    add-int/lit8 v2, v0, 0x1e

    add-int/lit8 v3, v1, 0x1e

    invoke-direct {p1, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressRect:Landroid/graphics/Rect;

    return-void
.end method

.method private calculateAuthor(Ljava/lang/String;I)V
    .locals 1

    .line 824
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedAuthor:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 825
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->truncateText(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedAuthor:Ljava/lang/String;

    .line 826
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_authorWidth:F

    :cond_0
    return-void
.end method

.method private calculateTextDecorationHeight()V
    .locals 5

    .line 793
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-nez v0, :cond_0

    return-void

    .line 795
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 796
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    const/4 v3, 0x2

    const-string/jumbo v4, "\u00c3\u0080g"

    invoke-virtual {v1, v4, v2, v3, v0}, Landroid/text/TextPaint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 797
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageTextDecorationHeight:I

    const/4 v0, 0x0

    .line 798
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedTitle:Ljava/lang/String;

    .line 799
    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedAuthor:Ljava/lang/String;

    const/4 v0, 0x0

    .line 800
    iput v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleWidth:F

    return-void
.end method

.method private calculateTitle(Ljava/lang/String;I)V
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_cachedTitle:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 811
    :cond_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_cachedTitle:Ljava/lang/String;

    const/4 v0, 0x1

    .line 812
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->truncateText(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedTitle:Ljava/lang/String;

    .line 813
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleWidth:F

    :cond_1
    return-void
.end method

.method private drawAnnotations(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiPage;Landroid/graphics/Rect;)V
    .locals 2

    .line 407
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 411
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, v1, v0}, Lcom/amazon/android/docviewer/mobi/MobiPage;->setPagePageOffset(II)V

    .line 412
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/kindle/annotation/ui/AbstractAnnotationRendererFactory;->render(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/IDocumentPage;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private drawColumnSeparator(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 599
    iget p2, p2, Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;->begin:I

    .line 601
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getBeginningPosition()I

    move-result v0

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->isCoverPageAvailableKRF()Z

    move-result p2

    if-nez p2, :cond_1

    .line 602
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    .line 603
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 605
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    .line 606
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v3, v1

    add-int/2addr p2, v2

    add-int/2addr v0, v3

    .line 610
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2, v3, p2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 611
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private drawFooter(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V
    .locals 1

    .line 384
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_showFooter:Z

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->currentFooter:Ljava/util/List;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p2, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getFooterText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawFooter(Landroid/graphics/Canvas;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private drawFooter(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 742
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    .line 747
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 748
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 749
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 751
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v3, v1

    int-to-float v1, v3

    sub-float/2addr v1, p2

    div-float/2addr v1, v2

    if-eqz v0, :cond_5

    .line 753
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz p2, :cond_5

    .line 754
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_footerY:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 757
    :cond_1
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v5

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v4

    div-int/2addr v6, v5

    int-to-float v4, v6

    :goto_0
    if-ge v3, v1, :cond_5

    .line 762
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 763
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 764
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    if-nez v3, :cond_2

    .line 769
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    move v5, v0

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v1, -0x1

    if-ne v3, v7, :cond_3

    .line 775
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    add-float/2addr v0, v4

    div-float/2addr v5, v2

    :goto_1
    sub-float v5, v0, v5

    move v9, v5

    move v5, v0

    move v0, v9

    :goto_2
    if-eqz v6, :cond_4

    .line 785
    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz v7, :cond_4

    .line 786
    iget v8, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_footerY:F

    invoke-virtual {p1, v6, v0, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    move v0, v5

    goto :goto_0

    :cond_5
    :goto_3
    return-void
.end method

.method private drawHeader(Landroid/graphics/Canvas;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;)V"
        }
    .end annotation

    .line 671
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 673
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kindle/utils/RTLUtils;->shouldDisplayTextViewOrBookmarkAsRTL(Lcom/amazon/kindle/model/content/ILocalBookItem;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 678
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/Pair;

    .line 679
    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 680
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    .line 681
    iget-boolean v3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    if-eqz v3, :cond_0

    .line 682
    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocView;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getClockWidthPercentage()F

    move-result v4

    mul-float v3, v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 683
    invoke-direct {p0, v0, v3, v2}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->truncateText(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v1, :cond_1

    .line 686
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p2

    :goto_0
    if-eqz v0, :cond_9

    .line 688
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz p2, :cond_9

    .line 689
    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_headerY:F

    invoke-virtual {p1, v0, v1, v2, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_7

    .line 692
    :cond_2
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Rect;->right:I

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    div-int/2addr v5, v4

    int-to-float v3, v5

    const/4 v4, 0x0

    :goto_1
    if-ge v2, v0, :cond_9

    .line 697
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 698
    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    .line 699
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    if-nez v2, :cond_4

    .line 704
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_3

    iget v4, v4, Landroid/graphics/Rect;->right:I

    :goto_2
    int-to-float v4, v4

    sub-float/2addr v4, v5

    goto :goto_4

    :cond_3
    iget v4, v4, Landroid/graphics/Rect;->left:I

    :goto_3
    int-to-float v4, v4

    :goto_4
    move v5, v4

    goto :goto_6

    :cond_4
    add-int/lit8 v7, v0, -0x1

    if-ne v2, v7, :cond_6

    .line 710
    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_5

    iget v4, v4, Landroid/graphics/Rect;->left:I

    goto :goto_3

    :cond_5
    iget v4, v4, Landroid/graphics/Rect;->right:I

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 716
    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    sub-float v7, v3, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    goto :goto_5

    :cond_7
    move v7, v3

    :goto_5
    add-float/2addr v4, v7

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v5, v7

    sub-float v5, v4, v5

    move v9, v5

    move v5, v4

    move v4, v9

    :goto_6
    if-eqz v6, :cond_8

    .line 720
    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz v7, :cond_8

    .line 721
    iget v8, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_headerY:F

    invoke-virtual {p1, v6, v4, v8, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_8
    add-int/lit8 v2, v2, 0x1

    move v4, v5

    goto :goto_1

    :cond_9
    :goto_7
    return-void
.end method

.method private drawMargins(Landroid/graphics/Canvas;)V
    .locals 8

    .line 391
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 393
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, -0x1

    int-to-float v2, v0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v4, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v0

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 395
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 397
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v3, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v1

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v0

    iget-object v7, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTitle(Landroid/graphics/Canvas;Ljava/lang/String;)V
    .locals 3

    .line 565
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateTitle(Ljava/lang/String;I)V

    .line 567
    iget-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_centerTitle:Z

    if-nez p2, :cond_0

    .line 568
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    .line 570
    :cond_0
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleWidth:F

    float-to-int v1, v1

    sub-int/2addr p2, v1

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p2, v0

    .line 572
    :goto_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedTitle:Ljava/lang/String;

    int-to-float p2, p2

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageTextDecorationHeight:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawTitleAndAuthor(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 576
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getSpaceBetweenColumns()I

    move-result v0

    .line 578
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    double-to-int v1, v1

    .line 581
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocView;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getClockWidthPercentage()F

    move-result v5

    mul-float v2, v2, v5

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v2, v5

    float-to-int v2, v2

    sub-int v5, v1, v2

    .line 586
    invoke-direct {p0, p3, v5}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateAuthor(Ljava/lang/String;I)V

    .line 587
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v5, p3, Landroid/graphics/Rect;->left:I

    int-to-double v5, v5

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int/2addr p3, v0

    int-to-double v7, p3

    const-wide/high16 v9, 0x4010000000000000L    # 4.0

    div-double/2addr v7, v9

    add-double/2addr v5, v7

    iget p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_authorWidth:F

    float-to-double v7, p3

    div-double/2addr v7, v3

    sub-double/2addr v5, v7

    int-to-double v7, v2

    div-double/2addr v7, v3

    sub-double/2addr v5, v7

    .line 588
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedAuthor:Ljava/lang/String;

    double-to-int v5, v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    iget v11, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageTextDecorationHeight:I

    add-int/2addr v6, v11

    int-to-float v6, v6

    iget-object v11, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p3, v5, v6, v11}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/2addr v1, v2

    .line 591
    invoke-direct {p0, p2, v1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateTitle(Ljava/lang/String;I)V

    .line 592
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-double v1, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    add-int/2addr p2, v0

    int-to-double p2, p2

    div-double/2addr p2, v9

    add-double/2addr v1, p2

    iget p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleWidth:F

    float-to-double p2, p2

    div-double/2addr p2, v3

    sub-double/2addr v1, p2

    add-double/2addr v1, v7

    .line 593
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_truncatedTitle:Ljava/lang/String;

    double-to-int p3, v1

    int-to-float p3, p3

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageTextDecorationHeight:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getClockWidthPercentage()F
    .locals 3

    .line 870
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 871
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 872
    sget v2, Lcom/amazon/kindle/krl/R$integer;->in_book_clock_width_percentage_of_header:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    mul-float v1, v1, v0

    return v1
.end method

.method static getRenderedPageRectangle(Landroid/graphics/Rect;ILcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;Lcom/amazon/android/docviewer/KindleDocLineSettings;Lcom/amazon/kcp/util/device/SafeInsets;)Landroid/graphics/Rect;
    .locals 2

    .line 69
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_2

    .line 75
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object p2

    .line 77
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {p4, p3, p1}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getCalculatedHorizontalMargins(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;I)I

    move-result p1

    .line 88
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getTopMarginValueForHorizontalText()I

    move-result p2

    .line 89
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getBottomMarginValueForHorizontalText()I

    move-result p3

    move p4, p3

    move p3, p2

    move p2, p1

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getLeftMarginValueForVerticalText()I

    move-result p1

    .line 82
    invoke-virtual {p4}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->getRightMarginValueForVerticalText()I

    move-result p2

    .line 83
    invoke-virtual {p4, p3}, Lcom/amazon/android/docviewer/KindleDocLineSettings;->verticalMarginTypeToValue(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)I

    move-result p3

    move p4, p3

    .line 91
    :goto_1
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v1, p1

    iget p1, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, p3

    iget p3, p0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p2

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p0, p4

    invoke-direct {v0, v1, p1, p3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_2

    .line 99
    :cond_2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 102
    :goto_2
    iget p0, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p5}, Lcom/amazon/kcp/util/device/SafeInsets;->getLeft()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->left:I

    .line 103
    iget p0, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p5}, Lcom/amazon/kcp/util/device/SafeInsets;->getTop()I

    move-result p1

    add-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->top:I

    .line 104
    iget p0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p5}, Lcom/amazon/kcp/util/device/SafeInsets;->getRight()I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->right:I

    .line 105
    iget p0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p5}, Lcom/amazon/kcp/util/device/SafeInsets;->getBottom()I

    move-result p1

    sub-int/2addr p0, p1

    iput p0, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method

.method private truncateText(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 7

    .line 838
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    int-to-float p2, p2

    cmpg-float v0, v0, p2

    if-gtz v0, :cond_0

    return-object p1

    .line 844
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v0, -0x1

    const-string v4, "..."

    if-ge v2, v3, :cond_3

    add-int v3, v0, v2

    .line 848
    div-int/lit8 v3, v3, 0x2

    .line 849
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 850
    iget-object v5, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    cmpg-float v5, v4, p2

    if-gez v5, :cond_2

    if-eqz p3, :cond_1

    .line 854
    iput v4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleWidth:F

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    .line 860
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4

    const/4 v0, 0x1

    const-string v1, "PageDrawable.draw()"

    .line 270
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 271
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setPageDrawRequested(Z)V

    .line 272
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 274
    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFirstPageRenderLock()Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/FirstPageRenderLock;->waitForRenderedPage()V

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->isRenderDrawableReady()Z

    move-result v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->renderPage(Landroid/graphics/Canvas;ZZ)V

    .line 278
    invoke-static {v1, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public fetchFooter()V
    .locals 2

    .line 377
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, v0, v1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getFooterText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->currentFooter:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected getBottomOffsetForFooter()I
    .locals 1

    .line 463
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getTopOffsetForTitle()I

    move-result v0

    return v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_context:Landroid/content/Context;

    return-object v0
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 5

    .line 627
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_showFooter:Z

    if-eqz v0, :cond_0

    .line 628
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, v2, v3, v1, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getFooterText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 5

    .line 618
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz v0, :cond_0

    .line 619
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {v0, v2, v3, v4, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getHeaderText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;",
            "Landroid/graphics/Paint;",
            ")",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method final getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object v0

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method abstract getPageAuthor()Ljava/lang/String;
.end method

.method protected getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;
    .locals 1

    .line 885
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageMarginal:Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    return-object v0
.end method

.method final getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 5

    .line 201
    new-instance v0, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 202
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 203
    iget v2, v3, Landroid/graphics/Rect;->right:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v4

    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 204
    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 205
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-object v0
.end method

.method public getPageRect()Landroid/graphics/Rect;
    .locals 1

    .line 881
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method abstract getPageTitle()Ljava/lang/String;
.end method

.method getTitle()Ljava/lang/String;
    .locals 1

    .line 416
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 418
    invoke-static {v0}, Lcom/amazon/kindle/util/TernaryTree;->html_entities_code(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method protected getTopOffsetForHeader()I
    .locals 1

    .line 472
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getTopOffsetForTitle()I

    move-result v0

    return v0
.end method

.method abstract getTopOffsetForTitle()I
.end method

.method final getViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    return-object v0
.end method

.method final isRenderDrawableReady()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->isRenderDrawableReady()Z

    move-result v0

    return v0
.end method

.method protected final onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    .line 424
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 427
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    .line 428
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateAllMargins()V

    return-void
.end method

.method renderPage(Landroid/graphics/Canvas;ZZ)V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/Animatable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Animatable;

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v1, :cond_9

    if-nez p2, :cond_1

    goto/16 :goto_3

    :cond_1
    if-eqz v0, :cond_2

    .line 311
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 313
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->stop()V

    .line 317
    :cond_2
    invoke-direct {p0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawMargins(Landroid/graphics/Canvas;)V

    if-eqz p3, :cond_3

    .line 321
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, p3}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->render(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 326
    :cond_3
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getMobiPage()Lcom/amazon/android/docviewer/mobi/MobiPage;

    move-result-object p2

    .line 327
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRect:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawAnnotations(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/MobiPage;Landroid/graphics/Rect;)V

    .line 329
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getColumnCount()I

    move-result p2

    .line 332
    iget-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    if-eqz p3, :cond_6

    iget-boolean p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleVisibile:Z

    if-eqz p3, :cond_6

    .line 333
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getTitle()Ljava/lang/String;

    move-result-object p3

    .line 334
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageAuthor()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_6

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-ne p2, v1, :cond_4

    goto :goto_1

    .line 343
    :cond_4
    invoke-direct {p0, p1, p3, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawTitleAndAuthor(Landroid/graphics/Canvas;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 339
    :cond_5
    :goto_1
    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawTitle(Landroid/graphics/Canvas;Ljava/lang/String;)V

    .line 349
    :cond_6
    :goto_2
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getPageRange()Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;

    move-result-object p3

    .line 352
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTime:Z

    if-eqz v0, :cond_7

    .line 353
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {p0, p3, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getHeaderText(Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;Landroid/graphics/Paint;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 355
    invoke-direct {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawHeader(Landroid/graphics/Canvas;Ljava/util/List;)V

    .line 359
    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawFooter(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V

    .line 363
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFixedLayout()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x2

    if-ne p2, v0, :cond_8

    .line 364
    invoke-direct {p0, p1, p3}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->drawColumnSeparator(Landroid/graphics/Canvas;Lcom/amazon/android/docviewer/mobi/PageRenderDrawable$PageRange;)V

    .line 368
    :cond_8
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMarginal()Lcom/amazon/android/docviewer/mobi/BookPageMarginal;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/mobi/BookPageMarginal;->getFooterLocationString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setFooterLocationString(Ljava/lang/String;)V

    .line 370
    iput-object v2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->currentFooter:Ljava/util/List;

    .line 373
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->onViewDrawn()V

    return-void

    .line 295
    :cond_9
    :goto_3
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result p2

    .line 299
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 300
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 301
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressRect:Landroid/graphics/Rect;

    iget p3, p2, Landroid/graphics/Rect;->left:I

    neg-int p3, p3

    int-to-float p3, p3

    iget p2, p2, Landroid/graphics/Rect;->top:I

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    if-eqz v0, :cond_a

    .line 304
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->isRunning()Z

    move-result p1

    if-nez p1, :cond_a

    .line 306
    invoke-interface {v0}, Landroid/graphics/drawable/Animatable;->start()V

    :cond_a
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method final setCallbackWorkaround(Landroid/graphics/drawable/Drawable$Callback;)V
    .locals 1

    .line 262
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_callback:Landroid/graphics/drawable/Drawable$Callback;

    .line 263
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 264
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_progressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_callback:Landroid/graphics/drawable/Drawable$Callback;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 265
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getSecondaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getGutterResourceId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    .line 216
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_context:Landroid/content/Context;

    .line 217
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_gutter:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public final setDefaultFontFace(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->isFontTypeChangeSupported()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_viewer:Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    .line 236
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBaseLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getHeaderAndFooterFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    .line 235
    invoke-virtual {p1, v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->getTypeFace(Lcom/mobipocket/android/drawing/FontFamily;)Landroid/graphics/Typeface;

    move-result-object p1

    .line 237
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_textDecorationPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 238
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateTextDecorationHeight()V

    :cond_0
    return-void
.end method

.method public final setFontSize(I)V
    .locals 0

    return-void
.end method

.method public final setLineSpacing(I)V
    .locals 0

    return-void
.end method

.method public final setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 0

    .line 248
    invoke-direct {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->calculateAllMargins()V

    return-void
.end method

.method public final setMarginColor(I)V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_marginsPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public final setPage(I)V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->getPageOffset()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_pageRenderer:Lcom/amazon/android/docviewer/mobi/PageContentRenderer;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageContentRenderer;->setPageOffset(I)V

    :cond_0
    return-void
.end method

.method public final setTitleVisibility(ZZ)V
    .locals 0

    .line 252
    iget-boolean p2, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasTitle:Z

    if-nez p2, :cond_0

    return-void

    .line 255
    :cond_0
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_titleVisibile:Z

    return-void
.end method

.method public showFooter(Z)V
    .locals 1

    .line 639
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_showFooter:Z

    .line 641
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_hasFooter:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 643
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_bounds:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getBottomOffsetForFooter()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    iput p1, p0, Lcom/amazon/android/docviewer/mobi/PageDrawable;->m_footerY:F

    .line 646
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public showTitle(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 656
    invoke-virtual {p0, p1, v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setTitleVisibility(ZZ)V

    .line 657
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method
