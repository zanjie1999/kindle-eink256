.class final Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;
.super Ljava/lang/Object;
.source "AnimatedTextViewDelegator.java"

# interfaces
.implements Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper$ViewDelegator;


# static fields
.field private static final DEFAULT_PAGE_TURN_TIME:J = 0x64L


# instance fields
.field private final m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

.field private final m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

.field private final m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/PageDrawable;Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p3, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    .line 28
    iput-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    .line 29
    iput-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    .line 31
    new-instance p1, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;

    invoke-direct {p1, p0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator$1;-><init>(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)V

    .line 47
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setCallbackWorkaround(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 48
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p2, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setCallbackWorkaround(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;)Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    return-object p0
.end method


# virtual methods
.method public finishPan()V
    .locals 0

    return-void
.end method

.method public finishZoom()V
    .locals 0

    return-void
.end method

.method public getCurrentPageDrawable()Lcom/amazon/android/docviewer/mobi/PageDrawable;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    return-object v0
.end method

.method public getFooterRect()Landroid/graphics/Rect;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getHeaderRect()Landroid/graphics/Rect;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getHeaderRect()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public final getPageTurnDefaultDuration()J
    .locals 2

    const-wide/16 v0, 0x64

    return-wide v0
.end method

.method public getPageTurnMargin()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getViewPort()Landroid/graphics/RectF;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isImageCornerInZoom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isZoomed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onRemoveFromDocViewer()V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setCallbackWorkaround(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 54
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, v1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setCallbackWorkaround(Landroid/graphics/drawable/Drawable$Callback;)V

    return-void
.end method

.method public paintCurrentView(Landroid/graphics/Canvas;)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public paintTransientView(Landroid/graphics/Canvas;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public panPage(FF)V
    .locals 0

    return-void
.end method

.method public preparePage()V
    .locals 0

    return-void
.end method

.method public prepareTransientPage(I)V
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setPage(I)V

    return-void
.end method

.method public refresh()V
    .locals 0

    return-void
.end method

.method public resetZoom(FF)V
    .locals 0

    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 68
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 69
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setCurrentViewBounds(IIII)V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 161
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object p1

    .line 162
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr p2, p3

    iget p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr p2, p3

    .line 164
    iget-object p3, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    iget p4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p3, p4

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    sub-int/2addr p3, p1

    .line 166
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getRenderingSettings()Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 169
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getWidth()I

    move-result p4

    if-ne p4, p2, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->getHeight()I

    move-result p4

    if-eq p4, p3, :cond_1

    .line 171
    :cond_0
    new-instance p4, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    invoke-direct {p4}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;-><init>()V

    .line 172
    invoke-virtual {p4, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->assign(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;

    .line 173
    invoke-virtual {p4, p2}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setWidth(I)V

    .line 174
    invoke-virtual {p4, p3}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setHeight(I)V

    .line 176
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    .line 177
    invoke-interface {p1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getPathForKRFCache()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-virtual {p4, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setCachePath(Ljava/lang/String;)V

    .line 178
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$integer;->max_krf_cache_size:I

    .line 179
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 178
    invoke-virtual {p4, p1}, Lcom/amazon/kindle/krf/KRF/Reader/RenderingSettings;->setMaxNumCaches(I)V

    .line 180
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->getDocViewer()Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->setSettings(Lcom/amazon/kindle/krf/KRF/Reader/IRenderingSettings;)V

    .line 181
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->refresh()V

    :cond_1
    return-void
.end method

.method public setDefaultFontFace(Ljava/lang/String;)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setDefaultFontFace(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setDefaultFontFace(Ljava/lang/String;)V

    .line 90
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setFontSize(I)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setFontSize(I)V

    .line 82
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setFontSize(I)V

    .line 83
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setLineSpacing(I)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setLineSpacing(I)V

    .line 96
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setLineSpacing(I)V

    .line 97
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setMargin(Lcom/amazon/android/docviewer/KindleDocLineSettings$Margin;)V

    return-void
.end method

.method public setMarginColor(I)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setMarginColor(I)V

    .line 75
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setMarginColor(I)V

    .line 76
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setTitleVisibility(ZZ)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_currentPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    iget-object v1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {v1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->isAnimationSet()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setTitleVisibility(ZZ)V

    .line 61
    iget-object p2, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {p2, p1, v2}, Lcom/amazon/android/docviewer/mobi/PageDrawable;->setTitleVisibility(ZZ)V

    .line 62
    iget-object p1, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_pageFlipper:Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/AnimatedPageFlipper;->invalidate()V

    return-void
.end method

.method public setTransientViewBounds(IIII)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/amazon/android/docviewer/mobi/AnimatedTextViewDelegator;->m_transitionPageDrawable:Lcom/amazon/android/docviewer/mobi/PageDrawable;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public startPan()V
    .locals 0

    return-void
.end method

.method public startZoom()V
    .locals 0

    return-void
.end method

.method public zoom(FFF)V
    .locals 0

    return-void
.end method
