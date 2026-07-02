.class public Lcom/amazon/kindle/rendering/KRIFLayout;
.super Lcom/amazon/kcp/reader/ui/BookLayout;
.source "KRIFLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const-class v0, Lcom/amazon/kindle/rendering/KRIFLayout;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/rendering/KRIFLayout;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/BookLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kindle/rendering/KRIFLayout;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/rendering/KRIFLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/amazon/kindle/rendering/KRIFLayout;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method public getSnapshotView()Landroid/widget/ImageView;
    .locals 4

    .line 248
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getSnapshotView()Landroid/widget/ImageView;

    move-result-object v0

    .line 249
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isFullPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContentViewBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object v0
.end method

.method protected getToolbarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 243
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getToolbarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1
.end method

.method protected inflateLocationSeeker()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    invoke-super {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker()V

    :cond_0
    return-void
.end method

.method protected inflateLocationSeeker(Z)V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 220
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker(Z)V

    :cond_0
    return-void
.end method

.method public onAnnotationManagerEvent(Lcom/amazon/kindle/event/AnnotationManagerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 92
    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getEventType()Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;->ANNOTATIONS_NEED_REFRESH:Lcom/amazon/kindle/event/AnnotationManagerEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 93
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getAnnotationsManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/AnnotationManagerEvent;->getAnnotationManager()Lcom/amazon/android/docviewer/IDocViewerAnnotationsManager;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 94
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFLayout$3;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/rendering/KRIFLayout$3;-><init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onContentMissingEvent(Lcom/amazon/kindle/yj/events/ContentMissingEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/yj/events/ContentMissingEvent;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 72
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    new-instance v0, Lcom/amazon/kindle/rendering/KRIFLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/rendering/KRIFLayout$2;-><init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 106
    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-ne p1, v0, :cond_0

    .line 107
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFLayout$4;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/rendering/KRIFLayout$4;-><init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 119
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getGestureListener()Lcom/amazon/kcp/reader/gestures/GestureListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getGestureListener()Lcom/amazon/kcp/reader/gestures/GestureListener;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/kcp/reader/gestures/GestureListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    move v1, v0

    :cond_1
    return v1
.end method

.method public onKRIFCDListenerEvent(Lcom/amazon/kindle/events/KRIFCDOnClickEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 84
    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->isNote()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kindle/events/KRIFCDOnClickEvent;->getAnnotation()Lcom/amazon/kindle/model/sync/annotation/IAnnotation;

    move-result-object p1

    const-string v1, "Page"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onKRIFEvent(Lcom/amazon/kindle/rendering/KRIFUIEvent;)V
    .locals 6
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 182
    :goto_0
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getType()Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    move-result-object v2

    .line 185
    sget-object v3, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    sget-object v3, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->PINCH_FLING:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    .line 186
    :goto_2
    invoke-static {v1}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v1

    if-eqz v3, :cond_3

    if-nez v1, :cond_4

    .line 187
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 188
    invoke-virtual {p0, v5, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    goto :goto_3

    .line 192
    :cond_4
    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    if-eq v2, v1, :cond_5

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;->SINGLE_TAP_UP:Lcom/amazon/kindle/rendering/KRIFUIEvent$Type;

    if-ne v2, v1, :cond_7

    :cond_5
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->isHandledByReader()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 193
    invoke-virtual {p1}, Lcom/amazon/kindle/rendering/KRIFUIEvent;->getTransactionType()Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;->TOUCH:Lcom/amazon/kindle/rendering/KRIFUIEvent$TransactionType;

    if-ne p1, v1, :cond_7

    sget-boolean p1, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->supressShowChromeForBrochure:Z

    if-nez p1, :cond_7

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 195
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    invoke-virtual {p1, v5}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    goto :goto_3

    :cond_6
    if-eqz v0, :cond_7

    .line 197
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldInterceptReaderChromeShow()Z

    move-result p1

    if-nez p1, :cond_7

    .line 198
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->showChrome()V

    :cond_7
    :goto_3
    return-void
.end method

.method public onKRXExternalScreenEvent(Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 146
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXExternalScreenEvent;->isOpened()Z

    move-result p1

    .line 147
    iget-object v0, p0, Lcom/amazon/kindle/rendering/KRIFLayout;->hasExternalScreen:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setExternalScreenStatus(Z)V

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V

    .line 153
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFLayout$5;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/rendering/KRIFLayout$5;-><init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKindleDocNavigationevent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 51
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 52
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-ne v0, p1, :cond_0

    .line 54
    new-instance p1, Lcom/amazon/kindle/rendering/KRIFLayout$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/rendering/KRIFLayout$1;-><init>(Lcom/amazon/kindle/rendering/KRIFLayout;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onViewOptionsEvent(Lcom/amazon/kindle/krx/events/UIEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 168
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/BookLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->getElement()Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/events/UIEvent$UIElement;->VIEW_OPTIONS:Lcom/amazon/kindle/krx/events/UIEvent$UIElement;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/UIEvent;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 169
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 170
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 173
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    :cond_1
    return-void
.end method

.method public populateGestureFactory(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V
    .locals 3

    .line 133
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 134
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->shouldAllowOrientationLock()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/reader/gestures/OrientationLockGestureHandler;-><init>(Lcom/amazon/kcp/reader/ui/IOrientationLockManager;Lcom/amazon/kcp/reader/ReaderActivity;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    .line 137
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/gestures/BubbleGestureHandler;-><init>()V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    .line 138
    new-instance v0, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kindle/rendering/KRIFGestureMetricsHandler;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandler(Lcom/amazon/kindle/krx/gesture/IGestureHandler;)Z

    :cond_1
    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 227
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/ui/BookLayout;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    if-eqz p1, :cond_0

    .line 231
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->checkAndEnableAccessibilityPageTurnSupport()V

    :cond_0
    return-void
.end method

.method protected shouldDrawSelectionRectsAndHandles()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
