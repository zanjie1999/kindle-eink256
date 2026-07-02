.class public Lcom/amazon/krf/platform/KRFAccessibilityDelegate;
.super Lcom/amazon/krf/platform/KRFExploreByTouchHelper;
.source "KRFAccessibilityDelegate.java"

# interfaces
.implements Lcom/amazon/krf/platform/NavigationListener;
.implements Lcom/amazon/krf/platform/SettingsChangedListener;
.implements Lcom/amazon/krf/platform/PanZoomListener;
.implements Lcom/amazon/krf/platform/AccessibilityItemChangedListener;
.implements Lcom/amazon/krf/platform/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;,
        Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ALL_MOVEMENT_GRANULARITY:I = 0x1f

.field private static final CHARACTER_GRANULARITY:I = 0x4

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GRANULARITY:I = 0x10

.field private static final KRF_CLASS_NAME:Ljava/lang/String; = "com.amazon.krf.platform.KRFView"

.field private static final KRF_VIRTUAL_VIEW_CLASS_NAME:Ljava/lang/String; = "com.amazon.krf.platform.KRFView.VirtualView"

.field private static final LINE_GRANULARITY:I = 0x2

.field private static final PAGE_GRANULARITY:I = 0x0

.field private static final PARAGRAPH_GRANULARITY:I = 0x1

.field private static final POST_DELAY:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "AccessibilityDelegate"

.field private static final WORD_GRANULARITY:I = 0x3


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

.field private final mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

.field private volatile mDisposed:Z

.field private mExternalFullScreenViewIsOpened:Z

.field private mFocusedVirtualViewId:I

.field private mHoveredVirtualViewID:I

.field private mIsFirstFetchAfterNewAccNodesReady:Z

.field private final mKRFView:Lcom/amazon/krf/platform/KRFView;

.field private mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

.field private mLastReadTime:J

.field private mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

.field private mNeedFocusWorkAround:Z

.field private mPrevFocusedVirtualViewId:I

.field private mSupportsPageTurn:Z

.field private mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

.field private final mView:Lcom/amazon/krf/internal/KRFGLESView;

.field protected final mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/krf/platform/AccessibilityHandler;Lcom/amazon/krf/internal/KRFGLESView;Landroid/content/Context;)V
    .locals 4

    .line 309
    invoke-direct {p0, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;-><init>(Landroid/view/View;)V

    .line 57
    new-instance v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;)V

    iput-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mDisposed:Z

    const/high16 v1, -0x80000000

    .line 66
    iput v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mHoveredVirtualViewID:I

    const-wide/16 v2, -0xc8

    .line 70
    iput-wide v2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadTime:J

    .line 74
    iput v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    .line 77
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNeedFocusWorkAround:Z

    .line 78
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mIsFirstFetchAfterNewAccNodesReady:Z

    .line 79
    iput v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mPrevFocusedVirtualViewId:I

    .line 82
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mExternalFullScreenViewIsOpened:Z

    .line 83
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    .line 84
    sget-object v1, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    iput-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

    .line 87
    sget-object v1, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->LEGACY:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    iput-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 310
    iput-object p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    .line 311
    invoke-virtual {p2}, Lcom/amazon/krf/internal/KRFGLESView;->getParentKRFView()Lcom/amazon/krf/platform/KRFView;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    const-string v1, "accessibility"

    .line 315
    invoke-virtual {p3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/accessibility/AccessibilityManager;

    iput-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 317
    new-instance p3, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p3, p0, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;Landroid/view/accessibility/AccessibilityManager;)V

    iput-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    .line 319
    iget-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p3

    .line 320
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 321
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "TalkBack"

    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 324
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNeedFocusWorkAround:Z

    goto :goto_0

    :cond_2
    const-string v2, "Logan"

    .line 325
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 326
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNeedFocusWorkAround:Z

    goto :goto_0

    .line 331
    :cond_3
    new-instance p3, Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-direct {p3, p2, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;-><init>(Landroid/view/View;Lcom/amazon/krf/platform/AccessibilityHandler;)V

    iput-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    .line 332
    invoke-virtual {p2, p0}, Lcom/amazon/krf/internal/KRFGLESView;->addSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)Lcom/amazon/krf/platform/KRFView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;)Lcom/amazon/krf/internal/KRFGLESView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    return-object p0
.end method

.method private checkValid()V
    .locals 0

    return-void
.end method

.method private clearAccessibilityFocus(I)V
    .locals 2

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearAccessibilityFocus virtualViewID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 982
    new-instance v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$1;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;I)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->runRunnableOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;
    .locals 2

    const-string v0, "AccessibilityDelegate"

    if-nez p0, :cond_0

    const-string p0, "Context is null."

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v1, "accessibility"

    .line 99
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    if-nez p0, :cond_1

    const-string v1, "Specified accessibility system service name does not exist."

    .line 101
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method

.method private handleDirectionAtGranularity(IIZ)Z
    .locals 3

    .line 766
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 767
    invoke-interface {p1}, Lcom/amazon/krf/platform/VirtualView;->isTextual()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 773
    :cond_0
    invoke-interface {p1}, Lcom/amazon/krf/platform/VirtualView;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v1

    sget-object v2, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne v1, v2, :cond_1

    .line 776
    invoke-virtual {p0, p2, p3}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 778
    :cond_1
    invoke-interface {p1}, Lcom/amazon/krf/platform/VirtualView;->getText()Ljava/lang/String;

    move-result-object p1

    .line 784
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 785
    invoke-direct {p0, p2, p1, p3}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->handleTraverseAtGranularity(ILjava/lang/String;Z)Z

    move-result p1

    return p1

    :cond_2
    :goto_1
    return v0
.end method

.method private handleTraverseAtGranularity(ILjava/lang/String;Z)Z
    .locals 3

    const/high16 v0, 0x20000

    .line 803
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 804
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p0, v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 805
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p0, v1, v0}, Landroidx/core/view/AccessibilityDelegateCompat;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    const/4 v1, 0x0

    .line 806
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 807
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 810
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    if-eqz p3, :cond_0

    const/16 p3, 0x100

    .line 812
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x200

    .line 814
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setAction(I)V

    .line 816
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    :cond_1
    const/4 p3, 0x1

    if-ne p1, p3, :cond_3

    .line 822
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, v2, :cond_2

    const/4 p1, 0x2

    .line 823
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setMovementGranularity(I)V

    .line 825
    :cond_2
    invoke-virtual {v0, p3}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    .line 827
    :cond_3
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 829
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->requestParentSendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method private hoverReading(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 897
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x13

    if-lt v0, v3, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 898
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    invoke-static {v3}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v3, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "hoverReading event: %s, x: %f, y: %f"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/amazon/krf/platform/KRFView;->wordPageElementHitTest(FF)Lcom/amazon/krf/platform/element/WordPageElement;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    .line 904
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 905
    iget-object v5, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

    invoke-virtual {v0, v5}, Lcom/amazon/krf/platform/element/PageElement;->positionRangeEquals(Lcom/amazon/krf/platform/element/PageElement;)Z

    move-result v5

    .line 906
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/16 v6, 0x9

    if-ne p1, v6, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 907
    :goto_0
    iget-wide v6, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadTime:J

    sub-long v6, v3, v6

    const-wide/16 v8, 0xc8

    cmp-long v10, v6, v8

    if-lez v10, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    if-eqz v5, :cond_4

    if-eqz p1, :cond_5

    :cond_4
    if-eqz v6, :cond_5

    .line 910
    invoke-virtual {v0}, Lcom/amazon/krf/platform/element/TextPageElement;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->speakWordElement(Ljava/lang/String;)Z

    .line 911
    iput-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

    .line 912
    iput-wide v3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadTime:J

    return v1

    :cond_5
    return v2
.end method

.method public static isAccessibilityEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 112
    invoke-static {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private isAccessibilityFocused(I)Z
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static isTouchExploreEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 125
    invoke-static {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getAccessibilityManager(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p0

    return p0
.end method

.method private notifyFocusAndroid(II)V
    .locals 1

    const/16 v0, 0x40

    if-eq p2, v0, :cond_1

    const/16 v0, 0x80

    if-eq p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 p2, 0x10000

    .line 618
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->sendEventForVirtualView(II)Z

    goto :goto_0

    .line 611
    :cond_1
    iget-object p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p2}, Landroid/view/SurfaceView;->postInvalidate()V

    const p2, 0x8000

    .line 612
    invoke-virtual {p0, p1, p2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :goto_0
    return-void
.end method

.method private onFocusChanged(III)V
    .locals 1

    const/16 v0, 0x40

    if-ne p3, v0, :cond_3

    .line 584
    iget-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p3, p2}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p2

    if-nez p2, :cond_0

    return-void

    .line 590
    :cond_0
    iget-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p3, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    .line 595
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object p3

    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne p3, v0, :cond_2

    .line 596
    invoke-virtual {p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object p3

    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne p3, v0, :cond_2

    iget-object p3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    .line 597
    invoke-virtual {p3}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToNextPage()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 598
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToNextPage()Z

    goto :goto_0

    .line 600
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object p1

    sget-object p3, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne p1, p3, :cond_3

    .line 601
    invoke-virtual {p2}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object p1

    sget-object p2, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    .line 602
    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->canGoToPreviousPage()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 603
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->goToPreviousPage()Z

    :cond_3
    :goto_0
    return-void
.end method

.method private runRunnableOnUIThread(Ljava/lang/Runnable;)V
    .locals 2

    .line 1023
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1024
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1025
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private setAccessibilityFocusOnVirtualView(I)V
    .locals 2

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setAccessibilityFocusOnVirtualView virtualViewID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1004
    new-instance v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$2;-><init>(Lcom/amazon/krf/platform/KRFAccessibilityDelegate;I)V

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->runRunnableOnUIThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateFocus(II)Z
    .locals 3

    .line 557
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x40

    const/4 v2, 0x1

    if-eq p2, v0, :cond_3

    const/16 v0, 0x80

    if-eq p2, v0, :cond_1

    return v1

    .line 571
    :cond_1
    iget p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    if-ne p2, p1, :cond_2

    iget p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mPrevFocusedVirtualViewId:I

    if-eq p1, p2, :cond_2

    const/high16 p1, -0x80000000

    .line 572
    iput p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    :cond_2
    return v2

    .line 563
    :cond_3
    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isVisible(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 564
    iget p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    iput p2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mPrevFocusedVirtualViewId:I

    .line 565
    iput p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    return v2

    :cond_4
    return v1
.end method

.method private updateHoveredVirtualView(I)V
    .locals 3

    .line 833
    iget v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mHoveredVirtualViewID:I

    if-ne p1, v0, :cond_0

    return-void

    .line 838
    :cond_0
    iput p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mHoveredVirtualViewID:I

    const/high16 v1, -0x80000000

    if-eq p1, v1, :cond_1

    const/16 v2, 0x80

    .line 841
    invoke-virtual {p0, p1, v2}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_1
    if-eq v0, v1, :cond_2

    const/16 p1, 0x100

    .line 845
    invoke-virtual {p0, v0, p1}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->sendEventForVirtualView(II)Z

    :cond_2
    return-void
.end method

.method private updateVirtualViews()Z
    .locals 9

    .line 390
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    .line 391
    iget-boolean v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mExternalFullScreenViewIsOpened:Z

    if-nez v1, :cond_2

    .line 392
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v1

    const/high16 v3, -0x80000000

    if-eq v1, v3, :cond_2

    .line 393
    sget-object v0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$3;->$SwitchMap$com$amazon$krf$platform$event$NavigationDirection:[I

    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 402
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->UNDEFINED:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    goto :goto_0

    .line 398
    :cond_0
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->PREV_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    goto :goto_0

    .line 395
    :cond_1
    sget-object v0, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->NEXT_BUFFER:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    :cond_2
    :goto_0
    move-object v5, v0

    .line 408
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mExternalFullScreenViewIsOpened:Z

    if-nez v0, :cond_3

    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v6

    iget-object v7, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

    sget-object v1, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->calculateVirtualViews(ZLcom/amazon/krf/platform/VirtualView$VirtualViewType;ILcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 854
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    if-eqz p1, :cond_4

    .line 855
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 859
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchHoverEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    invoke-static {v1}, Landroid/view/MotionEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    .line 874
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchHoverEvent event is default :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/high16 p1, -0x80000000

    .line 871
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateHoveredVirtualView(I)V

    goto :goto_0

    .line 866
    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getVirtualViewAt(FF)I

    move-result v0

    .line 867
    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateHoveredVirtualView(I)V

    .line 868
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->hoverReading(Landroid/view/MotionEvent;)Z

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    .line 347
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mDisposed:Z

    .line 350
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {v0, p0}, Lcom/amazon/krf/internal/KRFGLESView;->removeSettingsChangedListener(Lcom/amazon/krf/platform/SettingsChangedListener;)V

    .line 352
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->dispose()V

    :cond_0
    return-void
.end method

.method public getAccessibilityStateChangeListener()Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;
    .locals 1

    .line 362
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 363
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    return-object v0
.end method

.method protected getFocusedVirtualView()I
    .locals 1

    .line 551
    iget v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    return v0
.end method

.method public getHoveredWordElement()Lcom/amazon/krf/platform/element/PageElement;
    .locals 1

    .line 885
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 886
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

    return-object v0
.end method

.method protected getTextAtGranularity(IZ)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 964
    :cond_0
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 961
    :cond_1
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    move-result-object p1

    invoke-virtual {p1, v1, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 958
    :cond_2
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    move-result-object p1

    invoke-virtual {p1, v2, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 955
    :cond_3
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 952
    :cond_4
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mView:Lcom/amazon/krf/internal/KRFGLESView;

    invoke-virtual {p1}, Lcom/amazon/krf/internal/KRFGLESView;->getAccessibilityHandler()Lcom/amazon/krf/internal/AccessibilityHandlerImpl;

    move-result-object p1

    invoke-virtual {p1, v0, p2}, Lcom/amazon/krf/internal/AccessibilityHandlerImpl;->getTextAtGranularity(IZ)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method protected getVirtualViewAt(FF)I
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewIdWithCoordinates(FF)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    const/4 v0, -0x1

    .line 446
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVirtualViewAt() at x:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " y:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " returns view id:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v0
.end method

.method protected getVisibleVirtualViews(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 461
    iget-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    if-eqz v0, :cond_0

    .line 462
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->waitForAccessibilityInformationReady(J)V

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVisibleVirtualViewIDsInAccessibilityOrder(Ljava/util/List;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVisibleVirtualViews() result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 475
    monitor-enter p0

    .line 476
    :try_start_0
    iget-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNeedFocusWorkAround:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mIsFirstFetchAfterNewAccNodesReady:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 477
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mIsFirstFetchAfterNewAccNodesReady:Z

    .line 478
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 481
    invoke-interface {p1}, Lcom/amazon/krf/platform/VirtualView;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->setAccessibilityFocusOnVirtualView(I)V

    goto :goto_0

    .line 484
    :cond_1
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getMainViewID()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 486
    invoke-direct {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->setAccessibilityFocusOnVirtualView(I)V

    .line 490
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public handleSingleTap(Lcom/amazon/krf/platform/UIData;)Z
    .locals 1

    .line 1036
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    iget v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mFocusedVirtualViewId:I

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1037
    invoke-virtual {p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getDetailDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1038
    invoke-virtual {p1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getDetailDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->speakWordElement(Ljava/lang/String;)Z

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public invalidateRoot()V
    .locals 0

    .line 1046
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1047
    invoke-super {p0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->invalidateRoot()V

    return-void
.end method

.method public isAccessibilityEnabled()Z
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 372
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->isAccessibilityEnabled()Z

    move-result v0

    return v0
.end method

.method public isTouchExploreEnabled()Z
    .locals 1

    .line 380
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 381
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityStateChangeListener:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$KRFAccessibilityStateChangeListener;->isTouchExploreEnabled()Z

    move-result v0

    return v0
.end method

.method protected isVisible(I)Z
    .locals 1

    .line 495
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAccessibilityPluginItemsChanged()V
    .locals 4

    .line 1159
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1160
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1164
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1165
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v0

    sget-object v2, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->AVI_PLUGIN:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1168
    :goto_0
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateVirtualViews()Z

    move-result v2

    .line 1169
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    invoke-virtual {v3, v1}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->setIsAccessibilityNodesReady(Z)V

    .line 1170
    monitor-enter p0

    .line 1171
    :try_start_0
    iput-boolean v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mIsFirstFetchAfterNewAccNodesReady:Z

    .line 1172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 1176
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->invalidateRoot()V

    :cond_1
    if-nez v0, :cond_2

    .line 1186
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v0

    if-nez v0, :cond_3

    .line 1187
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->clearAccessibilityFocus(I)V

    .line 1190
    :cond_3
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getIDOfVirtualViewWithLowestZOrder()I

    move-result v0

    .line 1191
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v1, v0}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1192
    invoke-virtual {v1}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object v1

    sget-object v2, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    if-eq v1, v2, :cond_4

    .line 1193
    invoke-direct {p0, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->setAccessibilityFocusOnVirtualView(I)V

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 1172
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_4
    :goto_1
    return-void
.end method

.method public onExternalFullscreenViewClosed()V
    .locals 1

    .line 1103
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    const/4 v0, 0x0

    .line 1104
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mExternalFullScreenViewIsOpened:Z

    return-void
.end method

.method public onExternalFullscreenViewOpened()V
    .locals 1

    .line 1096
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    const/4 v0, 0x1

    .line 1098
    iput-boolean v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mExternalFullScreenViewIsOpened:Z

    return-void
.end method

.method public onExternalLinkClicked(Ljava/lang/String;)V
    .locals 0

    .line 1109
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onLayoutComplete(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 2

    .line 1069
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1070
    invoke-virtual {p1}, Lcom/amazon/krf/platform/event/NavigationEndEvent;->getNavigationDirection()Lcom/amazon/krf/platform/event/NavigationDirection;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

    .line 1071
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->setIsNavigating(Z)V

    .line 1072
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    .line 1073
    iput-wide v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadTime:J

    const/4 p1, 0x0

    .line 1074
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

    :cond_0
    return-void
.end method

.method public onNavigationFailed()V
    .locals 0

    .line 1063
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onPageChange(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 0

    .line 1080
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onPanZoomFinished()V
    .locals 0

    .line 1130
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onPanZoomStarted()V
    .locals 0

    .line 1125
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method protected onPerformActionForVirtualView(IILandroid/os/Bundle;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x40

    if-eq p2, v1, :cond_3

    const/16 v1, 0x80

    if-eq p2, v1, :cond_3

    const/16 v1, 0x100

    const/16 v2, 0x10

    const-string v3, "ACTION_ARGUMENT_MOVEMENT_GRANULARITY_INT"

    if-eq p2, v1, :cond_2

    const/16 v1, 0x200

    if-eq p2, v1, :cond_1

    return v0

    .line 535
    :cond_1
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    .line 537
    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->handleDirectionAtGranularity(IIZ)Z

    move-result p1

    return p1

    .line 529
    :cond_2
    invoke-virtual {p3, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    const/4 p3, 0x1

    .line 531
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->handleDirectionAtGranularity(IIZ)Z

    move-result p1

    return p1

    .line 519
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result p3

    .line 520
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateFocus(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 522
    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->onFocusChanged(III)V

    .line 523
    invoke-direct {p0, p1, p2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->notifyFocusAndroid(II)V

    :cond_4
    return v0
.end method

.method protected onPopulateEventForVirtualView(ILandroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .line 646
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 648
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

    goto :goto_0

    .line 650
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onPopulateNodeForVirtualView(ILandroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 8

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPopulateNodeForVirtualView() int virtualViewId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mViewManager:Lcom/amazon/krf/platform/KRFVirtualViewManager;

    invoke-virtual {v0, p1}, Lcom/amazon/krf/platform/KRFVirtualViewManager;->getVirtualViewWithId(I)Lcom/amazon/krf/internal/VirtualViewImpl;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_8

    .line 681
    iget-object v3, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    sget-object v4, Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;->TEXT_WITH_EXTRA_INFO:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    if-ne v3, v4, :cond_2

    .line 682
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 684
    invoke-virtual {p2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 689
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getShortDescription()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AccessibilityNodeInfo.roleDescription"

    .line 690
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 693
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getExtras()Ljava/util/HashMap;

    move-result-object v4

    .line 695
    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 696
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 700
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getContentDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 703
    :cond_3
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setFocusable(Z)V

    .line 705
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->getFocusedVirtualView()I

    move-result v3

    if-ne v3, p1, :cond_4

    .line 706
    invoke-virtual {p2, v1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 p1, 0x80

    .line 707
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    goto :goto_1

    .line 709
    :cond_4
    invoke-virtual {p2, v2}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setAccessibilityFocused(Z)V

    const/16 p1, 0x40

    .line 710
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 714
    :goto_1
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getViewType()Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    move-result-object p1

    sget-object v3, Lcom/amazon/krf/platform/VirtualView$VirtualViewType;->MAIN_VIEW:Lcom/amazon/krf/platform/VirtualView$VirtualViewType;

    const/16 v4, 0x200

    const/16 v5, 0x100

    if-ne p1, v3, :cond_5

    const-string p1, "com.amazon.krf.platform.KRFView"

    .line 715
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 716
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 717
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p1, 0x1f

    .line 718
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    goto :goto_2

    .line 719
    :cond_5
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getContentDescription()Ljava/lang/String;

    move-result-object p1

    const-string v3, "graphical highlight"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    const-string p1, "com.amazon.krf.platform.KRFView.VirtualView"

    .line 720
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClassName(Ljava/lang/CharSequence;)V

    .line 721
    invoke-virtual {p2, v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    .line 722
    invoke-virtual {p2, v4}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->addAction(I)V

    const/16 p1, 0x10

    .line 723
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setMovementGranularities(I)V

    .line 727
    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 728
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v2, v2, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 729
    :cond_7
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    .line 731
    invoke-virtual {v0}, Lcom/amazon/krf/internal/VirtualViewImpl;->isClickable()Z

    move-result p1

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setClickable(Z)V

    goto :goto_3

    .line 735
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got a virtualViewId that we don\'t recognize: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccessibilityDelegate"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, ""

    .line 736
    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 737
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, v2, v2, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p2, p1}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setBoundsInParent(Landroid/graphics/Rect;)V

    :goto_3
    return-void
.end method

.method public onPositionRangeChanged(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 0

    return-void
.end method

.method public onPostNavigation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 0

    .line 1085
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onPostPageTransitionAnimation(Lcom/amazon/krf/platform/event/NavigationEndEvent;)V
    .locals 0

    .line 1090
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    return-void
.end method

.method public onPreNavigation(Lcom/amazon/krf/platform/event/NavigationEvent;)V
    .locals 1

    .line 1052
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1053
    iget-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->setIsNavigating(Z)V

    return-void
.end method

.method public onRenderComplete()V
    .locals 3

    .line 1135
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1137
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1138
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    invoke-virtual {v0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->isAccessibilityInformationReady()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1141
    :cond_0
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateVirtualViews()Z

    move-result v0

    .line 1142
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityNodeState:Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate$AccessibilityNodesState;->setIsAccessibilityNodesReady(Z)V

    .line 1143
    monitor-enter p0

    .line 1144
    :try_start_0
    iput-boolean v2, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mIsFirstFetchAfterNewAccNodesReady:Z

    .line 1145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1148
    sget-object v1, Lcom/amazon/krf/platform/event/NavigationDirection;->None:Lcom/amazon/krf/platform/event/NavigationDirection;

    iput-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNavDir:Lcom/amazon/krf/platform/event/NavigationDirection;

    if-eqz v0, :cond_1

    .line 1152
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->invalidateRoot()V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1145
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public onRubberbandingBegin()V
    .locals 0

    return-void
.end method

.method public onRubberbandingEnd()V
    .locals 0

    return-void
.end method

.method public onSettingsChanged(Lcom/amazon/krf/platform/ViewSettings;Lcom/amazon/krf/platform/ViewSettings;)V
    .locals 0

    .line 1116
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 1117
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1119
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mLastReadElement:Lcom/amazon/krf/platform/element/WordPageElement;

    :cond_0
    return-void
.end method

.method public setAccessibilityPageTurnSupport(Z)V
    .locals 0

    .line 417
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->checkValid()V

    .line 418
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mSupportsPageTurn:Z

    .line 419
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 421
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateVirtualViews()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 422
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->invalidateRoot()V

    :cond_0
    return-void
.end method

.method public setContentAccessibilityVerbosity(Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;)V
    .locals 0

    .line 433
    iput-object p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mVerbosity:Lcom/amazon/krf/platform/constants/ContentAccessibilityVerbosity;

    .line 434
    invoke-virtual {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->isAccessibilityEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 435
    invoke-direct {p0}, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->updateVirtualViews()Z

    :cond_0
    return-void
.end method

.method public setForceFocus(Z)V
    .locals 0

    .line 1211
    iput-boolean p1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mNeedFocusWorkAround:Z

    return-void
.end method

.method protected speakWordElement(Ljava/lang/String;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 930
    :cond_0
    iget-object v0, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    const/16 v0, 0x4000

    .line 931
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 932
    iget-object v1, p0, Lcom/amazon/krf/platform/KRFAccessibilityDelegate;->mKRFView:Lcom/amazon/krf/platform/KRFView;

    invoke-static {v1, v0}, Landroidx/core/view/ViewCompat;->onInitializeAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 933
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 934
    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 935
    invoke-virtual {p0, v0}, Lcom/amazon/krf/platform/KRFExploreByTouchHelper;->requestParentSendEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
