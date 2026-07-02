.class public Lcom/amazon/krf/internal/KRFGLESView;
.super Landroid/view/SurfaceView;
.source "KRFGLESView.java"

# interfaces
.implements Lcom/amazon/krf/platform/UIEventHandler;
.implements Lcom/amazon/krf/platform/Navigable;
.implements Landroid/content/ComponentCallbacks2;
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static final KRF_CLASS_NAME:Ljava/lang/String; = "com.amazon.krf.platform.KRFView"

.field private static final LOG_TAG:Ljava/lang/String; = "KRFGLESView"


# instance fields
.field private mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

.field private mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

.field private mAccessibilityHandlerRef:J

.field private mAccessibilityItemChangedListenerDelegate:Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

.field private mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

.field private mContentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

.field private mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

.field private mDefaultHandler:Lcom/amazon/krf/platform/UIEventHandler;

.field private mDefaultSelection:Lcom/amazon/krf/platform/Selection;

.field private mFrameCallbacks:Lcom/amazon/krf/internal/FrameCallbacks;

.field private mHandler:Landroid/os/Handler;

.field private mLocalizationDataSource:Lcom/amazon/krf/platform/LocalizationDataSource;

.field private mNavigationListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/NavigationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageManager:Lcom/amazon/krf/platform/PageManager;

.field private mPanZoomListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/PanZoomListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionChangeListener:Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

.field private mSelectionMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lcom/amazon/krf/internal/SelectionImpl;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsChangedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/SettingsChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportsPageTurn:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

.field private mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

.field private m_KRFView:J

.field private m_MarginalDataProvider:Lcom/amazon/krf/platform/MarginalDataProvider;

.field private m_MarginalListener:Lcom/amazon/krf/platform/MarginalListener;

.field private m_OrientationLockRequestListener:Lcom/amazon/krf/platform/OrientationLockRequestListener;

.field private m_ParentView:Lcom/amazon/krf/platform/KRFView;

.field private m_handle:Lcom/amazon/krf/platform/UIHandle;

.field private m_willFinishInitializing:Z


# direct methods
.method constructor <init>(Lcom/amazon/krf/platform/KRFView;Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/internal/KRFGLESView;-><init>(Lcom/amazon/krf/platform/KRFView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/KRFView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 142
    invoke-direct {p0, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p3, 0x0

    .line 101
    iput-object p3, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 116
    sget-object v0, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSettingsChangedListeners:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionMap:Ljava/util/WeakHashMap;

    const-string v0, "KRFGLESView"

    const-string v1, "Creating new KRFGLESView"

    .line 143
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_ParentView:Lcom/amazon/krf/platform/KRFView;

    .line 145
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->onCreate()V

    .line 146
    new-instance p1, Lcom/amazon/krf/internal/input/InputEventDetector;

    invoke-direct {p1, p2, p0}, Lcom/amazon/krf/internal/input/InputEventDetector;-><init>(Landroid/content/Context;Lcom/amazon/krf/platform/UIEventHandler;)V

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    .line 147
    new-instance p1, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

    invoke-direct {p1}, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;-><init>()V

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionChangeListener:Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

    .line 148
    new-instance p1, Lcom/amazon/krf/platform/AccessibilityListener;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, p3}, Lcom/amazon/krf/platform/AccessibilityListener;-><init>(Landroid/content/Context;Lcom/amazon/krf/platform/AccessibilityProvider;)V

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

    .line 149
    new-instance p1, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

    invoke-direct {p1}, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;-><init>()V

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityItemChangedListenerDelegate:Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

    .line 150
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 151
    new-instance p1, Lcom/amazon/krf/internal/FrameCallbacks;

    invoke-direct {p1, p0}, Lcom/amazon/krf/internal/FrameCallbacks;-><init>(Lcom/amazon/krf/internal/KRFGLESView;)V

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mFrameCallbacks:Lcom/amazon/krf/internal/FrameCallbacks;

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_willFinishInitializing:Z

    .line 153
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/krf/internal/KRFGLESView;)Lcom/amazon/krf/internal/input/InputEventDetector;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    return-object p0
.end method

.method private native createSelectionHandler()J
.end method

.method private disposeAccessibilityDelegate()V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->removeAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z

    .line 175
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 176
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    .line 177
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->dispose()V

    const/4 v0, 0x0

    .line 178
    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    :cond_0
    return-void
.end method

.method private native getDefaultSelectionHandler()J
.end method

.method private init()V
    .locals 1

    .line 234
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 236
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 237
    new-instance v0, Lcom/amazon/krf/internal/KRFGLESView$1;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/KRFGLESView$1;-><init>(Lcom/amazon/krf/internal/KRFGLESView;)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 246
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 248
    new-instance v0, Lcom/amazon/krf/internal/KRFGLESView$2;

    invoke-direct {v0, p0}, Lcom/amazon/krf/internal/KRFGLESView$2;-><init>(Lcom/amazon/krf/internal/KRFGLESView;)V

    invoke-virtual {p0, v0}, Landroid/view/SurfaceView;->setOnGenericMotionListener(Landroid/view/View$OnGenericMotionListener;)V

    return-void
.end method

.method private native nativeAttachContentViewer(J)V
.end method

.method private native nativeGetColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;
.end method

.method private native nativeGetPageManager(Landroid/content/Context;Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/PageManager;
.end method

.method private native nativeGetPageTransitionStyle()I
.end method

.method private native nativeGetSettings(I)Lcom/amazon/krf/platform/ViewSettings;
.end method

.method private native nativeOnSurfaceTextureAvailable(Landroid/view/Surface;II)V
.end method

.method private native nativeOnSurfaceTextureDestroyed(Landroid/view/Surface;)Z
.end method

.method private native nativeOnSurfaceTextureSizeChanged(Landroid/view/Surface;II)V
.end method

.method private native nativeOnTrimMemory(I)V
.end method

.method private native nativeOpenComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z
.end method

.method private native nativeSetColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V
.end method

.method private native nativeSetMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V
.end method

.method private native nativeSetMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V
.end method

.method private native nativeSetReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V
.end method

.method private native nativeSetSelectionStyle(III)V
.end method

.method private native nativeSetSettings(Lcom/amazon/krf/platform/ViewSettings;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation
.end method

.method private native nativeUIStartTransaction(FFI)Lcom/amazon/krf/platform/UIHandle;
.end method

.method private native nativeWriteToBitmap(Landroid/graphics/Bitmap;II)V
.end method

.method private notifySettingsChanged(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 2

    .line 996
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSettingsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/platform/SettingsChangedListener;

    .line 997
    invoke-interface {v1, p1, p2}, Lcom/amazon/krf/platform/SettingsChangedListener;->onSettingsChanged(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private native onCreate()V
.end method

.method private releaseSelections()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 216
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/krf/internal/SelectionImpl;

    .line 218
    invoke-virtual {v1}, Lcom/amazon/krf/internal/SelectionImpl;->release()V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    const/4 v0, 0x0

    .line 221
    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultSelection:Lcom/amazon/krf/platform/Selection;

    return-void
.end method

.method private setupAccessibilityDelegate(Lcom/amazon/krf/platform/AccessibilityHandler;)V
    .locals 2

    .line 418
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->disposeAccessibilityDelegate()V

    .line 420
    invoke-static {}, Lcom/amazon/krf/platform/KRF;->getGlobalVariables()Ljava/util/HashMap;

    move-result-object v0

    const-string v1, "krf.use_acc"

    .line 421
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "0"

    .line 422
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    .line 427
    :cond_1
    new-instance v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;-><init>(Lcom/amazon/krf/platform/AccessibilityHandler;Lcom/amazon/krf/internal/KRFGLESView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    .line 428
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 430
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityItemChangedListenerDelegate:Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->clearAccessibilityItemChangedListener()V

    .line 431
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z

    .line 432
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    .line 433
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    .line 435
    iget-boolean p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSupportsPageTurn:Z

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setAccessibilityPageTurnSupport(Z)V

    .line 436
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V

    return-void
.end method


# virtual methods
.method public native UIEndTransaction(Lcom/amazon/krf/platform/UIHandle;)V
.end method

.method public UIEventHandled(Lcom/amazon/krf/platform/UIData;)V
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultHandler:Lcom/amazon/krf/platform/UIEventHandler;

    if-eqz v0, :cond_0

    .line 412
    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/UIEventHandler;->UIEventHandled(Lcom/amazon/krf/platform/UIData;)V

    :cond_0
    return-void
.end method

.method public UISendEvent(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
    .locals 3

    .line 389
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 390
    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->LONG_PRESS:Lcom/amazon/krf/platform/UIData$Type;

    if-ne v0, v1, :cond_0

    .line 391
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getHoveredWordElement()Lcom/amazon/krf/platform/element/PageElement;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 393
    invoke-virtual {v0}, Lcom/amazon/krf/platform/element/PageElement;->getCoveringRectangles()[Landroid/graphics/RectF;

    move-result-object v0

    const/4 v1, 0x0

    .line 396
    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getTransactionType()Lcom/amazon/krf/platform/UIData$TransactionType;

    move-result-object p2

    invoke-static {v2, v0, p2}, Lcom/amazon/krf/platform/UIData;->createLongPress(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIData;

    move-result-object p2

    goto :goto_0

    .line 400
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/krf/platform/UIData;->getType()Lcom/amazon/krf/platform/UIData$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/krf/platform/UIData$Type;->SINGLE_TAP:Lcom/amazon/krf/platform/UIData$Type;

    if-ne v0, v1, :cond_1

    .line 401
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    invoke-virtual {v0, p2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->handleSingleTap(Lcom/amazon/krf/platform/UIData;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 406
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->UISendEventNative(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z

    move-result p1

    return p1
.end method

.method public native UISendEventNative(Lcom/amazon/krf/platform/UIHandle;Lcom/amazon/krf/platform/UIData;)Z
.end method

.method public UIStartTransaction(FFLcom/amazon/krf/platform/UIData$TransactionType;)Lcom/amazon/krf/platform/UIHandle;
    .locals 0

    .line 379
    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/internal/KRFGLESView;->nativeUIStartTransaction(FFI)Lcom/amazon/krf/platform/UIHandle;

    move-result-object p1

    return-object p1
.end method

.method public addAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityItemChangedListenerDelegate:Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->addAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z

    move-result p1

    return p1
.end method

.method public native addBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V
.end method

.method public addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 629
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-nez v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 633
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 645
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-nez v0, :cond_0

    .line 646
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/internal/NavigationControllerImpl;

    .line 650
    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/NavigationControllerImpl;->addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public native addPlugin(Lcom/amazon/krf/platform/KRFPlugin;)V
.end method

.method public addSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
    .locals 1

    .line 675
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionChangeListener:Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->add(Lcom/amazon/krf/platform/SelectionChangeListener;)V

    return-void
.end method

.method public addSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V
    .locals 1

    .line 976
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSettingsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public native areSelectionsVisible()Z
.end method

.method public attachContentViewer(Lcom/amazon/krf/platform/ContentViewer;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1004
    instance-of v0, p1, Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1007
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported implementation of ContentViewer."

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1010
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-ne v0, p1, :cond_2

    return-void

    .line 1014
    :cond_2
    check-cast p1, Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz v0, :cond_3

    .line 1016
    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->dispose()V

    .line 1018
    :cond_3
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    .line 1020
    invoke-virtual {p1}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/internal/NavigationControllerImpl;

    .line 1021
    iget-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/NavigationListener;

    .line 1022
    invoke-virtual {v0, v2}, Lcom/amazon/krf/internal/NavigationControllerImpl;->addNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    goto :goto_1

    .line 1024
    :cond_4
    iget-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1026
    iget-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/krf/platform/PanZoomListener;

    .line 1027
    invoke-virtual {v0, v2}, Lcom/amazon/krf/internal/NavigationControllerImpl;->addPanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    goto :goto_2

    .line 1029
    :cond_5
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1031
    invoke-virtual {p1}, Lcom/amazon/krf/internal/ContentViewerImpl;->getHandle()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeAttachContentViewer(J)V

    .line 1033
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mFrameCallbacks:Lcom/amazon/krf/internal/FrameCallbacks;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/internal/FrameCallbacks;->enableVSyncCallbacks(Z)V

    .line 1037
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_6

    .line 1038
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOnSurfaceTextureAvailable(Landroid/view/Surface;II)V

    goto :goto_3

    .line 1040
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/krf/internal/ContentViewerImpl;->initialize()V

    :goto_3
    return-void
.end method

.method public native bookDidFinishInitializing()V
.end method

.method public bookWillFinishInitializing()V
    .locals 1

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_willFinishInitializing:Z

    return-void
.end method

.method public canGoToCoverPage()Z
    .locals 1

    .line 795
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->canGoToCoverPage()Z

    move-result v0

    return v0
.end method

.method public canGoToNextPage()Z
    .locals 1

    .line 753
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->canGoToNextPage()Z

    move-result v0

    return v0
.end method

.method public canGoToPreviousPage()Z
    .locals 1

    .line 765
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->canGoToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public canGoToTableOfContentsPage()Z
    .locals 1

    .line 801
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->canGoToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public native clearSelection()Z
.end method

.method public native closeComponentViewer()Z
.end method

.method public native contains(Lcom/amazon/krf/platform/Position;)Z
.end method

.method public createSelection()Lcom/amazon/krf/platform/Selection;
    .locals 6

    .line 887
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->createSelectionHandler()J

    move-result-wide v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 889
    new-instance v3, Lcom/amazon/krf/internal/SelectionImpl;

    invoke-direct {v3, v0, v1}, Lcom/amazon/krf/internal/SelectionImpl;-><init>(J)V

    .line 890
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, v3, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :cond_0
    return-object v2
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispose()V
    .locals 4

    .line 183
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->releaseSelections()V

    .line 185
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mFrameCallbacks:Lcom/amazon/krf/internal/FrameCallbacks;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0}, Lcom/amazon/krf/internal/FrameCallbacks;->dispose()V

    .line 188
    iput-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mFrameCallbacks:Lcom/amazon/krf/internal/FrameCallbacks;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->dispose()V

    .line 193
    iput-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    .line 195
    :cond_1
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->disposeAccessibilityDelegate()V

    .line 196
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

    if-eqz v0, :cond_2

    .line 197
    invoke-virtual {v0}, Lcom/amazon/krf/platform/AccessibilityListener;->dispose()V

    .line 198
    iput-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

    .line 201
    :cond_2
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    .line 203
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x0

    .line 204
    iput-wide v2, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_KRFView:J

    .line 208
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 209
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->dispose()V

    .line 210
    iput-object v1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    :cond_3
    return-void
.end method

.method public enableStylusBehavior(Z)V
    .locals 1

    .line 1116
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->enableStylusBehavior(Z)V

    return-void
.end method

.method public native enterGuidedView()Z
.end method

.method public native exitGuidedView()Z
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 368
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFGLESView;->dispose()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 371
    throw v0
.end method

.method public getAccessibilityDelegate()Lcom/amazon/krf/platform/KRFAccessibilityDelegate;
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    return-object v0
.end method

.method public getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    return-object v0
.end method

.method public getBitmap(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1109
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    .line 1110
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1111
    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeWriteToBitmap(Landroid/graphics/Bitmap;II)V

    return-object v0
.end method

.method public getBook()Lcom/amazon/krf/platform/KRFBook;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getBook()Lcom/amazon/krf/platform/KRFBook;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getClosestElementPositionRange(FF)Lcom/amazon/krf/platform/PositionRange;
    .locals 1

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 581
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/krf/internal/KRFGLESView;->getClosestElementPositionRange(FFF)Lcom/amazon/krf/platform/PositionRange;

    move-result-object p1

    return-object p1
.end method

.method public native getClosestElementPositionRange(FFF)Lcom/amazon/krf/platform/PositionRange;
.end method

.method public getContentAccessibilityVerbosity()Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;
    .locals 1

    .line 841
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    return-object v0
.end method

.method public getContentDecorationEventListener()Lcom/amazon/krf/platform/ContentDecorationEventListener;
    .locals 1

    .line 913
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

    return-object v0
.end method

.method public getCurrentColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;
    .locals 1

    .line 986
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetColorTheme()Lcom/amazon/krf/platform/theme/ColorTheme;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSelection()Lcom/amazon/krf/platform/Selection;
    .locals 5

    .line 874
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultSelection:Lcom/amazon/krf/platform/Selection;

    if-nez v0, :cond_0

    .line 875
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->getDefaultSelectionHandler()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 877
    new-instance v2, Lcom/amazon/krf/internal/SelectionImpl;

    invoke-direct {v2, v0, v1}, Lcom/amazon/krf/internal/SelectionImpl;-><init>(J)V

    .line 878
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionMap:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 879
    iput-object v2, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultSelection:Lcom/amazon/krf/platform/Selection;

    .line 882
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultSelection:Lcom/amazon/krf/platform/Selection;

    return-object v0
.end method

.method public native getFixedFormatFullpagePosition()Lcom/amazon/krf/platform/Position;
.end method

.method public native getHistoryManager()Lcom/amazon/krf/platform/HistoryManager;
.end method

.method public getLocalizationDataSource()Lcom/amazon/krf/platform/LocalizationDataSource;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mLocalizationDataSource:Lcom/amazon/krf/platform/LocalizationDataSource;

    return-object v0
.end method

.method public getPageManager(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/PageManager;
    .locals 1

    .line 687
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPageManager:Lcom/amazon/krf/platform/PageManager;

    if-nez v0, :cond_0

    .line 688
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetPageManager(Landroid/content/Context;Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/PageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPageManager:Lcom/amazon/krf/platform/PageManager;

    .line 691
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPageManager:Lcom/amazon/krf/platform/PageManager;

    return-object p1
.end method

.method public getPageTransitionStyle()Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;
    .locals 3

    .line 1097
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetPageTransitionStyle()I

    move-result v0

    invoke-static {v0}, Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;->createFromInt(I)Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "KRFGLESView"

    const-string v2, "getPageTransitionStyle exception"

    .line 1099
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    .line 1100
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/krf/platform/ThreadUtils;->assertDebug(Ljava/lang/Boolean;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParentKRFView()Lcom/amazon/krf/platform/KRFView;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_ParentView:Lcom/amazon/krf/platform/KRFView;

    return-object v0
.end method

.method public native getPositionRange()Lcom/amazon/krf/platform/PositionRange;
.end method

.method public native getPositionRangeFromBoundingBox(IIII)Lcom/amazon/krf/platform/PositionRange;
.end method

.method public native getPositionRangeFromLine(IIII)Lcom/amazon/krf/platform/PositionRange;
.end method

.method public native getPositionRangeFromOval(IIII)Lcom/amazon/krf/platform/PositionRange;
.end method

.method public getSelectionChangeListener()Lcom/amazon/krf/platform/SelectionChangeListener;
    .locals 1

    .line 683
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionChangeListener:Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

    return-object v0
.end method

.method public getSettings(Lcom/amazon/krf/platform/KRFView$Orientation;)Lcom/amazon/krf/platform/ViewSettings;
    .locals 0

    .line 498
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetSettings(I)Lcom/amazon/krf/platform/ViewSettings;

    move-result-object p1

    return-object p1
.end method

.method public getSpeechBreakers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;"
        }
    .end annotation

    .line 671
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFGLESView;->nativeGetSpeechBreakers()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    const/16 v0, 0x3c

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    const/16 v0, 0x50

    return v0
.end method

.method public goToCoverPage()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToCoverPage()Z

    move-result v0

    return v0
.end method

.method public goToFirstPage()Z
    .locals 1

    .line 783
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToFirstPage()Z

    move-result v0

    return v0
.end method

.method public goToLastPage()Z
    .locals 1

    .line 789
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToLastPage()Z

    move-result v0

    return v0
.end method

.method public goToLocation(J)Z
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/Navigable;->goToLocation(J)Z

    move-result p1

    return p1
.end method

.method public goToNextPage()Z
    .locals 1

    .line 759
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToNextPage()Z

    move-result v0

    return v0
.end method

.method public goToPercent(D)Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/amazon/krf/platform/Navigable;->goToPercent(D)Z

    move-result p1

    return p1
.end method

.method public goToPosition(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->goToPosition(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->goToPositionAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 735
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z
    .locals 1

    .line 729
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->goToPositionOnLoadAsync(Lcom/amazon/krf/platform/Position;)Z

    move-result p1

    return p1
.end method

.method public goToPreviousPage()Z
    .locals 1

    .line 771
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToPreviousPage()Z

    move-result v0

    return v0
.end method

.method public goToStartReadingPage()Z
    .locals 1

    .line 777
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToStartReadingPage()Z

    move-result v0

    return v0
.end method

.method public goToTableOfContentsPage()Z
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/krf/platform/Navigable;->goToTableOfContentsPage()Z

    move-result v0

    return v0
.end method

.method public hasFootnotes()Z
    .locals 1

    .line 1066
    invoke-virtual {p0}, Lcom/amazon/krf/internal/KRFGLESView;->nativeHasFootnotes()Z

    move-result v0

    return v0
.end method

.method public isAccessibilityPageTurnSupport()Z
    .locals 1

    .line 821
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSupportsPageTurn:Z

    return v0
.end method

.method public isStylusBehaviorEnabled()Z
    .locals 1

    .line 1120
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/input/InputEventDetector;->isStylusBehaviorEnabled()Z

    move-result v0

    return v0
.end method

.method public native modifyContentDecorationStyle(Lcom/amazon/krf/platform/ContentDecorationStyle;IIIFF)V
.end method

.method public native modifyContentDecorationStyles([Lcom/amazon/krf/platform/ContentDecorationStyle;)V
.end method

.method protected native nativeDoFrame(J)V
.end method

.method public native nativeGetPageElements()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/krf/platform/element/PageElement;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeGetSpeechBreakers()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/krf/platform/SpeechBreaker;",
            ">;"
        }
    .end annotation
.end method

.method public native nativeGetWordPageElementAtPoint(FF)Lcom/amazon/krf/platform/element/WordPageElement;
.end method

.method public native nativeHasFootnotes()Z
.end method

.method public native nativeSetDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
.end method

.method public native nativeSetFootnotesFontStyle(Ljava/lang/String;F)V
.end method

.method native nativeSetLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V
.end method

.method native nativeSetWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 967
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 972
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 165
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "com.amazon.krf.platform.KRFView"

    .line 159
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 320
    invoke-virtual {p0, p1, p2}, Landroid/view/SurfaceView;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 324
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 5

    .line 959
    iget-wide v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_KRFView:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 960
    invoke-static {p1}, Lcom/amazon/krf/internal/MemoryUtils;->nativeWarningLevelFromAndroidWarningLevel(I)I

    move-result p1

    .line 961
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOnTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public openComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z
    .locals 0

    .line 936
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOpenComponentViewer(Lcom/amazon/krf/platform/PositionRange;)Z

    move-result p1

    return p1
.end method

.method public native pauseComponent(I)V
.end method

.method public pauseRendering()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 347
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->pauseComponent(I)V

    return-void
.end method

.method public native reloadCurrentPageMarginals()V
.end method

.method public removeAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z
    .locals 1

    .line 667
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityItemChangedListenerDelegate:Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/AccessibilityItemChangedListenerDelegate;->removeAccessibilityItemChangedListener(Lcom/amazon/krf/platform/AccessibilityItemChangedListener;)Z

    move-result p1

    return p1
.end method

.method public native removeBookBoundaryListener(Lcom/amazon/krf/platform/BookBoundaryListener;)V
.end method

.method public removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-nez v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mNavigationListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 641
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->removeNavigationListener(Lcom/amazon/krf/platform/NavigationListener;)Z

    move-result p1

    return p1
.end method

.method public removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z
    .locals 1

    .line 654
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-nez v0, :cond_0

    .line 655
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPanZoomListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 658
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    check-cast v0, Lcom/amazon/krf/internal/NavigationControllerImpl;

    .line 659
    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/NavigationControllerImpl;->removePanZoomListener(Lcom/amazon/krf/platform/PanZoomListener;)Z

    move-result p1

    return p1
.end method

.method public removeSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)Z
    .locals 1

    .line 679
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSelectionChangeListener:Lcom/amazon/krf/internal/SelectionChangeListenerCollection;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/internal/SelectionChangeListenerCollection;->remove(Lcom/amazon/krf/platform/SelectionChangeListener;)Z

    move-result p1

    return p1
.end method

.method public removeSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V
    .locals 1

    .line 980
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSettingsChangedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public native resetPluginVisibilityLifeCycleListener()V
.end method

.method public native resumeComponent(I)V
.end method

.method public resumeRendering()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x4

    .line 357
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->resumeComponent(I)V

    return-void
.end method

.method public setAccessibilityHandler(J)V
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->dispose()V

    .line 281
    :cond_0
    new-instance v0, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    invoke-direct {v0, p1, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;-><init>(J)V

    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    return-void
.end method

.method public setAccessibilityPageTurnSupport(Z)V
    .locals 1

    .line 811
    iput-boolean p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSupportsPageTurn:Z

    .line 812
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 813
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->setAccessibilityPageTurnSupport(Z)V

    :cond_0
    return-void
.end method

.method public setAccessibilityProvider(Lcom/amazon/krf/platform/AccessibilityProvider;)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityListener:Lcom/amazon/krf/platform/AccessibilityListener;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/AccessibilityListener;->setAccessibilityProvider(Lcom/amazon/krf/platform/AccessibilityProvider;)V

    return-void
.end method

.method public setBook(Lcom/amazon/krf/platform/KRFBook;Lcom/amazon/krf/platform/Position;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 2

    const/4 v0, 0x0

    .line 447
    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mPageManager:Lcom/amazon/krf/platform/PageManager;

    .line 452
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isTouchExploreEnabled(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p3, v1}, Lcom/amazon/krf/platform/ViewSettings;->setAccessibilityEnabled(Z)V

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 455
    iget-boolean v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_willFinishInitializing:Z

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p3, v1}, Lcom/amazon/krf/platform/ViewSettings;->setExpectBookFinishedInitializing(Z)V

    .line 460
    :cond_0
    invoke-interface {p1, p3}, Lcom/amazon/krf/platform/KRFBook;->createContentViewer(Lcom/amazon/krf/platform/ViewSettings;)Lcom/amazon/krf/platform/ContentViewer;

    move-result-object v0

    .line 463
    :cond_1
    invoke-virtual {p0, v0}, Lcom/amazon/krf/internal/KRFGLESView;->attachContentViewer(Lcom/amazon/krf/platform/ContentViewer;)V

    if-eqz v0, :cond_4

    .line 465
    invoke-interface {v0}, Lcom/amazon/krf/platform/ContentViewer;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object p1

    check-cast p1, Lcom/amazon/krf/internal/NavigationControllerImpl;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 468
    invoke-virtual {p1, p2, v1}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToPositionOnLoad(Lcom/amazon/krf/platform/Position;Z)Z

    goto :goto_0

    .line 470
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/krf/internal/NavigationControllerImpl;->goToFirstPage()Z

    .line 475
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityHandler:Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setupAccessibilityDelegate(Lcom/amazon/krf/platform/AccessibilityHandler;)V

    :cond_4
    return-void
.end method

.method public setColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V
    .locals 0

    .line 992
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetColorTheme(Lcom/amazon/krf/platform/theme/ColorTheme;)V

    return-void
.end method

.method public setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V
    .locals 1

    .line 830
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 831
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mAccessibilityDelegate:Lcom/amazon/krf/platform/KRFAccessibilityDelegate;

    if-eqz v0, :cond_0

    .line 832
    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V

    :cond_0
    return-void
.end method

.method public setContentDecorationEventListener(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
    .locals 0

    .line 919
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentDecorationEventListener:Lcom/amazon/krf/platform/ContentDecorationEventListener;

    .line 920
    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->setContentDecorationEventListenerNative(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V

    return-void
.end method

.method public native setContentDecorationEventListenerNative(Lcom/amazon/krf/platform/ContentDecorationEventListener;)V
.end method

.method public native setContentMissingListener(Lcom/amazon/krf/platform/ContentMissingListener;)V
.end method

.method public native setDecorationEnabled(Lcom/amazon/krf/platform/ContentDecorationStyle;Z)V
.end method

.method public setDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mDefaultHandler:Lcom/amazon/krf/platform/UIEventHandler;

    .line 593
    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetDefaultUIEventHandler(Lcom/amazon/krf/platform/UIEventHandler;)V

    return-void
.end method

.method public setFootnotesFontStyle(Ljava/lang/String;F)V
    .locals 0

    .line 1077
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetFootnotesFontStyle(Ljava/lang/String;F)V

    return-void
.end method

.method public setLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V
    .locals 0

    .line 605
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mLocalizationDataSource:Lcom/amazon/krf/platform/LocalizationDataSource;

    .line 606
    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetLocalizationDataSource(Lcom/amazon/krf/platform/LocalizationDataSource;)V

    return-void
.end method

.method public setMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V
    .locals 0

    .line 900
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_MarginalDataProvider:Lcom/amazon/krf/platform/MarginalDataProvider;

    .line 901
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetMarginalDataProvider(Lcom/amazon/krf/platform/MarginalDataProvider;)V

    return-void
.end method

.method public setMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V
    .locals 0

    .line 908
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->m_MarginalListener:Lcom/amazon/krf/platform/MarginalListener;

    .line 909
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetMarginalListener(Lcom/amazon/krf/platform/MarginalListener;)V

    return-void
.end method

.method public native setOrientationLockRequestListener(Lcom/amazon/krf/platform/OrientationLockRequestListener;)V
.end method

.method public native setPageTransitionStyle(Lcom/amazon/krf/platform/KRFView$PageTransitionStyle;)V
.end method

.method public native setPluginVisibilityLifeCycleListener(Lcom/amazon/krf/platform/PluginVisibilityLifeCycleListener;)V
.end method

.method public setReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V
    .locals 0

    .line 507
    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetReadingRulerSettings(Lcom/amazon/krf/platform/ReadingRulerSettings;)V

    return-void
.end method

.method public setRubberbandingEnabled(Z)Z
    .locals 1

    .line 747
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    invoke-virtual {v0}, Lcom/amazon/krf/internal/ContentViewerImpl;->getNavigationController()Lcom/amazon/krf/platform/Navigable;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/krf/platform/Navigable;->setRubberbandingEnabled(Z)Z

    move-result p1

    return p1
.end method

.method public native setSelectionChangeListener(Lcom/amazon/krf/platform/SelectionChangeListener;)V
.end method

.method public native setSelectionRange(Lcom/amazon/krf/platform/PositionRange;)V
.end method

.method public native setSelectionRanges(Lcom/amazon/krf/platform/PositionRange;)Z
.end method

.method public setSelectionStyle(Lcom/amazon/krf/platform/SelectionState$HandleStyle;Lcom/amazon/krf/platform/SelectionState$LoupeStyle;I)V
    .locals 0

    .line 858
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetSelectionStyle(III)V

    return-void
.end method

.method public native setSelectionsVisible(Z)V
.end method

.method public setSettings(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/KRFView$Orientation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/krf/exception/InvalidSettingsException;
        }
    .end annotation

    .line 489
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetSettings(Lcom/amazon/krf/platform/ViewSettings;I)V

    return-void
.end method

.method public setWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V
    .locals 0

    .line 623
    invoke-virtual {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeSetWeblabCallback(Lcom/amazon/krf/platform/WeblabCallback;)V

    return-void
.end method

.method public native startRendering()V
.end method

.method public native stopRendering()V
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    .line 1054
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->isCreating()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz p2, :cond_0

    .line 1055
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1, p3, p4}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOnSurfaceTextureSizeChanged(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1046
    iput-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1047
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz v0, :cond_0

    .line 1048
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOnSurfaceTextureAvailable(Landroid/view/Surface;II)V

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    const/4 v0, 0x0

    .line 1084
    iput-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 1085
    iget-object v0, p0, Lcom/amazon/krf/internal/KRFGLESView;->mContentViewer:Lcom/amazon/krf/internal/ContentViewerImpl;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1086
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/internal/KRFGLESView;->nativeOnSurfaceTextureDestroyed(Landroid/view/Surface;)Z

    .line 1088
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/internal/KRFGLESView;->mUIDetector:Lcom/amazon/krf/internal/input/InputEventDetector;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/input/InputEventDetector;->onSurfaceDestroyed()V

    return-void
.end method
