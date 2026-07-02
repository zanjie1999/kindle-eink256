.class public Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;
.super Landroidx/customview/widget/ExploreByTouchHelper;
.source "KindleAccessibilityDelegate.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final UNKNOWN_VIEW_EMPTY_TEXT:Ljava/lang/String; = ""

.field private static final UNKNOWN_VIEW_TEXT:Ljava/lang/String; = "Unknown View"

.field public static final VIRTUAL_NODE_CLASS:Ljava/lang/String;


# instance fields
.field private accessibilityListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

.field private connected:Z

.field protected context:Landroid/content/Context;

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

.field private handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

.field private layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

.field private navigatingGranularityDirection:I

.field private navigatingTextGranularityRange:[I

.field private navigatingVirtualViewId:I

.field private overlaysVisible:Z

.field pluginLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

.field protected readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

.field private view:Lcom/amazon/android/docviewer/KindleDocView;

.field private viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

.field private virtualViewsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field

.field private virtualViewsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazon/kindle/krx/accessibility/IVirtualView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    const-class v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->TAG:Ljava/lang/String;

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".VirtualView"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->VIRTUAL_NODE_CLASS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/android/docviewer/KindleDocView;Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 2

    .line 121
    invoke-direct {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;-><init>(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    .line 79
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingVirtualViewId:I

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 87
    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    .line 89
    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    .line 99
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$1;-><init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->pluginLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    .line 643
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$2;-><init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    .line 657
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$3;-><init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->accessibilityListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    .line 668
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$4;-><init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 122
    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    .line 123
    iput-object p3, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 124
    iput-object p2, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->context:Landroid/content/Context;

    .line 125
    iput-object p4, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    .line 126
    invoke-virtual {p4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    .line 128
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->setupPluginOverlayListener()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    return p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)[I
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connect()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->disconnect()V

    return-void
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->accessibilityListener:Landroidx/core/view/accessibility/AccessibilityManagerCompat$AccessibilityStateChangeListenerCompat;

    return-object p0
.end method

.method private connect()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 139
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getVirtualViewHierarchyManager()Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    const/4 v1, 0x1

    .line 140
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->notifyAccessibilityStateChanged(Z)V

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    .line 143
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 150
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->layoutEventListener:Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewerEventHandler:Lcom/amazon/android/docviewer/IKindleDocViewerEvents;

    invoke-interface {v0, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 156
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->notifyAccessibilityStateChanged(Z)V

    const/4 v0, 0x0

    .line 157
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    .line 158
    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    .line 159
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    return-void
.end method

.method private getIteratorAtGranularity(ILjava/lang/String;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;
    .locals 2

    .line 594
    new-instance v0, Ljava/util/Locale;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLocaleManager()Lcom/amazon/kindle/services/locale/ILocaleManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/services/locale/ILocaleManager;->getLocaleCode()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 613
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;->getInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$PageTextSegmentIterator;

    move-result-object p1

    goto :goto_0

    .line 609
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;->getInstance()Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$ParagraphTextSegmentIterator;

    move-result-object p1

    goto :goto_0

    .line 605
    :cond_2
    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;->getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$SentenceTextSegmentIterator;

    move-result-object p1

    goto :goto_0

    .line 601
    :cond_3
    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;->getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$WordTextSegmentIterator;

    move-result-object p1

    goto :goto_0

    .line 597
    :cond_4
    invoke-static {v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;->getInstance(Ljava/util/Locale;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$CharacterTextSegmentIterator;

    move-result-object p1

    .line 619
    :goto_0
    invoke-virtual {p1, p2}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$AbstractTextSegmentIterator;->initialize(Ljava/lang/String;)V

    return-object p1
.end method

.method private recomputeVirtualViewsMapFromList()V
    .locals 4

    .line 637
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 638
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 639
    iget-object v2, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private redoVirtualViewHierarchy()V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->getVirtualViews()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsList:Ljava/util/List;

    .line 629
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->markRead()V

    .line 630
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->recomputeVirtualViewsMapFromList()V

    return-void
.end method

.method private sendTextTraversedAtGranularityEvent(IIIILjava/lang/String;)V
    .locals 2

    const/high16 v0, 0x20000

    .line 567
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 568
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p0, v1, v0}, Landroidx/customview/widget/ExploreByTouchHelper;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 569
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p0, v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 570
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 572
    invoke-virtual {v0, p4}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 573
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 574
    invoke-virtual {v0, p2}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 576
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 578
    iget-object p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 581
    iget-object p2, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-static {p1, p2, v0}, Landroidx/core/view/ViewParentCompat;->requestSendAccessibilityEvent(Landroid/view/ViewParent;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    :cond_0
    return-void
.end method

.method private setupPluginOverlayListener()V
    .locals 2

    .line 733
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 736
    new-instance v1, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$5;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate$5;-><init>(Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;)V

    .line 744
    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    goto :goto_0

    .line 747
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->getPluginOverlay()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 749
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->pluginLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 750
    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->pluginLayoutChangeListener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchHoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 205
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverEnter(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 209
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public dispatchHoverEventInReader(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 165
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->getHoverGesturesDisabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->usesReaderGestureDetector()Z

    move-result v0

    if-nez v0, :cond_6

    .line 171
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-virtual {p0, v0, v3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->getVirtualViewObjectAt(FF)Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 172
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    .line 173
    :goto_0
    iget-object v4, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v4

    if-nez v4, :cond_7

    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v4

    if-ne v4, v3, :cond_7

    .line 174
    new-instance v3, Lcom/amazon/kindle/krx/gesture/GestureEvent;

    invoke-direct {v3, p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;-><init>(Landroid/view/MotionEvent;)V

    .line 175
    invoke-virtual {v3, v0}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->setVirtualView(Lcom/amazon/kindle/krx/accessibility/IVirtualView;)V

    if-eqz v0, :cond_2

    .line 177
    invoke-interface {v0, v3}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->handleHoverEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v4, 0x7

    if-eq v0, v4, :cond_5

    const/16 v4, 0x9

    if-eq v0, v4, :cond_4

    const/16 v4, 0xa

    if-eq v0, v4, :cond_3

    goto :goto_1

    .line 189
    :cond_3
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->dispatchHoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    goto :goto_2

    .line 183
    :cond_4
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->dispatchHoverEnterEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    goto :goto_2

    .line 186
    :cond_5
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->dispatchHoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v0

    goto :goto_2

    .line 195
    :cond_6
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDocViewer;

    if-eqz v0, :cond_7

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_9

    .line 200
    invoke-super {p0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x0

    :cond_9
    :goto_3
    return v1
.end method

.method public dispatchHoverExitEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 223
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverExit(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 227
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method public dispatchHoverMoveEvent(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handlerFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getHandlers()Ljava/util/TreeSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/gesture/IGestureHandler;

    .line 214
    invoke-interface {v1, p1}, Lcom/amazon/kindle/krx/gesture/IGestureHandler;->onHoverMove(Lcom/amazon/kindle/krx/gesture/GestureEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->consume()V

    goto :goto_0

    .line 218
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/gesture/GestureEvent;->hasBeenConsumed()Z

    move-result p1

    return p1
.end method

.method protected getPluginOverlay()Landroid/view/ViewGroup;
    .locals 2

    .line 725
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->readerLayout:Lcom/amazon/kcp/reader/ui/ReaderLayout;

    if-eqz v0, :cond_0

    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getVirtualViewAt(FF)I
    .locals 4

    .line 255
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    if-nez v0, :cond_0

    .line 256
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connect()V

    :cond_0
    float-to-int p1, p1

    float-to-int p2, p2

    .line 263
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    return v1

    .line 267
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 268
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 276
    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 277
    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result p1

    return p1

    :cond_4
    return v1
.end method

.method protected getVirtualViewObjectAt(FF)Lcom/amazon/kindle/krx/accessibility/IVirtualView;
    .locals 4

    .line 295
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    if-nez v0, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connect()V

    :cond_0
    float-to-int p1, p1

    float-to-int p2, p2

    .line 303
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return-object v1

    .line 307
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 308
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 316
    invoke-interface {v2}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_4
    return-object v1
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 333
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connected:Z

    if-nez v0, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->connect()V

    .line 337
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    if-eqz v0, :cond_1

    return-void

    .line 342
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->getPluginOverlay()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 343
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 344
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    .line 352
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    .line 353
    invoke-interface {v1}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected handleActivityPaused()V
    .locals 0

    return-void
.end method

.method protected handleDirectionAtGranularity(IILandroid/os/Bundle;)Z
    .locals 5

    .line 479
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    .line 481
    invoke-virtual {p3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    const/16 v2, 0x100

    const/4 v3, 0x1

    if-ne p2, v2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 484
    :goto_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 485
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    .line 486
    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->getIteratorAtGranularity(ILjava/lang/String;)Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 488
    iget v4, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingVirtualViewId:I

    if-eq v4, p1, :cond_1

    .line 489
    iget-object v4, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aput v1, v4, v1

    .line 490
    aput v1, v4, v3

    .line 491
    iput p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingVirtualViewId:I

    const/4 p1, -0x1

    .line 492
    iput p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    :cond_1
    if-eqz p2, :cond_2

    .line 496
    invoke-virtual {p0, p3, v2, v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handleNextAtGranularity(ILcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 498
    :cond_2
    invoke-virtual {p0, p3, v2, v0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handlePreviousAtGranularity(ILcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method protected handleNextAtGranularity(ILcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;Ljava/lang/String;)Z
    .locals 10

    .line 514
    iget v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    const/16 v1, 0x100

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 515
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v0, v0, v2

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v0, v0, v3

    .line 516
    :goto_1
    iput v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    .line 518
    invoke-interface {p2, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;->following(I)[I

    move-result-object p2

    if-nez p2, :cond_2

    return v3

    .line 523
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v1, p2, v3

    aput v1, v0, v3

    .line 524
    aget v1, p2, v2

    aput v1, v0, v2

    const/16 v5, 0x100

    .line 526
    aget v7, p2, v3

    aget v8, p2, v2

    move-object v4, p0

    move v6, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->sendTextTraversedAtGranularityEvent(IIIILjava/lang/String;)V

    return v2
.end method

.method protected handleOverlayVisibilityChanged(Z)V
    .locals 2

    .line 694
    invoke-virtual {p0}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    move-result v0

    const/high16 v1, 0x10000

    invoke-virtual {p0, v0, v1}, Landroidx/customview/widget/ExploreByTouchHelper;->sendEventForVirtualView(II)Z

    .line 695
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p0, v0, v1}, Landroidx/core/view/AccessibilityDelegateCompat;->sendAccessibilityEvent(Landroid/view/View;I)V

    if-eqz p1, :cond_0

    .line 701
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    if-nez v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    goto :goto_0

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->onVirtualViewsChanged()V

    .line 708
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->overlaysVisible:Z

    return-void
.end method

.method protected handlePreviousAtGranularity(ILcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;Ljava/lang/String;)Z
    .locals 10

    .line 539
    iget v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    const/16 v1, 0x200

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 540
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v0, v0, v3

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v0, v0, v2

    .line 541
    :goto_1
    iput v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    .line 543
    invoke-interface {p2, v0}, Lcom/amazon/kcp/reader/accessibility/AccessibilityIterators$TextSegmentIterator;->preceding(I)[I

    move-result-object p2

    if-nez p2, :cond_2

    return v3

    .line 548
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    aget v1, p2, v3

    aput v1, v0, v3

    .line 549
    aget v1, p2, v2

    aput v1, v0, v2

    const/16 v5, 0x200

    .line 551
    aget v7, p2, v3

    aget v8, p2, v2

    move-object v4, p0

    move v6, p1

    move-object v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->sendTextTraversedAtGranularityEvent(IIIILjava/lang/String;)V

    return v2
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 1

    const/16 v0, 0x100

    if-eq p2, v0, :cond_0

    const/16 v0, 0x200

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 465
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->handleDirectionAtGranularity(IILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 369
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-nez v0, :cond_1

    .line 376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for unknown child "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    .line 380
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Populating Event for VirtualView "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->view:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 384
    sget-object p1, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->VIRTUAL_NODE_CLASS:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->viewManager:Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/accessibility/VirtualViewHierarchyManager;->changedSinceLastMark()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-direct {p0}, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->redoVirtualViewHierarchy()V

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->virtualViewsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/krx/accessibility/IVirtualView;

    if-eqz v0, :cond_1

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Populating Node for VirtualView "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 409
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 410
    sget-object p1, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->VIRTUAL_NODE_CLASS:Ljava/lang/String;

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    const/16 p1, 0x10

    .line 412
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p1, 0x20

    .line 413
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 415
    invoke-interface {v0}, Lcom/amazon/kindle/krx/accessibility/IVirtualView;->isTextual()Z

    move-result p1

    if-eqz p1, :cond_3

    const/16 p1, 0x1f

    .line 416
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    const/16 p1, 0x100

    .line 421
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p1, 0x200

    .line 422
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1

    .line 426
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got a virtualViewId that we don\'t recognize: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ". Giving it a generic content description"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown View"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    const-string p1, ""

    .line 432
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 434
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 3

    const v0, 0x8000

    if-ne p2, v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingTextGranularityRange:[I

    const/4 v1, 0x0

    aput v1, v0, v1

    const/4 v2, 0x1

    .line 236
    aput v1, v0, v2

    const/4 v0, -0x1

    .line 237
    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingVirtualViewId:I

    .line 238
    iput v0, p0, Lcom/amazon/kcp/reader/accessibility/KindleAccessibilityDelegate;->navigatingGranularityDirection:I

    .line 241
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroidx/core/view/AccessibilityDelegateCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method
