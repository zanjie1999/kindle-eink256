.class public Lcom/amazon/android/docviewer/pdf/PdfPage;
.super Ljava/lang/Object;
.source "PdfPage.java"

# interfaces
.implements Lcom/amazon/android/docviewer/grid/IGridPage;
.implements Lcom/amazon/android/docviewer/IDocumentPage;
.implements Lcom/amazon/android/docviewer/pdf/PdfDocDependent;


# static fields
.field public static final COVERING_RECTANGLES_OPTION_DEFAULTS:I = 0x0

.field public static final COVERING_RECTANGLES_OPTION_NO_CACHE:I = 0x1

.field private static final DEFAULT_VIEWPORT:Landroid/graphics/RectF;

.field public static final KINDLE_INDEX_SUBRECT_BITS:I = 0x8

.field private static final MIN_SCALE:F = 0.05f

.field private static volatile PDF_PAGE_MARGIN_PERCENTS:[I

.field private static final TAG:Ljava/lang/String;

.field private static final whiteSpacePattern:Ljava/util/regex/Pattern;


# instance fields
.field private m_cachedLineRectsForRanges:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_contentRect:Landroid/graphics/Rect;

.field private final m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

.field private m_drawingArea:Landroid/graphics/Rect;

.field private m_fullScreenOnHeight:Z

.field private final m_gridPageTransform:Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;

.field private m_isTextMagnificationEnabled:Z

.field private final m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

.field private m_magnificationStatus:I

.field private m_marginSupported:Z

.field private m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private m_pageHandle:J

.field private final m_pageHeight:I

.field private m_pageIndex:I

.field private final m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

.field private m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private final m_pageWidth:I

.field private m_resources:Landroid/content/res/Resources;

.field private m_selectedMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

.field private m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

.field private m_viewport:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 43
    const-class v0, Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPage;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPage;->DEFAULT_VIEWPORT:Landroid/graphics/RectF;

    const-string v0, "\\s+"

    const/16 v1, 0x8

    .line 55
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPage;->whiteSpacePattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 67
    sput-object v0, Lcom/amazon/android/docviewer/pdf/PdfPage;->PDF_PAGE_MARGIN_PERCENTS:[I

    return-void
.end method

.method constructor <init>(Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;Lcom/amazon/android/docviewer/pdf/PdfDocViewer;JLcom/amazon/android/docviewer/pdf/PdfPagePositions;ILjava/util/concurrent/ConcurrentHashMap;Ljava/util/concurrent/ConcurrentHashMap;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;",
            "Lcom/amazon/android/docviewer/pdf/PdfDocViewer;",
            "J",
            "Lcom/amazon/android/docviewer/pdf/PdfPagePositions;",
            "I",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Rect;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    new-instance v0, Landroid/graphics/RectF;

    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfPage;->DEFAULT_VIEWPORT:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "entering PdfPage constructor at page index:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    new-instance v0, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;

    invoke-direct {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;-><init>(Lcom/amazon/android/docviewer/pdf/PdfPage;)V

    iput-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_gridPageTransform:Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;

    .line 136
    iput-object p7, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 137
    iput-object p8, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;

    .line 138
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    .line 139
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    const-wide/16 p7, 0x0

    .line 141
    :try_start_0
    iput-wide p7, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    .line 142
    iput p6, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    .line 143
    iput-object p5, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    .line 144
    invoke-direct {p0, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfPage;->loadPageHandleFromDocHandle(J)V

    .line 145
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance p4, Landroid/graphics/Rect;

    iget-object p5, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide p7, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    .line 146
    invoke-virtual {p5, p7, p8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageWidth(J)I

    move-result p5

    iget-object p7, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    invoke-virtual {p7, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageHeight(J)I

    move-result p7

    const/4 p8, 0x0

    invoke-direct {p4, p8, p8, p5, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 145
    invoke-virtual {p1, p3, p4}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_0

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageSizeCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 148
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    iput p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    .line 149
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    .line 150
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_cachedLineRectsForRanges:Ljava/util/Map;

    .line 151
    iput-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 156
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 157
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_resources:Landroid/content/res/Resources;

    .line 158
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 159
    iput-boolean p9, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_marginSupported:Z

    if-eqz p9, :cond_3

    .line 161
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    iget p5, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    iget-wide p7, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    .line 162
    invoke-virtual {p3, p4, p5, p7, p8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getCropPageMarginRect(IIJ)Landroid/graphics/Rect;

    move-result-object p3

    .line 161
    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageContentRectCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 167
    :cond_1
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p2}, Lcom/amazon/kcp/application/UserSettingsController;->getMargin()Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;

    move-result-object p2

    .line 168
    sget-object p3, Lcom/amazon/android/docviewer/pdf/PdfPage;->PDF_PAGE_MARGIN_PERCENTS:[I

    if-nez p3, :cond_2

    .line 169
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_resources:Landroid/content/res/Resources;

    sget p4, Lcom/amazon/kindle/krl/R$array;->pdf_page_margin_percents:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p3

    sput-object p3, Lcom/amazon/android/docviewer/pdf/PdfPage;->PDF_PAGE_MARGIN_PERCENTS:[I

    .line 171
    :cond_2
    sget-object p3, Lcom/amazon/android/docviewer/pdf/PdfPage;->PDF_PAGE_MARGIN_PERCENTS:[I

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;->serializationValue()I

    move-result p2

    aget p2, p3, p2

    int-to-float p2, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p2, p3

    .line 172
    new-instance p3, Landroid/graphics/Rect;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    .line 173
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p5

    int-to-float p5, p5

    mul-float p5, p5, p2

    invoke-static {p5}, Ljava/lang/Math;->round(F)I

    move-result p5

    sub-int/2addr p4, p5

    iget p5, p1, Landroid/graphics/Rect;->top:I

    .line 174
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p6

    int-to-float p6, p6

    mul-float p6, p6, p2

    invoke-static {p6}, Ljava/lang/Math;->round(F)I

    move-result p6

    sub-int/2addr p5, p6

    iget p6, p1, Landroid/graphics/Rect;->right:I

    .line 175
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p7

    int-to-float p7, p7

    mul-float p7, p7, p2

    invoke-static {p7}, Ljava/lang/Math;->round(F)I

    move-result p7

    add-int/2addr p6, p7

    iget p7, p1, Landroid/graphics/Rect;->bottom:I

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    mul-float p1, p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p7, p1

    invoke-direct {p3, p4, p5, p6, p7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 153
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 154
    throw p1
.end method

.method private copyOf(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;
    .locals 4

    .line 826
    new-instance v0, Lcom/amazon/android/docviewer/pdf/Rectangle;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v2

    .line 827
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result p1

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public static createPageExcerpt(Lcom/amazon/android/docviewer/pdf/PdfPagePositions;III)Ljava/lang/String;
    .locals 4

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_1

    .line 784
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result v0

    .line 785
    invoke-static {v0, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    if-gt p1, p2, :cond_2

    if-ge v1, p3, :cond_2

    .line 789
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 791
    sget-object v3, Lcom/amazon/android/docviewer/pdf/PdfPage;->whiteSpacePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 794
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private getOrigin()Landroid/graphics/Point;
    .locals 13

    .line 831
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 832
    :cond_0
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->getPageOrigin(I)Landroid/graphics/Point;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    .line 834
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 836
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 838
    :try_start_0
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    .line 840
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v11

    const/4 v12, 0x0

    .line 838
    invoke-virtual/range {v3 .. v12}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 843
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, v2, v1}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->setPageOrigin(ILandroid/graphics/Point;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 847
    :cond_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v1

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 848
    throw v0

    :cond_2
    if-nez v1, :cond_3

    .line 851
    new-instance v1, Landroid/graphics/Point;

    const/4 v0, 0x0

    invoke-direct {v1, v0, v0}, Landroid/graphics/Point;-><init>(II)V

    :cond_3
    return-object v1
.end method

.method public static getPageIndexFromPosition(I)I
    .locals 0

    .line 268
    invoke-static {p0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPageIndexFromPosition(I)I

    move-result p0

    return p0
.end method

.method private getPageRectsForPositionPair(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation

    .line 881
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->makePageRectsForRangeKey(II)Ljava/lang/Long;

    move-result-object v0

    .line 882
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_cachedLineRectsForRanges:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_b

    .line 884
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v1

    sub-int/2addr p1, v1

    sub-int/2addr p2, v1

    .line 888
    new-instance v1, Ljava/util/ArrayList;

    sub-int v2, p2, p1

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 890
    new-instance v2, Lcom/amazon/android/docviewer/pdf/Rectangle;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v3, v3, v3}, Lcom/amazon/android/docviewer/pdf/Rectangle;-><init>(IIII)V

    :goto_0
    if-gt p1, p2, :cond_8

    .line 894
    iget-object v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {v4, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 895
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_7

    .line 897
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/TextElement;->getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v4

    const/4 v5, 0x0

    .line 899
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_7

    .line 900
    aget-object v6, v4, v5

    .line 903
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v7

    if-nez v7, :cond_1

    .line 904
    :cond_0
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/pdf/PdfPage;->copyOf(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v2

    .line 907
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v7

    .line 908
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v8

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v9

    add-int/2addr v8, v9

    .line 909
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v9

    .line 910
    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v10

    invoke-virtual {v6}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v11

    add-int/2addr v10, v11

    if-lt v10, v7, :cond_2

    if-le v10, v8, :cond_5

    :cond_2
    if-gt v9, v8, :cond_3

    if-ge v10, v8, :cond_5

    :cond_3
    if-lt v9, v7, :cond_4

    if-le v10, v8, :cond_5

    :cond_4
    if-lt v7, v10, :cond_6

    if-gt v8, v10, :cond_6

    .line 921
    :cond_5
    invoke-virtual {v2, v6}, Lcom/amazon/android/docviewer/pdf/Rectangle;->coalesce(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v2

    .line 922
    invoke-direct {p0, v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->copyOf(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v2

    goto :goto_2

    .line 924
    :cond_6
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v9

    int-to-float v9, v9

    .line 925
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v10

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    .line 926
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v11

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v2

    add-int/2addr v11, v2

    int-to-float v2, v11

    invoke-direct {v7, v8, v9, v10, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 924
    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 927
    invoke-direct {p0, v6}, Lcom/amazon/android/docviewer/pdf/PdfPage;->copyOf(Lcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v2

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    .line 933
    :cond_8
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result p1

    if-eqz p1, :cond_a

    .line 934
    :cond_9
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v3

    int-to-float v3, v3

    .line 935
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v4

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 936
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v5

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v2

    add-int/2addr v5, v2

    int-to-float v2, v5

    invoke-direct {p1, p2, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 934
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 938
    :cond_a
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_cachedLineRectsForRanges:Ljava/util/Map;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-object v1
.end method

.method private getPageToDeviceTransformMatrix()Landroid/graphics/Matrix;
    .locals 5

    .line 855
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 856
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object v1

    .line 857
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getOrigin()Landroid/graphics/Point;

    move-result-object v2

    .line 860
    iget v3, v2, Landroid/graphics/Point;->x:I

    neg-int v3, v3

    int-to-float v3, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, -0x40800000    # -1.0f

    .line 863
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 864
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 867
    iget v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    :goto_0
    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    if-nez v4, :cond_1

    goto :goto_1

    .line 868
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 867
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 871
    iget v2, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object v0
.end method

.method public static getPositionFromPageIndex(I)I
    .locals 0

    .line 256
    invoke-static {p0}, Lcom/amazon/docviewer/PDFPageIndexProperties;->getPositionFromPageIndex(I)I

    move-result p0

    return p0
.end method

.method private loadPageHandleFromDocHandle(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 205
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PdfPage.loadPageHandleFromDocHandle("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "), page index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doLoadPage(JI)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 209
    throw p1
.end method

.method private makePageRectsForRangeKey(II)Ljava/lang/Long;
    .locals 2

    int-to-long v0, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    int-to-long p1, p2

    or-long/2addr p1, v0

    .line 877
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public closeDocHandleDerivatives()V
    .locals 5

    .line 187
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeDocHandleDerivatives to close page: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->closePage()V

    :cond_0
    return-void
.end method

.method closePage()V
    .locals 6

    .line 278
    monitor-enter p0

    .line 280
    :try_start_0
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 281
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_cachedLineRectsForRanges:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 283
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 285
    :try_start_1
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->doClosePage(J)I
    :try_end_1
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :try_start_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    :goto_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 287
    :try_start_3
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->TAG:Ljava/lang/String;

    const-string v4, "Close Page failed: "

    invoke-static {v1, v4, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 289
    :try_start_4
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    goto :goto_0

    .line 292
    :goto_1
    iput-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    .line 293
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->getDocument()Lcom/amazon/android/docviewer/pdf/PdfDoc;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->onPageClosed(Lcom/amazon/android/docviewer/pdf/PdfPage;)V

    goto :goto_3

    .line 289
    :goto_2
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 290
    throw v0

    .line 295
    :cond_0
    :goto_3
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 300
    :try_start_5
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->notifyFirstPageLoadedEvent()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    .line 302
    sget-object v1, Lcom/amazon/android/docviewer/pdf/PdfPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Caught exception trying to notify loaded event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_4
    return-void

    .line 295
    :goto_5
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_5
.end method

.method public createBorderRectangles(II)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 718
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 719
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isHighlightingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 722
    :cond_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_gridPageTransform:Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;

    invoke-static {p1, p2, v0, p0, v1}, Lcom/amazon/android/docviewer/grid/GridPageUtility;->createCoveringGeometricRectangles(IILandroid/graphics/Rect;Lcom/amazon/android/docviewer/grid/IGridPage;Lcom/amazon/android/docviewer/grid/IGridPageTransform;)Ljava/util/Vector;

    move-result-object p1

    return-object p1

    .line 720
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/Vector;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    return-object p1
.end method

.method public createCoveringRectangles(II)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    const/4 v1, 0x0

    .line 728
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createCoveringRectangles(IILandroid/graphics/Rect;I)Ljava/util/Vector;

    move-result-object p1

    return-object p1
.end method

.method public createCoveringRectangles(IILandroid/graphics/Rect;I)Ljava/util/Vector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Rect;",
            "I)",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 741
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isHighlightingSupported()Z

    move-result p4

    if-eqz p4, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 745
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageRectsForPositionPair(II)Ljava/util/List;

    move-result-object p1

    .line 746
    new-instance p2, Ljava/util/Vector;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/Vector;-><init>(I)V

    .line 748
    invoke-direct {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageToDeviceTransformMatrix()Landroid/graphics/Matrix;

    move-result-object p3

    .line 749
    new-instance p4, Landroid/graphics/RectF;

    invoke-direct {p4}, Landroid/graphics/RectF;-><init>()V

    .line 751
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/RectF;

    .line 752
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 753
    invoke-virtual {p3, p4, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 754
    invoke-virtual {p4, v1}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 755
    invoke-virtual {p2, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p2

    .line 742
    :cond_2
    :goto_1
    new-instance p1, Ljava/util/Vector;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/Vector;-><init>(I)V

    return-object p1
.end method

.method public createText(III)Ljava/lang/String;
    .locals 1

    .line 767
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isHighlightingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 771
    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    sub-int/2addr p1, v0

    sub-int/2addr p2, v0

    .line 775
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-static {v0, p1, p2, p3}, Lcom/amazon/android/docviewer/pdf/PdfPage;->createPageExcerpt(Lcom/amazon/android/docviewer/pdf/PdfPagePositions;III)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDecorativeRectangles()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDeviceRectFromLayoutRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 9

    .line 703
    new-instance v8, Lcom/amazon/android/docviewer/pdf/Rectangle;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 704
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v8, v0, v1, v2, p2}, Lcom/amazon/android/docviewer/pdf/Rectangle;-><init>(IIII)V

    .line 705
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    iget v3, p1, Landroid/graphics/Rect;->left:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    .line 709
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 710
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    const/4 v7, 0x0

    .line 705
    invoke-virtual/range {v0 .. v8}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getPageToDeviceRectangle(JIIIIILcom/amazon/android/docviewer/pdf/Rectangle;)Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object p1

    .line 713
    new-instance p2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v0

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v2

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v3

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result p1

    add-int/2addr v3, p1

    invoke-direct {p2, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method public getDeviceToPagePoint(FF)Landroid/graphics/Point;
    .locals 11

    .line 439
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object v0

    .line 444
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    float-to-int v4, p1

    float-to-int v5, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 448
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 449
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    .line 444
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 451
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 452
    throw p1
.end method

.method getDrawingArea()Landroid/graphics/Rect;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getElementAtPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 11

    .line 616
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isHighlightingSupported()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    .line 621
    :cond_0
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result p3

    if-nez p3, :cond_1

    return-object p4

    .line 625
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_2

    return-object p4

    .line 630
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 632
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    .line 633
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 634
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move v4, p1

    move v5, p2

    .line 632
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object p1

    .line 635
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget v0, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p3, v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexClosestToPoint(II)I

    move-result p2

    .line 636
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {p3, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_3

    .line 655
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p4

    .line 642
    :cond_3
    :try_start_1
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/TextElement;->getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v0

    const/4 v1, 0x0

    .line 643
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_5

    .line 644
    aget-object v2, v0, v1

    .line 645
    iget v3, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, p1, Landroid/graphics/Point;->x:I

    .line 646
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getX()I

    move-result v4

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 647
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v4

    if-lt v3, v4, :cond_4

    iget v3, p1, Landroid/graphics/Point;->y:I

    .line 648
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getY()I

    move-result v4

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/pdf/Rectangle;->getHeight()I

    move-result v2

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_4

    .line 649
    new-instance p1, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    .line 650
    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object p3

    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-direct {p1, p2, v0, p3, p4}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;-><init>(I[Lcom/amazon/android/docviewer/pdf/Rectangle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 655
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p4

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 656
    throw p1
.end method

.method public getElementClosestToPoint(IIIZ)Lcom/amazon/android/docviewer/IPageElement;
    .locals 11

    .line 663
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->isHighlightingSupported()Z

    move-result p3

    const/4 p4, 0x0

    if-nez p3, :cond_0

    return-object p4

    .line 668
    :cond_0
    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {p3}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result p3

    if-nez p3, :cond_1

    return-object p4

    .line 672
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_2

    return-object p4

    .line 677
    :cond_2
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 679
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    iget v6, p3, Landroid/graphics/Rect;->left:I

    iget v7, p3, Landroid/graphics/Rect;->top:I

    .line 680
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 681
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    move v4, p1

    move v5, p2

    .line 679
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object p1

    .line 682
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    iget p3, p1, Landroid/graphics/Point;->x:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    invoke-virtual {p2, p3, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexClosestToPoint(II)I

    move-result p1

    .line 683
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getTextElement(I)Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_3

    .line 691
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p4

    .line 687
    :cond_3
    :try_start_1
    new-instance p3, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    .line 688
    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/TextElement;->getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object p4

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object p2

    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-direct {p3, p1, p4, p2, v0}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;-><init>(I[Lcom/amazon/android/docviewer/pdf/Rectangle;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 691
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object p3

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 692
    throw p1
.end method

.method public getElements()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 588
    invoke-virtual {p0, v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getElements(I)Ljava/util/Vector;

    move-result-object v0

    return-object v0
.end method

.method public getElements(I)Ljava/util/Vector;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Vector<",
            "Lcom/amazon/android/docviewer/IPageElement;",
            ">;"
        }
    .end annotation

    .line 593
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getAllTextElements()[Lcom/amazon/android/docviewer/pdf/TextElement;

    move-result-object v0

    .line 594
    new-instance v1, Ljava/util/Vector;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    .line 595
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 596
    new-instance v5, Lcom/amazon/android/docviewer/pdf/PdfPageElement;

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/TextElement;->getKindleIndex()I

    move-result v6

    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/TextElement;->getAllBounds()[Lcom/amazon/android/docviewer/pdf/Rectangle;

    move-result-object v7

    .line 597
    invoke-virtual {v4}, Lcom/amazon/android/docviewer/pdf/TextElement;->getWord()Ljava/lang/String;

    move-result-object v4

    iget v8, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/amazon/android/docviewer/pdf/PdfPageElement;-><init>(I[Lcom/amazon/android/docviewer/pdf/Rectangle;Ljava/lang/String;I)V

    .line 598
    invoke-interface {v5}, Lcom/amazon/android/docviewer/IPageElement;->getType()I

    move-result v4

    and-int/2addr v4, p1

    if-eqz v4, :cond_0

    .line 599
    invoke-virtual {v1, v5}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getFirstElementPositionId()I
    .locals 1

    .line 578
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    return v0
.end method

.method public getGeometricEndPosition()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricEndPosition(I)I

    move-result v0

    return v0
.end method

.method public getGeometricStartPosition()I
    .locals 1

    .line 804
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;->getGeometricStartPosition(I)I

    move-result v0

    return v0
.end method

.method public getGridPageTransform()Lcom/amazon/android/docviewer/grid/IGridPageTransform;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_gridPageTransform:Lcom/amazon/android/docviewer/pdf/PdfGridPageTransform;

    return-object v0
.end method

.method getIsTextMagnificationEnabled()Z
    .locals 1

    .line 402
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_isTextMagnificationEnabled:Z

    return v0
.end method

.method public getKindleIndexClosestToPoint(II)I
    .locals 1

    .line 607
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 608
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getFirstElementPositionId()I

    move-result p1

    return p1

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexClosestToPoint(II)I

    move-result p1

    return p1
.end method

.method public getLastElementPositionId()I
    .locals 2

    .line 583
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-static {v0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPositionFromPageIndex(I)I

    move-result v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/pdf/PdfPagePositions;->getKindleIndexCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method getMagnificationStatus()I
    .locals 1

    .line 412
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_magnificationStatus:I

    return v0
.end method

.method public getPageHeight()I
    .locals 1

    .line 344
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_marginSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    :goto_0
    return v0
.end method

.method public getPageIndex()I
    .locals 1

    .line 322
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    return v0
.end method

.method getPagePositions()Lcom/amazon/android/docviewer/pdf/PdfPagePositions;
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pagePositions:Lcom/amazon/android/docviewer/pdf/PdfPagePositions;

    return-object v0
.end method

.method public getPageState(I)[B
    .locals 0

    const/4 p1, 0x0

    new-array p1, p1, [B

    return-object p1
.end method

.method public getPageWidth()I
    .locals 1

    .line 333
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_marginSupported:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    :goto_0
    return v0
.end method

.method public getRealTouchPointOnPage(FF)Landroid/graphics/PointF;
    .locals 11

    .line 466
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    .line 470
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRectForDevice()Landroid/graphics/Rect;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    float-to-int v4, p1

    float-to-int v5, p2

    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v0, Landroid/graphics/Rect;->top:I

    .line 475
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v8

    .line 476
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/4 v10, 0x0

    .line 471
    invoke-virtual/range {v1 .. v10}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->getDeviceToPagePoint(JIIIIIII)Landroid/graphics/Point;

    move-result-object p1

    .line 480
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result p2

    iget v0, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p2, v0

    .line 481
    new-instance v0, Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/Point;->x:I

    div-int/lit8 p1, p1, 0x64

    int-to-float p1, p1

    div-int/lit8 p2, p2, 0x64

    int-to-float p2, p2

    invoke-direct {v0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-object v0

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 486
    throw p1
.end method

.method public final getRenderedPageRect()Landroid/graphics/Rect;
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 499
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    .line 500
    invoke-virtual {p0, v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect(Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public final getRenderedPageRect(Landroid/graphics/Rect;Z)Z
    .locals 6

    .line 554
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 559
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 560
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v1

    mul-int v1, v1, v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v2

    div-int/2addr v1, v2

    int-to-float v2, v0

    .line 561
    iget-object v3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/RectF;->left:F

    const/4 v5, 0x0

    sub-float v4, v5, v4

    mul-float v2, v2, v4

    float-to-int v2, v2

    int-to-float v4, v1

    .line 562
    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v5, v3

    mul-float v4, v4, v5

    float-to-int v3, v4

    .line 563
    iget-boolean v4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_marginSupported:Z

    if-eqz v4, :cond_1

    if-eqz p2, :cond_1

    .line 564
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    mul-int p2, p2, v0

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v4

    div-int/2addr p2, v4

    sub-int/2addr v2, p2

    .line 565
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    mul-int p2, p2, v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v4

    div-int/2addr p2, v4

    sub-int/2addr v3, p2

    .line 566
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    mul-int v0, v0, p2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result p2

    div-int/2addr v0, p2

    .line 567
    iget p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    mul-int v1, v1, p2

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result p2

    div-int/2addr v1, p2

    :cond_1
    add-int/2addr v0, v2

    add-int/2addr v1, v3

    .line 570
    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    const/4 p1, 0x1

    return p1
.end method

.method public final getRenderedPageRectForDevice()Landroid/graphics/Rect;
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 512
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x1

    .line 513
    invoke-virtual {p0, v0, v2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect(Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_1
    return-object v1
.end method

.method public getRenderedPageRectangle()Lcom/amazon/system/drawing/Rectangle;
    .locals 5

    .line 533
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getRenderedPageRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 537
    :cond_0
    new-instance v1, Lcom/amazon/system/drawing/Rectangle;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 539
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 540
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazon/system/drawing/Rectangle;-><init>(IIII)V

    return-object v1
.end method

.method public getScale()F
    .locals 3

    .line 525
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v2, v0, v1

    if-gez v2, :cond_0

    const v0, 0x3d4ccccd    # 0.05f

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    return v1
.end method

.method getSelectedMagnificationItem()Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;
    .locals 1

    .line 422
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_selectedMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    return-object v0
.end method

.method getViewport()Landroid/graphics/RectF;
    .locals 1

    .line 426
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    return-object v0
.end method

.method public isFullScreenOnHeight()Z
    .locals 1

    .line 953
    iget-boolean v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_fullScreenOnHeight:Z

    return v0
.end method

.method public isHighlightingSupported()Z
    .locals 1

    .line 762
    invoke-static {}, Lcom/amazon/android/docviewer/pdf/PdfDoc;->isHighlightingSupported()Z

    move-result v0

    return v0
.end method

.method isLoaded()Z
    .locals 5

    .line 311
    iget-wide v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isScreenOrientationPortrait()Z
    .locals 2

    .line 961
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 963
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_resources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->convertConfigurationToScreenOrientation(I)I

    move-result v0

    :cond_0
    if-eqz v0, :cond_1

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public notifyRenderComplete()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->notifyRenderComplete()V

    return-void
.end method

.method public openNewDocHandleDerivatives(J)V
    .locals 0

    .line 196
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/android/docviewer/pdf/PdfPage;->loadPageHandleFromDocHandle(J)V
    :try_end_0
    .catch Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public renderIntoBitmap(Landroid/graphics/Bitmap;IIII)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/android/docviewer/pdf/PdfNativeLibraryException;
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readLockDocument()V

    int-to-float v0, p4

    .line 232
    iget-boolean v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_marginSupported:Z

    if-eqz v1, :cond_0

    .line 233
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    mul-int v1, v1, v2

    mul-int v1, v1, p4

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v2

    div-int/2addr v1, v2

    sub-int/2addr p2, v1

    .line 234
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_contentRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    mul-int v1, v1, v2

    mul-int v1, v1, p4

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result p4

    div-int/2addr v1, p4

    sub-int/2addr p3, v1

    .line 235
    iget p4, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    int-to-float p4, p4

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p4, v1

    mul-float p4, p4, v0

    .line 236
    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/amazon/android/docviewer/pdf/PdfPage;->getPageHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, v0, v1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, v0

    goto :goto_0

    :cond_0
    move v5, p2

    move v6, p3

    move v7, v0

    move v8, v7

    .line 239
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-wide v2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    move-object v4, p1

    move v9, p5

    invoke-virtual/range {v1 .. v9}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->renderToBitmap(JLandroid/graphics/Bitmap;IIFFI)V

    .line 240
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_docViewer:Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;->isContrastLevelChangeSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 241
    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    iget-object p3, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_userSettings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {p3}, Lcom/amazon/kcp/application/UserSettingsController;->getContrastLevel()I

    move-result p3

    invoke-virtual {p2, p1, p3}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->changeContrastMapping(Landroid/graphics/Bitmap;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_1
    iget-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_jniInterface:Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;

    invoke-virtual {p2}, Lcom/amazon/android/docviewer/pdf/PdfNativeInterface;->readUnlockDocument()V

    .line 245
    throw p1
.end method

.method selectMagnificationItem(Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;)V
    .locals 0

    .line 348
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_selectedMagnificationItem:Lcom/amazon/android/docviewer/pdf/PdfTextMagnification;

    return-void
.end method

.method setDrawingArea(Landroid/graphics/Rect;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    return-void
.end method

.method public setFullScreenOnHeight(Z)V
    .locals 0

    .line 957
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_fullScreenOnHeight:Z

    return-void
.end method

.method setIsTextMagnificationEnabled(Z)V
    .locals 0

    .line 366
    iput-boolean p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_isTextMagnificationEnabled:Z

    return-void
.end method

.method setMagnificationStatus(I)V
    .locals 0

    .line 376
    iput p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_magnificationStatus:I

    return-void
.end method

.method setViewport(Landroid/graphics/RectF;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/android/docviewer/pdf/PdfPage;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "[index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " handle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHandle:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_pageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " drawingArea="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_drawingArea:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " viewport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/android/docviewer/pdf/PdfPage;->m_viewport:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
