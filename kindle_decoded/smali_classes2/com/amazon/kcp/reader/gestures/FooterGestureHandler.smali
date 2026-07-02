.class public Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;
.super Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;
.source "FooterGestureHandler.java"

# interfaces
.implements Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;

.field private footerTapTargetPadding:I

.field private gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

.field private progressVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

.field private savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

.field private tappedFooterArea:Z

.field private ttrContentDescription:Ljava/lang/String;

.field private ttrVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kcp/reader/gestures/GestureService;I)V
    .locals 1

    .line 38
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->tappedFooterArea:Z

    const/4 v0, 0x0

    .line 35
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 36
    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->progressVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 39
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    .line 40
    iput p2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    .line 41
    invoke-virtual {p1, p0}, Lcom/amazon/kcp/reader/gestures/GestureService;->registerForAccessibility(Lcom/amazon/kcp/reader/accessibility/IVirtualViewProvider;)Z

    .line 42
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->context:Landroid/content/Context;

    .line 43
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method private eventIsInFooterRect(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 73
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 79
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 80
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 81
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private eventIsInRightHandCorner(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 6

    .line 90
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 95
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 101
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    const/4 v4, 0x1

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    .line 102
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getX()F

    move-result v2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    div-int/lit8 v3, v3, 0x2

    iget v5, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    add-int/2addr v3, v5

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 103
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->getY()F

    move-result p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->footerTapTargetPadding:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 105
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_3

    return p1

    :cond_3
    if-eqz p1, :cond_4

    .line 110
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->hasActionableFooterFromProviders()Z

    move-result v0

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1
.end method

.method private recomputeTtrContentDescription()V
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    check-cast v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    if-eqz v0, :cond_0

    .line 216
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getFooterLocationString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const-string v0, ""

    .line 220
    :goto_0
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->context:Landroid/content/Context;

    sget v1, Lcom/amazon/kindle/krl/R$string;->speak_footer_no_text:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrContentDescription:Ljava/lang/String;

    goto :goto_1

    .line 223
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->context:Landroid/content/Context;

    sget v2, Lcom/amazon/kindle/krl/R$string;->speak_footer:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrContentDescription:Ljava/lang/String;

    :goto_1
    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public getVirtualViews(Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 165
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v2

    .line 166
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getWidth()I

    move-result v3

    .line 167
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v4

    .line 169
    invoke-virtual {v1}, Lcom/amazon/android/docviewer/KindleDocView;->getFooterRect()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    if-eqz v2, :cond_5

    .line 172
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v5, v4, v5

    sub-int v6, v3, v1

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x3

    add-int/2addr v6, v1

    invoke-direct {p1, v1, v5, v6, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 176
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_2

    .line 177
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->recomputeTtrContentDescription()V

    .line 179
    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrContentDescription:Ljava/lang/String;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 180
    :cond_0
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    iget-object v6, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrContentDescription:Ljava/lang/String;

    invoke-direct {v1, p1, v6, v5}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 181
    iput-object v1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 182
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 184
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :cond_2
    new-instance p1, Landroid/graphics/Rect;

    iget v1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int v6, v3, v1

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v1, v6

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int v2, v4, v2

    sub-int/2addr v3, v7

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 192
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    check-cast v2, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;

    invoke-virtual {v2}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer;->getReadingProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 195
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->context:Landroid/content/Context;

    sget v3, Lcom/amazon/kindle/krl/R$string;->speak_reading_progress:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 197
    iget-object v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->progressVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 198
    :cond_3
    new-instance v2, Lcom/amazon/kcp/reader/accessibility/VirtualView;

    invoke-direct {v2, p1, v1, v5}, Lcom/amazon/kcp/reader/accessibility/VirtualView;-><init>(Landroid/graphics/Rect;Ljava/lang/String;Z)V

    .line 199
    iput-object v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->progressVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 200
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 202
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->progressVirtualView:Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public onAccessibilityDisabled()V
    .locals 0

    return-void
.end method

.method public onAccessibilityEnabled()V
    .locals 0

    return-void
.end method

.method public final onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    .line 119
    invoke-super {p0, p1}, Lcom/amazon/kcp/reader/gestures/SimpleGestureHandler;->onFirstPointerDown(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    return p1
.end method

.method public onFirstPointerUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 131
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->eventIsInFooterRect(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->eventIsInRightHandCorner(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->savedDownEvent:Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-static {v0, p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->checkUnconfirmedSingleTapFromUp(Lcom/amazon/kindle/krx/gesture/GestureEvent;Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onMobiDocViewerEvent(Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 48
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent;->getType()Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;->FOOTER_LOCATION_CHANGED:Lcom/amazon/android/docviewer/mobi/MobiDocViewer$MobiDocViewerEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 49
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 50
    invoke-direct {p0}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->recomputeTtrContentDescription()V

    .line 51
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->tappedFooterArea:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 52
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->tappedFooterArea:Z

    .line 53
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 55
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccessibilitySpeaker()Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->ttrContentDescription:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/accessibility/AccessibilitySpeaker;->speakViaTalkback(Ljava/lang/CharSequence;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onSingleTap(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 3

    .line 136
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 140
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->eventIsInFooterRect(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 141
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->tappedFooterArea:Z

    .line 142
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->toggleFooter()V

    return v2

    .line 146
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->eventIsInRightHandCorner(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->tappedFooterArea:Z

    .line 148
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->performFooterGestureActionsFromProviders()Z

    move-result p1

    if-nez p1, :cond_2

    .line 150
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v0

    if-nez v0, :cond_2

    .line 151
    iget-object p1, p0, Lcom/amazon/kcp/reader/gestures/FooterGestureHandler;->gestureService:Lcom/amazon/kcp/reader/gestures/GestureService;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureService;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->toggleFooter()V

    goto :goto_0

    :cond_2
    move v2, p1

    :goto_0
    return v2

    :cond_3
    return v1
.end method
