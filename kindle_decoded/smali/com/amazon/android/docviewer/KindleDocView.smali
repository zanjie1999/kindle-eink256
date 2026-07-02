.class public abstract Lcom/amazon/android/docviewer/KindleDocView;
.super Landroid/widget/RelativeLayout;
.source "KindleDocView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;,
        Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;
    }
.end annotation


# static fields
.field private static ACCESSIBILITY_INIT_DELAY:I = 0x1f4


# instance fields
.field protected accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private m_rawPageTurnOffset:I

.field private overlaysAccessibilityListener:Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 1

    .line 44
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/amazon/android/docviewer/KindleDocView;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 48
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isAccessibilitySupport()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/android/docviewer/KindleDocView;->initializeAccessibilityMixin(Landroid/content/Context;)V

    .line 55
    new-instance v0, Lcom/amazon/android/docviewer/KindleDocView$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/android/docviewer/KindleDocView$1;-><init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    sget p1, Lcom/amazon/android/docviewer/KindleDocView;->ACCESSIBILITY_INIT_DELAY:I

    int-to-long p1, p1

    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic access$002(Lcom/amazon/android/docviewer/KindleDocView;Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;)Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocView;->overlaysAccessibilityListener:Lcom/amazon/kcp/reader/accessibility/OverlaysAccessibilityListener;

    return-object p1
.end method


# virtual methods
.method public adjustRawPointsFromPageMargins(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    .line 391
    :cond_0
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    .line 392
    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    mul-int/lit8 p1, p1, -0x1

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    mul-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, p1, v0}, Landroid/graphics/Point;->offset(II)V

    return-object v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public canFling(FF)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public changeDecorationProviderState(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;Z)V
    .locals 0

    return-void
.end method

.method public changeFooterVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method public changeHeaderVisibility(ZZ)V
    .locals 0

    return-void
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 150
    :cond_0
    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public finishFling()V
    .locals 0

    return-void
.end method

.method public abstract finishPan()V
.end method

.method public abstract finishPan(Z)V
.end method

.method public abstract finishZoom()V
.end method

.method public getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    return-object v0
.end method

.method public getDrawFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getFooterRect()Landroid/graphics/Rect;
.end method

.method public abstract getHeaderRect()Landroid/graphics/Rect;
.end method

.method public abstract getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
.end method

.method public abstract getPageTurnOffset()I
.end method

.method public getRawPageTurnOffset()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/amazon/android/docviewer/KindleDocView;->m_rawPageTurnOffset:I

    return v0
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getScrollLockManager()Lcom/amazon/android/docviewer/ScrollLockManager;
.end method

.method public getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getViewport()Landroid/graphics/RectF;
.end method

.method public initializeAccessibilityMixin(Landroid/content/Context;)V
    .locals 0

    .line 80
    invoke-static {p1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContentViewAccessibilityMixin()Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    return-void
.end method

.method public isFlinging()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract isPageTurnInteractionDisabled()Z
.end method

.method public abstract isZoomed()Z
.end method

.method public onToggleActiveArea()V
    .locals 0

    return-void
.end method

.method public abstract panPage(FF)V
.end method

.method public abstract panPageByReferencePoint(FF)V
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/amazon/android/docviewer/KindleDocView;->accessibilityMixin:Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;

    if-eqz v0, :cond_0

    .line 209
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kcp/reader/accessibility/IContentViewAccessibilityMixin;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 212
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public preRender()V
    .locals 0

    return-void
.end method

.method public abstract refresh()V
.end method

.method public abstract refreshDecorationProvider(Lcom/amazon/kindle/krx/ui/IContentDecorationProvider;)V
.end method

.method public abstract resetZoom(FF)V
.end method

.method public abstract setDocReferencePoint(FF)V
.end method

.method public abstract setPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V
.end method

.method public setRawPageTurnOffset(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;I)V
    .locals 0

    .line 197
    iput p2, p0, Lcom/amazon/android/docviewer/KindleDocView;->m_rawPageTurnOffset:I

    return-void
.end method

.method public abstract setTitleVisibility(ZZ)V
.end method

.method public startFling(FF)V
    .locals 0

    return-void
.end method

.method public abstract startPan()V
.end method

.method public abstract startZoom()V
.end method

.method public abstract turnPage(Lcom/amazon/android/docviewer/KindleDocView$PagingDirection;Lcom/amazon/android/docviewer/KindleDocView$AnimationDirection;F)Z
.end method

.method public abstract zoom(FFF)V
.end method
