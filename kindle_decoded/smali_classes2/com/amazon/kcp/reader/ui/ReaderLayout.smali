.class public abstract Lcom/amazon/kcp/reader/ui/ReaderLayout;
.super Landroid/widget/FrameLayout;
.source "ReaderLayout.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IKindleDocViewerEvents;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;,
        Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;
    }
.end annotation


# static fields
.field private static final ACCESSIBILITY_CONTINUOUS_READING_REFRESH_DELAY:I = 0x7d0

.field private static final HANDLE_HORIZONTAL_SCROLL_THRESHOLD:J = 0x1f4L

.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final STANDARD_OVERLAYS:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected accessibilityDelegate:Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private accessibilityGapView:Landroid/view/View;

.field protected actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

.field private actionBarDecorationHideDelay:I

.field private actionBarDecorationShowDelay:I

.field protected activity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

.field private chromeFragmentContainer:Landroid/view/View;

.field protected contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

.field private contentView:Lcom/amazon/android/docviewer/KindleDocView;

.field protected createdEndAnimationCallback:Z

.field private currentOrientation:I

.field private decorationProvider:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;

.field private final decoratorViewPriorityComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field public fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

.field protected gestureFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

.field protected hideOverlaysHandler:Landroid/os/Handler;

.field protected hideOverlaysRunnable:Ljava/lang/Runnable;

.field private importantForAccessibilityMode:I

.field private final insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field protected insets:Landroid/graphics/Rect;

.field protected isStandardOverlaysDisabled:Z

.field private lastTouchX:F

.field private latestReceivedHorizontalScrollTimestamp:J

.field private layoutEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;",
            ">;"
        }
    .end annotation
.end field

.field protected layoutId:I

.field protected locationDecor:Landroid/view/ViewGroup;

.field protected locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

.field private mIsRunning:Z

.field protected magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

.field private final magnifyingGlassVertOffset:I

.field protected objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

.field protected objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

.field private orientationLockClickListener:Landroid/view/View$OnClickListener;

.field private orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

.field private overlayAnimatorSet:Landroid/animation/AnimatorSet;

.field private overlaysFlashing:Z

.field private preserveOverlays:Z

.field private pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

.field protected readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

.field private readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

.field protected readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

.field protected readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

.field private selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

.field private setVisibleOverlaysDelay:I

.field protected settings:Lcom/amazon/kcp/application/UserSettingsController;

.field protected shouldDelayLoadExtraAsset:Z

.field protected simpleHeader:Landroid/view/View;

.field protected statusBarHeight:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

.field protected titleContainer:Landroid/view/View;

.field protected visibleOverlays:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 164
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 219
    fill-array-data v0, :array_0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->STANDARD_OVERLAYS:[I

    .line 227
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$1;-><init>(Ljava/lang/Integer;)V

    .line 338
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void

    nop

    :array_0
    .array-data 4
        0x3
        0x1
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 449
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 260
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlaysDelay:I

    .line 266
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->importantForAccessibilityMode:I

    .line 270
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isStandardOverlaysDisabled:Z

    const/4 v0, -0x1

    .line 305
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentOrientation:I

    .line 307
    new-instance v0, Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityDelegate:Lcom/amazon/kcp/reader/accessibility/ReaderLayoutAccessibilityDelegate;

    .line 332
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 334
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlaysFlashing:Z

    .line 336
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->preserveOverlays:Z

    .line 340
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    .line 357
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayLoadExtraAsset:Z

    const-wide/16 v2, -0x1

    .line 361
    iput-wide v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->latestReceivedHorizontalScrollTimestamp:J

    .line 373
    new-instance p2, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->decoratorViewPriorityComparator:Ljava/util/Comparator;

    .line 405
    new-instance p2, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 438
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    const/high16 p2, -0x40800000    # -1.0f

    .line 440
    iput p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    .line 450
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 451
    sget v0, Lcom/amazon/kindle/krl/R$integer;->action_bar_decoration_show_delay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecorationShowDelay:I

    .line 452
    sget v0, Lcom/amazon/kindle/krl/R$integer;->action_bar_decoration_hide_delay:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecorationHideDelay:I

    .line 453
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->magnifying_glass_vert_offset:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlassVertOffset:I

    .line 454
    new-instance v0, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;

    invoke-direct {v0, p1}, Lcom/amazon/kcp/reader/ui/BaseLocationDecorationProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->decorationProvider:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;

    .line 455
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlayAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 p1, 0x4

    .line 457
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 458
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentOrientation:I

    .line 459
    sget p1, Lcom/amazon/kindle/krl/R$bool;->delay_load_extra_asset_for_book_open:I

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayLoadExtraAsset:Z

    .line 460
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private static ConvertModeToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_5

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/16 v0, 0x8

    if-eq p0, v0, :cond_2

    const/16 v0, 0x10

    if-eq p0, v0, :cond_1

    const/16 v0, 0x20

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN ACCESSIBILITY MODE"

    return-object p0

    :cond_0
    const-string p0, "ACCESSIBILITY_MODE_LEFT_PANEL"

    return-object p0

    :cond_1
    const-string p0, "ACCESSIBILITY_MODE_BOOKMARKS"

    return-object p0

    :cond_2
    const-string p0, "ACCESSIBILITY_MODE_VIEW_OPTIONS"

    return-object p0

    :cond_3
    const-string p0, "ACCESSIBILITY_MODE_SELECTION"

    return-object p0

    :cond_4
    const-string p0, "ACCESSIBILITY_MODE_CONTENT"

    return-object p0

    :cond_5
    const-string p0, "ACCESSIBILITY_MODE_CHROME"

    return-object p0
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->updateAccessibleSelectionButtonsVisibility()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setAccessibilityGapViewVisible(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Ljava/util/List;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300()Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setAccessibilityFocusToHamburger()V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)Z
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlaysFlashing:Z

    return p1
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/amazon/kcp/reader/ui/ReaderLayout;)Lcom/amazon/kcp/reader/ui/IOrientationLockManager;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    return-object p0
.end method

.method private addActionBarDecoratorView()V
    .locals 1

    .line 3049
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-nez v0, :cond_0

    .line 3050
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateActionBarDecoration()V

    :cond_0
    return-void
.end method

.method private addLocationSeekerDecoratorView(Landroid/view/View;)V
    .locals 3

    .line 3055
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 3057
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeekerDecoration()V

    .line 3060
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz p1, :cond_4

    .line 3067
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->removeDuplicateDecorators(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 3071
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3072
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->decoratorViewPriorityComparator:Ljava/util/Comparator;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3081
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3082
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eq v1, v2, :cond_4

    .line 3085
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 3086
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2

    .line 3091
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    :goto_2
    return-void
.end method

.method private disableStandardOverlays(I)I
    .locals 5

    .line 2399
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->STANDARD_OVERLAYS:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    and-int v4, p1, v3

    if-ne v4, v3, :cond_0

    xor-int/2addr p1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method private getCurrentAccessibilityMode()I
    .locals 4

    .line 3408
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    .line 3409
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 3411
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    if-eqz v1, :cond_2

    .line 3412
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isAaSettingSheetVisible()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/16 v2, 0x8

    goto :goto_0

    .line 3415
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3416
    invoke-interface {v1}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v2, 0x20

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_0

    .line 3420
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_5

    .line 3421
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->SHOW_SELECTION_OPTIONS:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne v0, v1, :cond_5

    const/4 v2, 0x4

    goto :goto_0

    .line 3424
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$string;->tag_content_fragment_container:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3425
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    if-ne v0, v2, :cond_6

    const/16 v2, 0x40

    goto :goto_0

    :cond_6
    const/4 v2, 0x2

    :goto_0
    return v2
.end method

.method private getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    return-object v0
.end method

.method private hasSameDecoratorId(Landroid/view/View;Landroid/view/View;)Z
    .locals 1

    .line 3233
    sget v0, Lcom/amazon/kindle/krl/R$id;->location_seeker_decorator_id:I

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    .line 3234
    sget v0, Lcom/amazon/kindle/krl/R$id;->location_seeker_decorator_id:I

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 3235
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method private initOrientationLockManager()V
    .locals 5

    .line 3507
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-nez v0, :cond_0

    return-void

    .line 3511
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    if-nez v0, :cond_1

    .line 3512
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->createOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    .line 3515
    :cond_1
    sget v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->ORIENTATION_LOCK:I

    invoke-static {v0}, Lcom/amazon/kcp/reader/features/ReaderFeatures;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3517
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->orientation_lock_container_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    .line 3519
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    .line 3520
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x55

    .line 3521
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    .line 3524
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->orientation_lock_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 3527
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    invoke-virtual {v1}, Lcom/amazon/kcp/application/UserSettingsController;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 3528
    :goto_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v2, v4, v0, v1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;Z)V

    if-eqz v0, :cond_4

    .line 3530
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$17;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$17;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 3542
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    .line 3544
    invoke-virtual {p0, v3, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    :cond_5
    return-void
.end method

.method private onConfigurationChange()V
    .locals 2

    .line 666
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 667
    invoke-virtual {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onSettingsChange(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeDuplicateDecorators(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    .line 3223
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3224
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hasSameDecoratorId(Landroid/view/View;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3225
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setAccessibilityFocusToHamburger()V
    .locals 3

    .line 2849
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_4

    .line 2850
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 2854
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 2860
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTouchables()Ljava/util/ArrayList;

    move-result-object v0

    .line 2861
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    return-void

    .line 2864
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_4

    const/16 v1, 0x40

    const/4 v2, 0x0

    .line 2866
    invoke-static {v0, v1, v2}, Landroidx/core/view/ViewCompat;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method private setAccessibilityGapViewVisible(Z)V
    .locals 1

    .line 2511
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityGapView:Landroid/view/View;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 2513
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2514
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x1

    .line 2515
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 2517
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x2

    .line 2518
    invoke-static {v0, p1}, Landroidx/core/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setOverlaysVisible(ZZI)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 3

    .line 2306
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldInterceptReaderChromeShow()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2310
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 2312
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->MENU_CHROME_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 2313
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 2312
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 2315
    :cond_1
    sget-object v1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->MENU_CHROME_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {v1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 2316
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 2315
    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2320
    :cond_2
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 2321
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2322
    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    :cond_3
    const/4 v0, 0x0

    if-eqz p3, :cond_7

    .line 2330
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2331
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 2334
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    and-int/lit8 v1, p3, 0x4

    if-eqz v1, :cond_4

    .line 2337
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/reader/ui/BookLayoutFactory;

    move-result-object v0

    .line 2338
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    .line 2339
    sget-object v2, Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;->LocationBar:Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;

    invoke-virtual {v0, v2, p0, v1}, Lcom/amazon/kcp/reader/ui/BookLayoutFactory;->getViewDecoration(Lcom/amazon/kcp/reader/ui/IBookLayoutDecorator$LayoutAnchor;Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/model/content/ILocalBookItem;)Ljava/util/List;

    move-result-object v0

    .line 2342
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 2343
    invoke-direct {p0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addLocationSeekerDecoratorView(Landroid/view/View;)V

    goto :goto_1

    .line 2348
    :cond_5
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isStandardOverlaysDisabled:Z

    if-nez v1, :cond_6

    .line 2349
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addActionBarDecoratorView()V

    .line 2352
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    const/16 v1, 0x8

    .line 2353
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2

    .line 2355
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isAaSettingSheetVisible()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2357
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 2358
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    .line 2361
    :cond_8
    :goto_2
    invoke-virtual {p0, p3, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZZ)Z

    :cond_9
    :goto_3
    return-object p0
.end method

.method private setWaypoints()V
    .locals 5

    .line 963
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 965
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getActiveContext()Landroid/content/Context;

    move-result-object v1

    .line 964
    invoke-static {v1}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    .line 965
    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryService()Lcom/amazon/kindle/content/ILibraryService;

    move-result-object v1

    .line 967
    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1}, Lcom/amazon/kindle/content/ILibraryService;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/amazon/kindle/content/ILibraryService;->getContentMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 971
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v1

    .line 974
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayExecuted()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v1, :cond_1

    .line 975
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    return-void

    .line 981
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    instance-of v3, v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    if-eqz v3, :cond_5

    .line 982
    check-cast v2, Lcom/amazon/android/docviewer/BaseKindleDocViewer;

    .line 983
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/BaseKindleDocViewer;->getWaypointsController()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 986
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayExecuted()Z

    move-result v3

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    .line 989
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 990
    invoke-virtual {v1}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;->getWaypoints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;

    .line 991
    invoke-virtual {v4}, Lcom/amazon/kindle/readingprogress/waypoints/Waypoint;->getPosition()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 993
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getWaypointsAsIntegerList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 995
    :cond_4
    invoke-virtual {v0}, Lcom/amazon/kindle/content/ContentMetadata;->getWaypointsAsIntegerList()Ljava/util/List;

    move-result-object v3

    .line 997
    :goto_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/amazon/kindle/readingprogress/waypoints/WaypointsController;->initializeWaypoints(Ljava/util/List;Landroid/content/Context;)V

    :cond_5
    return-void
.end method

.method private shouldHandleScrollGesture(J)Z
    .locals 3

    .line 1665
    iget-wide v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->latestReceivedHorizontalScrollTimestamp:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x1f4

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateAccessibleSelectionButtonsVisibility()V
    .locals 5

    .line 2054
    sget v0, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2055
    sget v1, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    .line 2063
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v3, :cond_1

    .line 2065
    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v3, v4, :cond_1

    .line 2066
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 2067
    invoke-interface {v3}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2068
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v2, 0x0

    .line 2072
    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2073
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addBottomMargin(I)V
    .locals 6

    .line 3636
    sget v0, Lcom/amazon/kindle/krl/R$id;->magnified_content_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    return-void

    .line 3640
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 3641
    iget v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v3, v1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget v4, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget v5, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v5, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 3642
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected addChild(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    if-eqz p2, :cond_2

    .line 3444
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3450
    :cond_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 3451
    invoke-virtual {p2, p1}, Landroid/view/View;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3452
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->isImportantForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3453
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 3459
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getCurrentAccessibilityMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x40

    if-eq v0, v1, :cond_1

    const/16 v1, 0x80

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3482
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3484
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addChild(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_0

    .line 3489
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$string;->tag_content_fragment_container:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 3491
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addChild(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_0

    .line 3475
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->addChild(Ljava/util/ArrayList;Landroid/view/View;)V

    goto :goto_0

    .line 3463
    :cond_3
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->supportsTouchAccessibility()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3464
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 3470
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    .line 3499
    :cond_5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reported children for accessibility for mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->ConvertModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public areOverlaysVisible()Z
    .locals 1

    .line 2211
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public cancelHideOverlaysAfterDelay()V
    .locals 2

    .line 2927
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2928
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 2929
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    .line 2930
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 2931
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlaysFlashing:Z

    :cond_0
    return-void
.end method

.method protected createGestureDetector()Lcom/amazon/kcp/reader/ReaderGestureDetector;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected createNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;
    .locals 1

    .line 849
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    instance-of v0, v0, Lcom/amazon/android/docviewer/pdf/PdfDoc;

    if-eqz v0, :cond_0

    .line 850
    new-instance v0, Lcom/amazon/kcp/reader/PdfNavigator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/PdfNavigator;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-object v0

    .line 853
    :cond_0
    new-instance v0, Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ReaderNavigator;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 715
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 716
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onDestroy()V

    goto :goto_0

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 720
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 722
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 723
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    if-eqz v1, :cond_1

    .line 724
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    .line 726
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    if-eqz v1, :cond_2

    .line 727
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->destroy()V

    .line 728
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    .line 730
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    if-eqz v1, :cond_3

    .line 731
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->destroy()V

    .line 732
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 734
    :cond_3
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 736
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_5

    const/4 v2, 0x0

    .line 738
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->shouldListenToObjectSelectionModelEvents(Z)V

    .line 740
    :cond_5
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    if-eqz v1, :cond_6

    .line 741
    invoke-virtual {v1}, Lcom/amazon/kindle/yj/ui/ContentMissingView;->unsubscribeFromNavigationEvents()V

    .line 743
    :cond_6
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    if-eqz v1, :cond_7

    .line 744
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/Synchronizer;->setOnSyncMessageListener(Lcom/amazon/kcp/sync/ISyncMessageListener;)V

    .line 745
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    .line 748
    :cond_7
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v1, :cond_a

    .line 749
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    if-nez v1, :cond_9

    .line 750
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 751
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v1, :cond_8

    .line 752
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->getFastNavigationView()Lcom/amazon/kcp/reader/ui/ReaderFastNavigationView;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 754
    :cond_8
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 756
    :cond_9
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->destroy()V

    .line 759
    :cond_a
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eqz v1, :cond_b

    .line 760
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 763
    :cond_b
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-eqz v1, :cond_c

    .line 764
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onDestroy()V

    .line 767
    :cond_c
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v1, :cond_e

    .line 768
    invoke-interface {v1, p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 774
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    if-ne v1, v2, :cond_d

    .line 775
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocView()V

    .line 778
    :cond_d
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 779
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 783
    :cond_e
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    if-nez v1, :cond_11

    .line 784
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v1, :cond_10

    .line 785
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 786
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 787
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 789
    :cond_f
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    .line 790
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 793
    :cond_10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->detachAllViewsFromParent()V

    .line 794
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViewsInLayout()V

    .line 795
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 798
    :cond_11
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v1, :cond_12

    .line 799
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    .line 802
    :cond_12
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v1, :cond_13

    .line 803
    invoke-virtual {v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onDestroy()V

    .line 806
    :cond_13
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    if-eqz v1, :cond_14

    .line 808
    invoke-interface {v1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->destroy()V

    .line 809
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    .line 812
    :cond_14
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 813
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    .line 814
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    .line 815
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 816
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    .line 817
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 818
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 819
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    .line 820
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 823
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

    .line 824
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    .line 825
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 826
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1643
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 1644
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1645
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldHandleScrollGesture(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->onScrollEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->latestReceivedHorizontalScrollTimestamp:J

    const/4 p1, 0x1

    return p1

    .line 1652
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .line 1625
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/16 v1, 0x43

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1626
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v2

    .line 1628
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/amazon/kindle/krl/R$bool;->toggle_overlays_on_menu_key:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1629
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v3, 0x52

    if-ne v0, v3, :cond_1

    .line 1630
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-virtual {p0, p1, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return v2

    .line 1632
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1633
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    if-eq v0, v1, :cond_2

    .line 1634
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/amazon/kcp/reader/ReaderNavigator;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1638
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1585
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->touch(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 1589
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 1590
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    .line 1593
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 3000
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3003
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public execute()V
    .locals 0

    .line 3721
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onBindDocViewer()V

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .line 1388
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getVisibleOverlays()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 1391
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public flashOverlays()V
    .locals 5

    .line 2237
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2240
    invoke-virtual {p0, v2, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    .line 2241
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlashTime()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(J)V

    .line 2242
    iput-boolean v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlaysFlashing:Z

    :cond_2
    return-void
.end method

.method public getAccessibilityGapView()Landroid/view/View;
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityGapView:Landroid/view/View;

    return-object v0
.end method

.method public getBubbleView()Lcom/amazon/kcp/reader/ui/BubbleView;
    .locals 2

    .line 3596
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

    if-nez v0, :cond_1

    .line 3597
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->bubble_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-nez v0, :cond_0

    .line 3600
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->bubble_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BubbleView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

    return-object v0

    .line 3604
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/BubbleView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

    .line 3607
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->bubbleView:Lcom/amazon/kcp/reader/ui/BubbleView;

    return-object v0
.end method

.method protected getChromeBarView(Z)Landroid/view/View;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getContentMissingViewWithoutInflating()Lcom/amazon/kindle/yj/ui/ContentMissingView;
    .locals 1

    .line 1091
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    return-object v0
.end method

.method public getCurrentPageMargins()Landroid/graphics/Point;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1521
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1525
    new-instance v1, Landroid/graphics/Point;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method protected getDecoratorOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 5

    .line 2739
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 2743
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 2744
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_2

    sget v0, Lcom/amazon/kindle/krl/R$integer;->show_animation_duration:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2745
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    xor-int/lit8 v0, p1, 0x1

    int-to-long v3, v1

    invoke-static {p2, v0, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    .line 2746
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-static {v0, v2, p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getDisplayableSeekPosition()I
    .locals 1

    .line 1745
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    return v0
.end method

.method protected getFastNavigationOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 1

    const/16 v0, 0x100

    .line 3797
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz p1, :cond_2

    .line 3799
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3800
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->getFastNavigationOverlayLayeredAnimator(ZZ)Landroid/animation/AnimatorSet;

    move-result-object p2

    .line 3801
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 3802
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object p2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getGestureFactory()Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;
    .locals 1

    .line 3263
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->gestureFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    return-object v0
.end method

.method public getGestureListener()Lcom/amazon/kcp/reader/gestures/GestureListener;
    .locals 1

    .line 3179
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    return-object v0
.end method

.method protected getHeaderActionBarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 6

    .line 2758
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    .line 2759
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isStandardOverlaysDisabled:Z

    if-nez v0, :cond_8

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hasDecoration()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_4

    .line 2762
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    .line 2763
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/16 v2, 0x8

    and-int/2addr v1, v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_4

    if-eqz p2, :cond_3

    .line 2767
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v1, :cond_2

    sget v0, Lcom/amazon/kindle/krl/R$integer;->action_bar_decoration_show_animation_duration:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    :cond_3
    int-to-float p2, v4

    .line 2768
    sget v0, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    mul-float p2, p2, v0

    float-to-int p2, p2

    int-to-long v4, p2

    .line 2769
    invoke-static {p1, v1, v4, v5}, Lcom/amazon/kcp/animation/AnimatorFactory;->createFadingAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    goto :goto_3

    :cond_4
    if-eqz p2, :cond_6

    .line 2773
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz v1, :cond_5

    sget v0, Lcom/amazon/kindle/krl/R$integer;->cs_title_container_show_animation_duration:I

    goto :goto_2

    :cond_5
    sget v0, Lcom/amazon/kindle/krl/R$integer;->cs_title_container_hide_animation_duration:I

    :goto_2
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    :cond_6
    xor-int/lit8 p2, v1, 0x1

    int-to-long v4, v4

    .line 2774
    invoke-static {p1, p2, v4, v5}, Lcom/amazon/kcp/animation/AnimatorFactory;->createDownSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    .line 2776
    :goto_3
    invoke-static {p1, v3, v1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2777
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    if-nez p1, :cond_7

    .line 2778
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {p1, p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_7
    return-object p2

    :cond_8
    :goto_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public getLastTouchX()F
    .locals 1

    .line 861
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    return v0
.end method

.method protected getLocationBarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x4

    .line 2707
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    const/4 p1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    .line 2714
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker(Z)V

    .line 2715
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-nez v3, :cond_2

    return-object v1

    .line 2719
    :cond_2
    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr v1, v0

    if-ne v1, v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz p2, :cond_5

    .line 2720
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    if-eqz v0, :cond_4

    sget p2, Lcom/amazon/kindle/krl/R$integer;->location_seeker_show_animation_duration:I

    goto :goto_2

    :cond_4
    sget p2, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    :goto_2
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    .line 2721
    :cond_5
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    xor-int/lit8 v1, v0, 0x1

    int-to-long v3, p1

    invoke-static {p2, v1, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createUpSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p1

    .line 2722
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-static {p2, v2, v0}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2723
    iget-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    if-nez p2, :cond_6

    .line 2724
    new-instance p2, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {p2, p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_6
    return-object p1
.end method

.method protected getLocationSeekbarListener()Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLocationSeeker()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;
    .locals 1

    .line 3175
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    return-object v0
.end method

.method public getMagnifyingGlass()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
    .locals 2

    .line 1760
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-nez v0, :cond_0

    sget v0, Lcom/amazon/kcp/reader/features/ReaderFeatures;->MAGNIFYING_GLASS:I

    invoke-static {v0}, Lcom/amazon/kcp/reader/features/ReaderFeatures;->isFeatureSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1761
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMagnifyingGlassStubResId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1763
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    .line 1764
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1766
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getViewForMagnification()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedView(Landroid/view/View;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    const/4 v1, 0x1

    .line 1767
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->shouldListenToObjectSelectionModelEvents(Z)V

    .line 1771
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    return-object v0
.end method

.method protected getMagnifyingGlassStubResId()I
    .locals 1

    .line 3205
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3206
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3209
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->magnifying_glass_vertical_stub:I

    goto :goto_1

    .line 3207
    :cond_1
    :goto_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->magnifying_glass_horizontal_stub:I

    :goto_1
    return v0
.end method

.method public getMagnifyingGlassWithoutInflating()Lcom/amazon/kcp/reader/ui/MagnifyingGlass;
    .locals 1

    .line 1780
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    return-object v0
.end method

.method protected getMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
    .locals 2

    .line 3097
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->reader_menu_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    return-object v0
.end method

.method public getNavigationMarginPercent()F
    .locals 2

    .line 1876
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->navigation_margin_percent:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    return-object v0
.end method

.method public getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
    .locals 2

    .line 1018
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->object_selection_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1020
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionViewLayoutId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1021
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 1022
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->setObjectSelectionModel(Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;)V

    .line 1023
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDrawSelectionRectsAndHandles()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->setDrawSelectionRectAndHandles(Z)V

    .line 1026
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    return-object v0
.end method

.method public getObjectSelectionView()Lcom/amazon/kcp/reader/ui/ObjectSelectionView;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1046
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    move-result-object v0

    .line 1047
    instance-of v1, v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ObjectSelectionView;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method protected getObjectSelectionViewLayoutId()I
    .locals 1

    .line 1058
    sget v0, Lcom/amazon/kindle/krl/R$layout;->scrolling_button_object_selection_layout:I

    return v0
.end method

.method public getObjectSelectionViewWithoutInflating()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;
    .locals 1

    .line 1082
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    return-object v0
.end method

.method public getOrientationLockManager()Lcom/amazon/kcp/reader/ui/IOrientationLockManager;
    .locals 1

    .line 3676
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    return-object v0
.end method

.method protected getOverlayAnimatorSet(IZ)Landroid/animation/AnimatorSet;
    .locals 11

    const/4 v0, 0x0

    .line 2556
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    .line 2557
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v1

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    invoke-interface {v1, p0, v2}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->getSystemUIFlagsAnimator(Lcom/amazon/kcp/reader/ui/ReaderLayout;I)Landroid/animation/Animator;

    move-result-object v1

    .line 2558
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getToolbarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v2

    .line 2559
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTitlebarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v3

    .line 2560
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationBarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v4

    .line 2562
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getDecoratorOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v5

    .line 2563
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getHeaderActionBarOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v6

    .line 2564
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getFastNavigationOverlayAnimator(IZ)Landroid/animation/Animator;

    move-result-object v7

    .line 2565
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTitleContainerAnimator(IZ)Landroid/animation/Animator;

    move-result-object v8

    .line 2566
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getStandardOverlayAnimator(Z)Landroid/animation/Animator;

    move-result-object v9

    const/16 v10, 0x8

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v9, v10, v0

    const/4 v9, 0x1

    aput-object v2, v10, v9

    const/4 v2, 0x2

    aput-object v3, v10, v2

    const/4 v3, 0x3

    aput-object v4, v10, v3

    const/4 v4, 0x4

    aput-object v5, v10, v4

    const/4 v5, 0x5

    aput-object v7, v10, v5

    const/4 v5, 0x6

    aput-object v6, v10, v5

    const/4 v5, 0x7

    aput-object v8, v10, v5

    .line 2568
    invoke-static {v10}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    return-object v6

    .line 2583
    :cond_0
    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlaysDelay:I

    .line 2584
    iget v7, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/lit8 v8, v7, 0x3

    if-eq v8, v3, :cond_4

    and-int/2addr v7, v4

    if-ne v7, v4, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v7, p1, 0x3

    if-eq v7, v3, :cond_2

    and-int/2addr p1, v4

    if-ne p1, v4, :cond_6

    .line 2601
    :cond_2
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecorationHideDelay:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlaysDelay:I

    if-eqz p2, :cond_3

    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v5, p1, v0

    aput-object v1, p1, v9

    .line 2603
    invoke-static {p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetSequentially([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v6

    goto :goto_1

    :cond_3
    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v1, p1, v0

    aput-object v5, p1, v9

    .line 2607
    invoke-static {p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v6

    goto :goto_1

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 2588
    sget p1, Lcom/amazon/kindle/nln/NlnAdjustmentPlugin;->transitionDurationScale:F

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecorationShowDelay:I

    int-to-float p2, p2

    mul-float p1, p1, p2

    float-to-int p1, p1

    int-to-long p1, p1

    .line 2589
    invoke-virtual {v5, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v1, p1, v0

    aput-object v5, p1, v9

    .line 2590
    invoke-static {p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetSequentially([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v6

    goto :goto_1

    :cond_5
    new-array p1, v2, [Landroid/animation/Animator;

    aput-object v1, p1, v0

    aput-object v5, p1, v9

    .line 2594
    invoke-static {p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createAnimatorSetTogether([Landroid/animation/Animator;)Landroid/animation/AnimatorSet;

    move-result-object v6

    :cond_6
    :goto_1
    return-object v6
.end method

.method protected getOverlayFlags(Z)I
    .locals 2

    if-eqz p1, :cond_0

    const/16 v0, 0x1f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2367
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {p1}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2368
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->getCurrentReaderMode()Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    move-result-object p1

    sget-object v1, Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;->READER:Lcom/amazon/kindle/krx/reader/IReaderModeHandler$ReaderMode;

    if-ne p1, v1, :cond_1

    or-int/lit16 p1, v0, 0x200

    or-int/lit16 v0, p1, 0x100

    :cond_1
    return v0
.end method

.method public getOverlayFlashTime()J
    .locals 2

    .line 2228
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isScreenReaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1b58

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0xdac

    :goto_0
    return-wide v0
.end method

.method public getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;
    .locals 1

    .line 1501
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1502
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1504
    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocView;->getPageMargins()Landroid/view/ViewGroup$MarginLayoutParams;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v0, :cond_0

    .line 1147
    invoke-interface {v0}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1149
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    return-object v0

    .line 1152
    :cond_0
    sget-object v0, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->HORIZONTAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    return-object v0
.end method

.method public getProgressiveContentMissingView()Lcom/amazon/kindle/yj/ui/ContentMissingView;
    .locals 2

    .line 1062
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    if-nez v0, :cond_0

    .line 1063
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->progressive_download_content_missing_view_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 1065
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    .line 1069
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    return-object v0
.end method

.method public getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;
    .locals 1

    .line 1569
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-object v0
.end method

.method protected getReaderLocationContainerResource()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
    .locals 1

    .line 1675
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    return-object v0
.end method

.method protected getReaderViewForInit()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSeekerLocationText()Ljava/lang/String;
    .locals 3

    .line 2192
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2195
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->decorationProvider:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;

    sget-object v2, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;->TopLeft:Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;

    invoke-interface {v1, v2, v0}, Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider;->getLocationText(Lcom/amazon/kcp/reader/ui/ILocationDecorationProvider$LocationTextPosition;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSnapshotView()Landroid/widget/ImageView;
    .locals 4

    .line 3010
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 3011
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 3012
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3013
    invoke-virtual {p0, v2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->draw(Landroid/graphics/Canvas;)V

    .line 3014
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-object v0
.end method

.method protected getStandardOverlayAnimator(Z)Landroid/animation/Animator;
    .locals 3

    .line 2791
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2792
    :goto_0
    new-instance v0, Lcom/amazon/kcp/animation/RunnableAnimator;

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;

    invoke-direct {v2, p0, v1, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$10;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;ZZ)V

    invoke-direct {v0, v2}, Lcom/amazon/kcp/animation/RunnableAnimator;-><init>(Ljava/lang/Runnable;)V

    .line 2809
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    if-nez p1, :cond_1

    .line 2810
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {p1, p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-object v0
.end method

.method public getStatusBarHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method protected getTitleContainerAnimator(IZ)Landroid/animation/Animator;
    .locals 5

    const/16 v0, 0x200

    .line 3776
    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    .line 3777
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3778
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result p1

    if-eqz p1, :cond_0

    return-object v1

    .line 3781
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateTitleContainer(Z)V

    .line 3783
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 3784
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_2

    sget v0, Lcom/amazon/kindle/krl/R$integer;->cs_title_container_show_animation_duration:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/amazon/kindle/krl/R$integer;->cs_title_container_hide_animation_duration:I

    :goto_1
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 3785
    :cond_3
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    xor-int/lit8 v0, p1, 0x1

    int-to-long v3, v1

    invoke-static {p2, v0, v3, v4}, Lcom/amazon/kcp/animation/AnimatorFactory;->createDownSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    .line 3786
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-static {v0, v2, p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3787
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createdEndAnimationCallback:Z

    if-nez v0, :cond_4

    .line 3788
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$EndOverlayAnimatorListener;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-virtual {p2, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_4
    return-object p2

    :cond_5
    return-object v1
.end method

.method protected getTitleView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getTitlebarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 4

    .line 2687
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    .line 2688
    invoke-virtual {p0, p1, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_2

    .line 2692
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_3

    .line 2693
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_2

    sget v1, Lcom/amazon/kindle/krl/R$integer;->show_animation_duration:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    :goto_1
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    :cond_3
    xor-int/lit8 p2, p1, 0x1

    int-to-long v1, v2

    .line 2694
    invoke-static {v0, p2, v1, v2}, Lcom/amazon/kcp/animation/AnimatorFactory;->createDownSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    .line 2695
    invoke-static {v0, v3, p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2

    :cond_4
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getToolbarOverlayAnimator(IZ)Landroid/animation/Animator;
    .locals 1

    .line 2671
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldChangeOverlayVisibility(II)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_1

    .line 2675
    :cond_0
    iget p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr p1, v0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 2676
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolBarOverlayAnimator(ZZ)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getViewForMagnification()Landroid/view/View;
    .locals 1

    .line 3219
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    return-object v0
.end method

.method protected getVisibleOverlays()I
    .locals 1

    .line 2218
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    return v0
.end method

.method public getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;
    .locals 1

    .line 3503
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    return-object v0
.end method

.method public handleOverlaysOnSearchEnded(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 3031
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setOverlaysVisible(ZZ)V

    :cond_0
    return-void
.end method

.method public handleOverlaysOnSearchRequested()V
    .locals 1

    .line 3023
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideAllViewOptionOverlays()Z

    return-void
.end method

.method public hideOverlaysAfterDelay(J)V
    .locals 1

    const/4 v0, 0x0

    .line 2890
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysAfterDelay(JZ)V

    return-void
.end method

.method public hideOverlaysAfterDelay(JZ)V
    .locals 2

    .line 2902
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    .line 2903
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isFullPageVisible()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    .line 2905
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 2906
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;

    invoke-direct {v0, p0, p3}, Lcom/amazon/kcp/reader/ui/ReaderLayout$11;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    .line 2918
    new-instance p3, Landroid/os/Handler;

    invoke-direct {p3}, Landroid/os/Handler;-><init>()V

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysHandler:Landroid/os/Handler;

    .line 2919
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->hideOverlaysRunnable:Ljava/lang/Runnable;

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected inflateActionBarDecoration()V
    .locals 2

    .line 3159
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->action_bar_decoration_stub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 3161
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    .line 3162
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setUseLayoutCache(Z)V

    :cond_0
    return-void
.end method

.method protected inflateLocationSeeker()V
    .locals 1

    const/4 v0, 0x0

    .line 3105
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker(Z)V

    return-void
.end method

.method protected inflateLocationSeeker(Z)V
    .locals 5

    .line 3111
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3112
    invoke-static {}, Lcom/amazon/kcp/debug/NeutronUtilManager;->getInstance()Lcom/amazon/kcp/debug/INeutronUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/INeutronUtil;->isNeutronPhase1EnabledInReader()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3116
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3120
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-nez v0, :cond_4

    .line 3121
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$layout;->custom_reader_location_seekbar_container:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 3122
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setUseLayoutCache(Z)V

    .line 3123
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3124
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->addView(Landroid/view/View;)V

    .line 3128
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationSeekbarListener()Lcom/amazon/kcp/reader/ui/ReaderLayout$ReaderLocationSeekbarListener;

    move-result-object v0

    .line 3129
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setLocationInfoCallback(Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker$ILocationInfoCallback;)V

    .line 3131
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$12;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3139
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3140
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 3142
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookPositionBase()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    .line 3144
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    .line 3145
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    .line 3152
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_4

    .line 3153
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_4
    return-void
.end method

.method protected inflateLocationSeekerDecoration()V
    .locals 2

    .line 3167
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->stub_location_seeker_decoration:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 3169
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    :cond_0
    return-void
.end method

.method protected inflateTitleContainer(Z)V
    .locals 7

    .line 3737
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    if-nez v0, :cond_2

    .line 3738
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krl/R$layout;->book_title_bar:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 3739
    sget v1, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    .line 3741
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 3742
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->page_flip_title_container_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 3743
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 3744
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3748
    :cond_0
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3749
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 3750
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->chromeBackgroundColor:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3753
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3754
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 3755
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->toolbar_color:I

    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3758
    :cond_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/krl/R$attr;->csTitleContainerBottomBorderColor:I

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    new-array v3, v5, [I

    .line 3761
    sget v4, Lcom/amazon/kindle/krl/R$attr;->pfvBookInfoIcon:I

    const/4 v5, 0x0

    aput v4, v3, v5

    .line 3762
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v4, v3}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 3763
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v3, v5, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 3764
    iget v1, v1, Landroid/util/TypedValue;->data:I

    iget v2, v2, Landroid/util/TypedValue;->data:I

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1, v2, v4, v5, v6}, Lcom/amazon/android/widget/TitleContainerUtil;->setupBookTitleBarCS(IILandroid/graphics/drawable/Drawable;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 3765
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 3767
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 3770
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 3

    .line 469
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const/4 v0, 0x0

    .line 470
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    .line 474
    new-instance v1, Lcom/amazon/kcp/reader/ui/Synchronizer;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/reader/ui/Synchronizer;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    .line 476
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 477
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getObjectSelectionModel()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 479
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createNavigator()Lcom/amazon/kcp/reader/ReaderNavigator;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    .line 481
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->createGestureDetector()Lcom/amazon/kcp/reader/ReaderGestureDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    if-nez v0, :cond_1

    .line 483
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderGestureListener()Lcom/amazon/kcp/reader/gestures/GestureListener;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    .line 484
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    .line 486
    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 490
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V

    .line 492
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->settings:Lcom/amazon/kcp/application/UserSettingsController;

    .line 494
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initOrientationLockManager()V

    .line 496
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->reader_layout_location_above_menu:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 498
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 500
    new-instance v0, Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    .line 503
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->initialize()V

    .line 504
    invoke-static {}, Lcom/amazon/kcp/readingstreams/NavigationMetricsUtils;->initialize()V

    .line 506
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 507
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    const-string v1, "onRestartLastTouchX"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    .line 508
    invoke-virtual {p1, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 510
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pubSubEventsManager:Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method protected initializeAccessibility()V
    .locals 5

    .line 3270
    sget v0, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left_increase:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3271
    sget v1, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left_decrease:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3272
    sget v2, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right_increase:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 3273
    sget v3, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right_decrease:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3276
    new-instance v4, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$13;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    if-eqz v1, :cond_1

    .line 3296
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$14;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$14;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    if-eqz v2, :cond_2

    .line 3316
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$15;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$15;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    if-eqz v3, :cond_3

    .line 3337
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$16;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const/4 v0, 0x0

    .line 3357
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setSelectionAccessibilityButtonVisibility(I)V

    return-void
.end method

.method protected initializeAccessibleSelectionLayout()V
    .locals 0

    return-void
.end method

.method public layoutAccessibleSelectionButtons()V
    .locals 10

    .line 1995
    sget v0, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1996
    sget v1, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 2003
    :cond_0
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 2004
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 2008
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionType()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;->GRAPHICAL:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionType;

    if-eq v2, v3, :cond_6

    .line 2009
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    .line 2010
    invoke-interface {v2}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getCoveringRectangles()Ljava/util/Vector;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 2012
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 2013
    invoke-virtual {v2}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 2014
    iget v4, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x5

    .line 2015
    iget v5, v3, Landroid/graphics/Rect;->left:I

    add-int/lit8 v5, v5, -0x5

    if-gez v4, :cond_2

    rsub-int/lit8 v6, v4, 0x0

    add-int/2addr v4, v6

    add-int/2addr v5, v6

    .line 2022
    :cond_2
    invoke-virtual {v2}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 2023
    iget v6, v2, Landroid/graphics/Rect;->right:I

    add-int/lit8 v7, v6, 0x5

    add-int/lit8 v6, v6, 0x5

    .line 2024
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v8

    add-int/2addr v6, v8

    .line 2025
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    if-le v6, v8, :cond_3

    .line 2026
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v8

    sub-int v8, v6, v8

    sub-int/2addr v7, v8

    sub-int/2addr v6, v8

    :cond_3
    if-le v5, v7, :cond_5

    .line 2032
    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->top:I

    if-ne v8, v9, :cond_5

    sub-int v8, v7, v5

    if-lez v4, :cond_4

    add-int/2addr v4, v8

    add-int/2addr v5, v8

    goto :goto_0

    :cond_4
    sub-int/2addr v7, v8

    sub-int/2addr v6, v8

    .line 2046
    :cond_5
    :goto_0
    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v0, v4, v3, v5, v8}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 2048
    iget v0, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {v1, v7, v0, v6, v2}, Landroid/widget/LinearLayout;->layout(IIII)V

    :cond_6
    :goto_1
    return-void
.end method

.method protected layoutMagnifyingGlass()V
    .locals 5

    .line 1534
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_4

    .line 1535
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->getMagnifiedCenterPositionPoint()Landroid/graphics/PointF;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1537
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 1538
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v1

    .line 1543
    invoke-virtual {v1}, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->isHorizontal()Z

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_1

    .line 1544
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 1545
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlassVertOffset:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 1547
    :cond_1
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlassVertOffset:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    .line 1548
    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    sub-float/2addr v0, v3

    :goto_1
    float-to-int v0, v0

    const/4 v2, 0x0

    if-gez v1, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-gez v0, :cond_3

    const/4 v0, 0x0

    .line 1559
    :cond_3
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v2, v1, v0, v3, v4}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_4
    return-void
.end method

.method public onActivityLifecycleEvent(Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 582
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-ne v0, v1, :cond_0

    .line 583
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$19;->$SwitchMap$com$amazon$kcp$reader$ReaderActivityLifecycleEvent$Type:[I

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent;->getActivityLifecycleType()Lcom/amazon/kcp/reader/ReaderActivityLifecycleEvent$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 614
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ReaderActivityLifecycleEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 605
    :pswitch_0
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onConfigurationChange()V

    goto :goto_0

    .line 602
    :pswitch_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->destroy()V

    goto :goto_0

    .line 599
    :pswitch_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->stop()V

    goto :goto_0

    .line 595
    :pswitch_3
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onActivityPaused()V

    .line 596
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->pause()V

    goto :goto_0

    .line 585
    :pswitch_4
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->resume()V

    :cond_0
    :goto_0
    :pswitch_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public onActivityPaused()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onActivityStartActivityForResult(I)V
    .locals 0

    return-void
.end method

.method public onAfterSettingsChange()V
    .locals 0

    return-void
.end method

.method protected onBindDocViewer()V
    .locals 4

    .line 3680
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    .line 3685
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    .line 3687
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getViewForMagnification()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedView(Landroid/view/View;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 3691
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v1, :cond_2

    .line 3692
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 3693
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setUseLayoutCache(Z)V

    .line 3694
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v2

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookPositionBase()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setMaxPossibleSeekPosition(I)V

    .line 3695
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    .line 3696
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekerDirection(Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;)V

    .line 3699
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v0, :cond_3

    .line 3700
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onDocViewerChange(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 3705
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v0, v1, :cond_5

    .line 3706
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    iget v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V

    .line 3709
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-eqz v0, :cond_6

    .line 3710
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    .line 3711
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->useLayoutCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setUseLayoutCache(Z)V

    :cond_6
    return-void
.end method

.method public onBreadcrumbPressEvent(Lcom/amazon/kindle/event/BreadcrumbPressEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->BREADCRUMB_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 673
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 675
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_1

    .line 680
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 681
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 682
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 683
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->onDestroy()V

    .line 684
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    .line 686
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->inflateLocationSeeker()V

    .line 687
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->currentOrientation:I

    :cond_1
    return-void
.end method

.method public onCurrentPageDrawn()V
    .locals 0

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onDocViewerAfterPageTurn()V
    .locals 1

    const/4 v0, 0x1

    .line 2130
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDecorationsVisible(Z)V

    return-void
.end method

.method public onDocViewerAfterPositionChanged(I)V
    .locals 0

    return-void
.end method

.method public onDocViewerBeforePageTurn()V
    .locals 1

    const/4 v0, 0x0

    .line 2125
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setDecorationsVisible(Z)V

    return-void
.end method

.method public onDocViewerBeforePositionChange(I)V
    .locals 0

    return-void
.end method

.method public onDocViewerInitialDraw()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public onDocViewerInitialDrawEvent(Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 1906
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/event/DocViewerInitialDrawEvent;->getPublisher()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 1910
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayExecuted()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1911
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setWaypoints()V

    .line 1916
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onDocViewerInitialDraw()V

    .line 1918
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    .line 1922
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;

    invoke-direct {v1, p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout$8;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;Lcom/amazon/kindle/model/content/ILocalBookInfo;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1981
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    if-eqz p1, :cond_2

    .line 1982
    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getImportantForAccessibility()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->importantForAccessibilityMode:I

    :cond_2
    :goto_0
    return-void
.end method

.method public onDocViewerOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 2106
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/model/sync/annotation/IAnnotationData;->getType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2113
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid annotation type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2110
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    const-string v1, "Page"

    invoke-virtual {v0, p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->displayNoteUI(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onDocViewerRefresh()V
    .locals 0

    .line 2079
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->refresh()V

    return-void
.end method

.method public onDocViewerShowBookDetails()V
    .locals 4

    .line 2084
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    .line 2085
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    const-string v2, "ReaderGestureDetector"

    const-string v3, "SampleEndActionClicked"

    invoke-virtual {v1, v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/models/BookType;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/amazon/kindle/utils/StoreOpeners;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/store/StoreOpener;->execute()V

    return-void
.end method

.method public onDocViewerWillNavigateBack(J)V
    .locals 0

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "ReaderLayout.onDraw()"

    const/4 v1, 0x1

    .line 2991
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 2993
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    const/4 p1, 0x0

    .line 2995
    invoke-static {v0, p1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .line 1096
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 1098
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->simple_header_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->simpleHeader:Landroid/view/View;

    .line 1099
    sget v0, Lcom/amazon/kindle/krl/R$id;->accessibility_gap_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityGapView:Landroid/view/View;

    .line 1100
    sget v0, Lcom/amazon/kindle/krl/R$id;->reader_chrome_fragment_container:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->chromeFragmentContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 1103
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    .line 1105
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 1107
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    .line 1109
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1112
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTitleView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1114
    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$7;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 3389
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3390
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 3395
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 3396
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1606
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerNavigator:Lcom/amazon/kcp/reader/ReaderNavigator;

    if-eqz v0, :cond_0

    .line 1607
    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ReaderNavigator;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p2, 0x18

    if-eq p1, p2, :cond_0

    const/16 p2, 0x19

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1616
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 1617
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->areVolumeKeysPageControls()Z

    move-result p1

    return p1
.end method

.method public onLayeredSeekBarEvent(Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_1

    .line 647
    invoke-virtual {p1}, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent;->getType()Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    move-result-object p1

    .line 649
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->PRESSED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->SCRUBBER:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    goto :goto_0

    .line 652
    :cond_0
    sget-object v0, Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;->SNAPPED:Lcom/amazon/kindle/seekbar/LayeredSeekBar$LayeredSeekBarEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 654
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_PIN_PRESS:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 16

    move-object/from16 v6, p0

    const-string v7, "ReaderLayout.onLayout()"

    const/4 v8, 0x1

    .line 1167
    invoke-static {v7, v8}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1172
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->insets:Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 1173
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p5, v1

    .line 1174
    iget v2, v0, Landroid/graphics/Rect;->left:I

    add-int v2, p2, v2

    .line 1175
    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int v0, p4, v0

    move v9, v0

    move v10, v2

    goto :goto_0

    :cond_0
    move/from16 v10, p2

    move/from16 v9, p4

    move/from16 v1, p5

    .line 1181
    :goto_0
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_12

    .line 1185
    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1187
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v0, :cond_2

    .line 1188
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    .line 1189
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    sub-int v0, v1, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    invoke-virtual {v2, v10, v0, v9, v1}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1192
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1193
    iget-object v1, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v1

    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTop()I

    move-result v2

    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getRight()I

    move-result v3

    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->layout(IIII)V

    goto :goto_1

    .line 1195
    :cond_2
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    .line 1197
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    .line 1198
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    sub-int v0, v1, v0

    invoke-virtual {v2, v10, v0, v9, v1}, Landroid/view/ViewGroup;->layout(IIII)V

    .line 1201
    :cond_3
    :goto_1
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v11

    .line 1202
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    const/4 v12, 0x0

    if-lez v0, :cond_4

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_4

    const/4 v13, 0x1

    goto :goto_2

    :cond_4
    const/4 v13, 0x0

    :goto_2
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v10

    move/from16 v3, p3

    move v4, v9

    move/from16 v5, p5

    .line 1204
    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->relayoutReaderMenuContainer(ZIIII)V

    const/4 v0, 0x2

    const/4 v1, -0x1

    if-eqz v13, :cond_8

    .line 1209
    sget v2, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay:I

    invoke-virtual {v6, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_8

    const/4 v3, 0x0

    .line 1211
    :goto_3
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_8

    .line 1212
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1213
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-ne v5, v1, :cond_5

    goto :goto_5

    .line 1220
    :cond_5
    iget-object v5, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v5

    sget-object v13, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v5, v13, :cond_6

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    .line 1221
    :goto_4
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v13

    if-eqz v5, :cond_7

    .line 1223
    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 1224
    iget v14, v5, Landroid/graphics/Rect;->left:I

    sub-int v14, v14, p2

    sub-int/2addr v14, v13

    div-int/2addr v14, v0

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    add-int v14, v13, p2

    .line 1225
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v15

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v5, v13

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v13

    invoke-virtual {v4, v14, v15, v5, v13}, Landroid/view/View;->layout(IIII)V

    goto :goto_5

    .line 1227
    :cond_7
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v8

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    .line 1228
    iget v14, v5, Landroid/graphics/Rect;->right:I

    sub-int v14, p4, v14

    sub-int/2addr v14, v13

    div-int/2addr v14, v0

    invoke-static {v14, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1229
    iget v5, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v13

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v14

    sub-int v13, p4, v13

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v15

    invoke-virtual {v4, v5, v14, v13, v15}, Landroid/view/View;->layout(IIII)V

    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 1235
    :cond_8
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    if-eqz v2, :cond_f

    .line 1237
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1238
    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-nez v3, :cond_9

    :goto_6
    const/4 v3, 0x0

    goto :goto_7

    .line 1239
    :cond_9
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_a

    goto :goto_6

    :cond_a
    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1240
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v2

    add-int/2addr v3, v2

    .line 1241
    :goto_7
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v3

    .line 1243
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-nez v4, :cond_b

    goto :goto_8

    .line 1244
    :cond_b
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_c

    goto :goto_8

    :cond_c
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1245
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v10

    .line 1247
    :goto_8
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-nez v4, :cond_d

    goto :goto_9

    .line 1248
    :cond_d
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_e

    goto :goto_9

    :cond_e
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1249
    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v9

    .line 1250
    :goto_9
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    invoke-virtual {v4, v10, v3, v9, v2}, Landroid/view/View;->layout(IIII)V

    .line 1253
    :cond_f
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v2, :cond_15

    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v2, :cond_15

    .line 1254
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    move-result v2

    .line 1255
    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationDecor:Landroid/view/ViewGroup;

    if-nez v3, :cond_11

    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-nez v3, :cond_10

    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1256
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    sub-int/2addr v3, v2

    goto :goto_a

    :cond_10
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    goto :goto_a

    :cond_11
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    .line 1257
    :goto_a
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getPaddingTop()I

    move-result v2

    .line 1259
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->titleContainer:Landroid/view/View;

    if-eqz v4, :cond_12

    .line 1260
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v2

    goto :goto_b

    .line 1261
    :cond_12
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-eqz v4, :cond_13

    .line 1262
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v2

    goto :goto_b

    .line 1263
    :cond_13
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v4}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_14

    .line 1264
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 1268
    :cond_14
    :goto_b
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    move-result v4

    .line 1269
    iget-object v5, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v5

    sub-int/2addr v5, v4

    .line 1270
    iget-object v4, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    move-result v4

    .line 1272
    iget-object v9, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    invoke-virtual {v9, v4, v2, v5, v3}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onLayoutChange(IIII)V

    .line 1276
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutMagnifyingGlass()V

    .line 1279
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    if-eqz v2, :cond_16

    .line 1280
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1281
    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    iget v4, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1282
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v9

    iget v10, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v10

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v2

    .line 1281
    invoke-virtual {v3, v4, v5, v9, v10}, Landroid/widget/LinearLayout;->layout(IIII)V

    .line 1285
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutAccessibleSelectionButtons()V

    .line 1287
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 1288
    iget-object v2, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityGapView:Landroid/view/View;

    .line 1289
    iget-object v3, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v3, :cond_17

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isAaBottomSheetVisible()Z

    move-result v3

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    goto :goto_c

    :cond_17
    const/4 v3, 0x0

    :goto_c
    if-eqz v3, :cond_18

    if-eqz v2, :cond_18

    .line 1290
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_18

    .line 1293
    invoke-direct {v6, v8}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setAccessibilityGapViewVisible(Z)V

    .line 1294
    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    :cond_18
    if-eqz v2, :cond_23

    .line 1297
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 1301
    sget v0, Lcom/amazon/kindle/krl/R$id;->location_seeker_decoration:I

    invoke-virtual {v6, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1302
    sget v4, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bottom_sheet:I

    invoke-virtual {v6, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_19

    .line 1306
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_19

    goto :goto_d

    :cond_19
    const/4 v8, 0x0

    .line 1307
    :goto_d
    iget-object v5, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    sget-object v9, Lcom/amazon/kindle/model/content/LocalContentFeatureType;->ThumbnailScrubber:Lcom/amazon/kindle/model/content/LocalContentFeatureType;

    invoke-interface {v5, v9}, Lcom/amazon/kindle/model/content/ILocalBookItem;->hasFeature(Lcom/amazon/kindle/model/content/LocalContentFeatureType;)Z

    move-result v5

    .line 1309
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationSeeker()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v9

    if-eqz v5, :cond_1b

    if-eqz v8, :cond_1b

    .line 1311
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getTitleView()Landroid/view/View;

    move-result-object v1

    .line 1312
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v3

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    goto :goto_e

    :cond_1a
    const/4 v1, 0x0

    :goto_e
    add-int/2addr v1, v3

    .line 1313
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    goto :goto_11

    :cond_1b
    if-eqz v3, :cond_1c

    .line 1317
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v1

    move v0, v1

    const/4 v1, 0x0

    goto :goto_11

    :cond_1c
    if-eqz v9, :cond_21

    .line 1319
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1322
    iget-object v1, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hasDecoration()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1324
    iget-object v0, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->actionBarDecoration:Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v0

    goto :goto_10

    :cond_1d
    if-eqz v0, :cond_20

    .line 1326
    iget-object v1, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-nez v1, :cond_1e

    goto :goto_f

    .line 1327
    :cond_1e
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1f

    goto :goto_f

    :cond_1f
    iget-object v1, v6, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    .line 1328
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBottom()I

    move-result v0

    add-int/2addr v1, v0

    move v0, v1

    goto :goto_10

    :cond_20
    :goto_f
    const/4 v0, 0x0

    :goto_10
    add-int v1, v12, v0

    .line 1331
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getTop()I

    move-result v0

    goto :goto_11

    :cond_21
    const/4 v0, -0x1

    .line 1334
    :goto_11
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v3

    if-ne v3, v1, :cond_22

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v3

    if-eq v3, v0, :cond_23

    .line 1335
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getRight()I

    move-result v4

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/view/View;->layout(IIII)V

    .line 1340
    :cond_23
    invoke-static {v7, v12}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    :cond_24
    :goto_12
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    const-string v0, "ReaderLayout.onMeasure()"

    const/4 v1, 0x1

    .line 1397
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1399
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_7

    .line 1407
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 1411
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-interface {v2, v4}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    .line 1412
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-le v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v4, :cond_3

    .line 1415
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Rect;

    .line 1416
    iget v7, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    iget v8, v6, Landroid/graphics/Rect;->right:I

    int-to-float v8, v8

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_2

    .line 1417
    iget v6, v6, Landroid/graphics/Rect;->left:I

    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    .line 1419
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 1420
    iget v6, v6, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v6

    invoke-static {v7, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    goto :goto_1

    :cond_3
    move v6, p1

    .line 1426
    :goto_1
    invoke-virtual {p0, v6, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->remeasureReaderMenuContainer(II)V

    if-eqz v4, :cond_7

    .line 1431
    sget v4, Lcom/amazon/kindle/krl/R$id;->reader_plugin_overlay:I

    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    if-eqz v4, :cond_7

    const/4 v7, 0x0

    .line 1433
    :goto_2
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    if-ge v7, v8, :cond_7

    .line 1434
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1435
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v10, -0x1

    if-ne v9, v10, :cond_4

    goto :goto_4

    .line 1443
    :cond_4
    iget-object v9, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v9}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v9

    invoke-interface {v9}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object v9

    sget-object v10, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->LEFT_TO_RIGHT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne v9, v10, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    const/high16 v10, -0x80000000

    if-eqz v9, :cond_6

    .line 1445
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 1446
    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1447
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1448
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 1450
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v1

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 1451
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 1452
    iget v9, v9, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v9

    invoke-static {v11, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 1453
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v10, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v10

    .line 1454
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1460
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz p1, :cond_a

    .line 1463
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderMenuContainer()Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1464
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getToolbar()Landroid/view/View;

    move-result-object p1

    goto :goto_5

    :cond_8
    const/4 p1, 0x0

    :goto_5
    if-eqz p1, :cond_9

    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    .line 1466
    :goto_6
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    .line 1467
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result v2

    sub-int p1, v2, p1

    if-le v1, p1, :cond_a

    sub-int/2addr v2, v1

    sub-int/2addr p1, v2

    .line 1472
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 1473
    invoke-static {v6, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1474
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    invoke-virtual {v1, p2, p1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 1478
    :cond_a
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void

    .line 1400
    :cond_b
    :goto_7
    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 1403
    invoke-virtual {p0, v3, v3}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 3551
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v0, :cond_0

    .line 3552
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onNavigationEvent(Lcom/amazon/kindle/event/KindleDocNavigationEvent;)V

    .line 3555
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-eq v0, v1, :cond_2

    .line 3556
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POSITION_RANGE_CHANGED:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 3558
    :goto_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    if-ne v1, v2, :cond_4

    if-eqz v0, :cond_4

    .line 3560
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getNavigationType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;->ADJACENT:Lcom/amazon/kindle/event/KindleDocNavigationEvent$NavigationType;

    if-ne v0, v1, :cond_4

    .line 3561
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->isFullPageVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3562
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3565
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/ui/ReaderLayout$18;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$18;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 3574
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3575
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v1, v2, :cond_4

    .line 3576
    invoke-static {v0}, Lcom/amazon/kindle/content/KindleContentFormat;->getFormat(Lcom/amazon/kindle/model/content/ILocalBookItem;)Lcom/amazon/kindle/content/KindleContentFormat;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    .line 3577
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderEventHandler()Lcom/amazon/kindle/tutorial/IReaderEventHandler;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/tutorial/IReaderEventHandler;->onPageTurn(Ljava/lang/String;)V

    .line 3581
    :cond_4
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getEventType()Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;->POST_NAVIGATION:Lcom/amazon/kindle/event/KindleDocNavigationEvent$EventType;

    if-ne v0, v1, :cond_7

    .line 3583
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3584
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->refreshToggleBookmarkItem()V

    .line 3587
    :cond_5
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3589
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->recordStatisticsOnPostNavigation()V

    .line 3591
    :cond_6
    invoke-virtual {p1}, Lcom/amazon/kindle/event/KindleDocNavigationEvent;->getRangeStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Lcom/amazon/kcp/util/fastmetrics/InBookChromeFastMetrics;->setCurrentPosition(I)V

    :cond_7
    return-void
.end method

.method public onNavigationOrSettingsChangeFailed(I)V
    .locals 0

    return-void
.end method

.method public onNlnModeEvent(Lcom/amazon/kindle/nln/NlnModeChangeEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 2527
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getNewMode()Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/nln/NonLinearNavigationMode;->PAGE_FLIP:Lcom/amazon/kindle/nln/NonLinearNavigationMode;

    if-ne v0, v1, :cond_0

    .line 2528
    invoke-virtual {p1}, Lcom/amazon/kindle/nln/NlnModeChangeEvent;->getType()Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;->END:Lcom/amazon/kindle/nln/NlnModeChangeEvent$EventType;

    if-ne p1, v0, :cond_0

    .line 2529
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 2530
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    .line 2531
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_0
    return-void
.end method

.method public onObjectSelectionModelEvent(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V
    .locals 2
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        isBlocking = true
    .end annotation

    .line 529
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getPublisher()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    if-ne v0, v1, :cond_7

    if-nez v1, :cond_0

    goto/16 :goto_2

    .line 533
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_1

    .line 534
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->selection(Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;)V

    .line 537
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    if-eqz v0, :cond_1

    .line 538
    invoke-interface {v0}, Lcom/amazon/android/docviewer/filter/IViewDrawFilter;->disable()V

    .line 542
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->AREA_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v0, v1, :cond_2

    .line 543
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->onSelectionAreaChanged(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    goto :goto_1

    .line 544
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object v0

    sget-object v1, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->STATE_CHANGED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne v0, v1, :cond_5

    .line 545
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionModel:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;

    invoke-interface {p1}, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel;->getSelectionState()Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;->NOTHING_SELECTED:Lcom/amazon/android/docviewer/selection/IObjectSelectionModel$SelectionState;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_4

    .line 552
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    .line 554
    :cond_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V

    .line 555
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 562
    :cond_5
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent;->getType()Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    move-result-object p1

    sget-object v0, Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;->SELECTION_STARTED:Lcom/amazon/android/docviewer/ObjectSelectionModelEvent$Type;

    if-ne p1, v0, :cond_6

    .line 563
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$5;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 575
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    if-nez p1, :cond_7

    .line 576
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getObjectSelectionLayout()Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    :cond_7
    :goto_2
    return-void
.end method

.method public onOverlaysVisibilityChanged(Z)V
    .locals 1

    .line 2181
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    if-eqz p1, :cond_0

    or-int/lit8 p1, v0, 0x1

    .line 2184
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    :cond_0
    return-void
.end method

.method public onPageFlowChanged()V
    .locals 0

    return-void
.end method

.method public onPageTurnEvent(Lcom/amazon/kindle/event/PageTurnEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    if-eqz p1, :cond_1

    .line 624
    invoke-virtual {p1}, Lcom/amazon/kindle/event/PageTurnEvent;->getEventType()Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    move-result-object p1

    .line 626
    sget-object v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_BEGIN:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 627
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->PRE_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    goto :goto_0

    .line 629
    :cond_0
    sget-object v0, Lcom/amazon/kindle/event/PageTurnEvent$EventType;->PAGETURN_END:Lcom/amazon/kindle/event/PageTurnEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 630
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;->PAGE_TURN:Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;

    sget-object v2, Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;->POST_NAV:Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->reportEvent(Lcom/amazon/android/docviewer/KindleDocViewer;Ljava/lang/Boolean;Lcom/amazon/kindle/cs/FastNavigationMetrics$ActionType;Lcom/amazon/kindle/cs/FastNavigationMetrics$NavigationType;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    return-void
.end method

.method public onSystemUiVisibilityChangeEvent(I)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
        topic = "SYSTEM_UI_VISIBILITY_CHANGE"
    .end annotation

    const/4 v0, 0x4

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 517
    :goto_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onOverlaysVisibilityChanged(Z)V

    .line 519
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 520
    invoke-virtual {v2, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onActionBarVisibilityChanged(Z)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 522
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->ACTION_BAR_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 524
    :goto_2
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;

    invoke-direct {v2, p1, p0, v1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1598
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    if-eqz v0, :cond_0

    .line 1599
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ReaderGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public pause()V
    .locals 3

    .line 1819
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->mIsRunning:Z

    if-eqz v0, :cond_2

    .line 1820
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1821
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/Synchronizer;->setEnabled(Z)V

    .line 1824
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 1825
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onActivityPaused()V

    goto :goto_0

    .line 1827
    :cond_1
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->mIsRunning:Z

    :cond_2
    return-void
.end method

.method public populateGestureFactory(Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;)V
    .locals 3

    .line 3254
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->gestureFactory:Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;

    .line 3255
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getGestureHandlerProvider()Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3257
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->getService()Lcom/amazon/kcp/reader/gestures/GestureService;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kcp/reader/gestures/IGestureHandlerProvider;->getGestureHandlers(Lcom/amazon/kcp/reader/ReaderActivity;Lcom/amazon/kcp/reader/gestures/GestureService;)Ljava/util/List;

    move-result-object v0

    .line 3258
    invoke-virtual {p1, v0}, Lcom/amazon/kcp/reader/gestures/GestureHandlerFactory;->addHandlerList(Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 2

    .line 1717
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1718
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->refreshDocView()V

    .line 1719
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1721
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->magnifiedVisibleAreaChanged(Z)V

    .line 1727
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getDisplayableSeekPosition()I

    move-result v0

    .line 1728
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v1, v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->isPlaceholderPosition(Lcom/amazon/android/docviewer/KindleDocViewer;I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1729
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->locationSeeker:Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    if-eqz v1, :cond_2

    .line 1730
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;->setSeekPosition(I)V

    .line 1733
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->fastNavigationController:Lcom/amazon/kindle/nln/ReaderFastNavigationController;

    if-eqz v1, :cond_3

    .line 1734
    invoke-virtual {v1, v0}, Lcom/amazon/kindle/nln/ReaderFastNavigationController;->onRefresh(I)V

    .line 1737
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    if-eqz v0, :cond_4

    .line 1738
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->refreshLayout()V

    .line 1741
    :cond_4
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragmentManager;->readerSettingChangeComplete()V

    return-void
.end method

.method public registerLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V
    .locals 2

    .line 694
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 695
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 696
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 697
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method protected relayoutReaderMenuContainer(ZIIII)V
    .locals 5

    .line 1344
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 1345
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-le v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1346
    :goto_0
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    .line 1351
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    .line 1352
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->lastTouchX:F

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1354
    :goto_1
    iget-object v0, v3, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 1355
    instance-of v2, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    if-eqz v2, :cond_3

    .line 1356
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1358
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen()Z

    move-result v1

    goto :goto_2

    .line 1360
    :cond_2
    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->setIsOnLeftScreen(Z)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    goto :goto_3

    .line 1365
    :cond_4
    iget p2, p1, Landroid/graphics/Rect;->right:I

    :goto_3
    if-eqz v1, :cond_5

    iget p4, p1, Landroid/graphics/Rect;->left:I

    :cond_5
    invoke-virtual {v3, p2, p3, p4, p5}, Landroid/widget/FrameLayout;->layout(IIII)V

    :cond_6
    return-void
.end method

.method protected remeasureReaderMenuContainer(II)V
    .locals 2

    .line 1489
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    .line 1490
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    if-le v0, p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 1491
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz p2, :cond_1

    .line 1495
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 1496
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->measure(II)V

    :cond_1
    return-void
.end method

.method public removeLayoutEventListener(Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;)V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 706
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 707
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public removeOrientationLockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 1689
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 1690
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    .line 1692
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {p1, v1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resume()V
    .locals 3

    .line 1789
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->mIsRunning:Z

    if-nez v0, :cond_4

    .line 1790
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->initOrientationLockManager()V

    .line 1792
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    if-eqz v0, :cond_0

    .line 1795
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    .line 1797
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->synchronizer:Lcom/amazon/kcp/reader/ui/Synchronizer;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1798
    invoke-virtual {v0, v1}, Lcom/amazon/kcp/reader/ui/Synchronizer;->setEnabled(Z)V

    .line 1801
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 1802
    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onActivityResume()V

    goto :goto_0

    .line 1805
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    if-eqz v0, :cond_3

    .line 1806
    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->refreshLayout()V

    .line 1809
    :cond_3
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->mIsRunning:Z

    :cond_4
    return-void
.end method

.method public setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 2

    .line 1004
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 1005
    invoke-interface {v0, p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 1008
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kindle/event/ColorModeChangeEvent;

    invoke-direct {v1, p1}, Lcom/amazon/kindle/event/ColorModeChangeEvent;-><init>(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method public setDecorationsVisible(Z)V
    .locals 0

    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 6

    const-string v0, "ReaderLayout.setDocViewer()"

    const/4 v1, 0x1

    .line 875
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 876
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 878
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->magnifyingGlass:Lcom/amazon/kcp/reader/ui/MagnifyingGlass;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/kcp/reader/ui/MagnifyingGlass;->getMagnifyingView()Lcom/amazon/kcp/reader/ui/MagnifyingView;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 880
    invoke-virtual {v2, v3, v3}, Lcom/amazon/kcp/reader/ui/MagnifyingView;->setMagnifiedView(Landroid/view/View;Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    .line 883
    :cond_1
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2, p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->removeEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 884
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->closeDocView()V

    .line 887
    :cond_2
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    if-eqz p1, :cond_6

    .line 889
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->isClosed()Z

    move-result p1

    if-nez p1, :cond_6

    .line 890
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayExecuted()Z

    move-result p1

    if-nez p1, :cond_3

    .line 891
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setWaypoints()V

    .line 895
    :cond_3
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->accessibilityGapView:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 897
    new-instance v4, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$6;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 914
    :cond_4
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {p1, p0}, Lcom/amazon/android/docviewer/KindleDocViewer;->addEventHandler(Lcom/amazon/android/docviewer/IKindleDocViewerEvents;)V

    .line 919
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->getBookOpenStartPage()I

    move-result p1

    const/4 v4, -0x1

    if-eq p1, v4, :cond_5

    .line 921
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/amazon/kindle/model/content/ILocalBookItem;->setLastPositionRead(I)V

    .line 925
    :cond_5
    new-instance p1, Lcom/amazon/android/docviewer/IntPositionRange;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v4

    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 926
    invoke-interface {v5}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/model/content/ILocalBookItem;->getLastPositionRead()I

    move-result v5

    invoke-direct {p1, v4, v5}, Lcom/amazon/android/docviewer/IntPositionRange;-><init>(II)V

    .line 925
    invoke-static {p1, v1}, Lcom/amazon/kindle/cs/FastNavigationMetrics;->setStartPositionRange(Lcom/amazon/android/docviewer/IPositionRange;Z)V

    .line 929
    invoke-static {}, Lcom/amazon/kcp/font/SystemFontUtils;->getInstance()Lcom/amazon/kcp/font/SystemFontUtils;

    move-result-object p1

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-virtual {p1, v4}, Lcom/amazon/kcp/font/SystemFontUtils;->updateSystemFonts(Lcom/amazon/android/docviewer/KindleDocViewer;)V

    const-string p1, "createDocView()"

    .line 931
    invoke-static {p1, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 932
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-interface {v1, v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->createDocView(Landroid/content/Context;)V

    .line 936
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    .line 937
    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 939
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayExecuted()Z

    move-result p1

    if-nez p1, :cond_6

    .line 940
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->onBindDocViewer()V

    .line 945
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result p1

    if-nez p1, :cond_7

    .line 946
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 949
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    if-eqz p1, :cond_8

    .line 951
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getDrawFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 953
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocView;->getSelectionFilter()Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    goto :goto_1

    .line 955
    :cond_8
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->drawFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 956
    iput-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->selectionFilter:Lcom/amazon/android/docviewer/filter/IViewDrawFilter;

    .line 959
    :goto_1
    invoke-static {v0, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public setGestureListener(Lcom/amazon/kcp/reader/gestures/GestureListener;)V
    .locals 0

    .line 3188
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureListener:Lcom/amazon/kcp/reader/gestures/GestureListener;

    .line 3189
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 1684
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    .line 1685
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {v0, p1}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOrientationLockTemporarilyVisible(ZZ)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1704
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->areOverlaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1708
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->orientationLockManager:Lcom/amazon/kcp/reader/ui/IOrientationLockManager;

    invoke-interface {v0, p1, p2}, Lcom/amazon/kcp/reader/ui/IOrientationLockManager;->setOrientationLockTemporarilyVisible(ZZ)V

    return-void
.end method

.method public setOverlaysVisible(ZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 2

    .line 2277
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlags(Z)I

    move-result v1

    if-ne v0, v1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public setOverlaysVisible(ZZZ)Lcom/amazon/kcp/reader/ui/ReaderLayout;
    .locals 0

    .line 2291
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayFlags(Z)I

    move-result p1

    invoke-direct {p0, p2, p3, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOverlaysVisible(ZZI)Lcom/amazon/kcp/reader/ui/ReaderLayout;

    return-object p0
.end method

.method public setPreserveOverlays(Z)V
    .locals 0

    .line 2255
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->preserveOverlays:Z

    return-void
.end method

.method public setSelectionAccessibilityButtonVisibility(I)V
    .locals 4

    .line 3365
    sget v0, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left_increase:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 3366
    sget v1, Lcom/amazon/kindle/krl/R$id;->accessible_selection_left_decrease:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 3367
    sget v2, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right_increase:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    .line 3368
    sget v3, Lcom/amazon/kindle/krl/R$id;->accessible_selection_right_decrease:I

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 3371
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    if-eqz v1, :cond_1

    .line 3375
    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    if-eqz v2, :cond_2

    .line 3379
    invoke-virtual {v2, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_2
    if-eqz v3, :cond_3

    .line 3383
    invoke-virtual {v3, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method public setStandardOverlaysDisabled(Z)V
    .locals 0

    .line 865
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isStandardOverlaysDisabled:Z

    return-void
.end method

.method public setTitleVisibility(ZZ)V
    .locals 1

    .line 1885
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-nez v0, :cond_0

    return-void

    .line 1889
    :cond_0
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocView()Lcom/amazon/android/docviewer/KindleDocView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1891
    invoke-virtual {v0, p1, p2}, Lcom/amazon/android/docviewer/KindleDocView;->setTitleVisibility(ZZ)V

    :cond_1
    return-void
.end method

.method public setVisibleOverlays(IZ)Z
    .locals 1

    const/4 v0, 0x0

    .line 2390
    invoke-virtual {p0, p1, p2, v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlays(IZZ)Z

    move-result p1

    return p1
.end method

.method public setVisibleOverlays(IZZ)Z
    .locals 5

    .line 2417
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    or-int/lit8 p1, p1, 0x4

    or-int/lit8 p1, p1, 0x3

    .line 2427
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->isStandardOverlaysDisabled:Z

    if-eqz v0, :cond_1

    .line 2428
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->disableStandardOverlays(I)I

    move-result p1

    .line 2431
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->cancelHideOverlaysAfterDelay()V

    .line 2433
    iget v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_2

    .line 2438
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object p2

    invoke-interface {p2, p0, p1, v1}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->setVisibleOverlays(Lcom/amazon/kcp/reader/ui/ReaderLayout;II)V

    return v1

    .line 2442
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlayAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_3

    .line 2443
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 2446
    :cond_3
    iput p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    if-eqz p1, :cond_4

    .line 2450
    invoke-virtual {p0, v1, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setOrientationLockTemporarilyVisible(ZZ)V

    .line 2453
    :cond_4
    invoke-virtual {p0, v0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getOverlayAnimatorSet(IZ)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->overlayAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_5

    .line 2455
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 2457
    :cond_5
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderLayoutCustomizer()Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;

    move-result-object v0

    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setVisibleOverlaysDelay:I

    invoke-interface {v0, p0, p1, v2}, Lcom/amazon/kcp/reader/IReaderLayoutCustomizer;->setVisibleOverlays(Lcom/amazon/kcp/reader/ui/ReaderLayout;II)V

    .line 2458
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerMenuContainer:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isAaBottomSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_1

    :cond_7
    const/4 p1, 0x0

    .line 2461
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    const/4 v3, 0x4

    if-nez p1, :cond_8

    if-nez v0, :cond_8

    .line 2465
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 2466
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayout$9;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderLayout$9;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayout;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {p0, v0, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2472
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    if-eqz v0, :cond_9

    .line 2473
    iget v3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->importantForAccessibilityMode:I

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    goto :goto_2

    .line 2475
    :cond_8
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentView:Lcom/amazon/android/docviewer/KindleDocView;

    if-eqz v0, :cond_9

    .line 2476
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setImportantForAccessibility(I)V

    :cond_9
    :goto_2
    if-nez p3, :cond_d

    .line 2481
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_3
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 2482
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onOverlayVisibilityChanged(Z)V

    goto :goto_3

    :cond_a
    if-eqz p1, :cond_b

    .line 2485
    sget-object p3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    goto :goto_4

    :cond_b
    sget-object p3, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    .line 2487
    :goto_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_c

    sget-object v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_HIDDEN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    if-eq p3, v0, :cond_c

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 2488
    invoke-static {v0}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2489
    :cond_c
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;

    invoke-direct {v0, p3, p0, p2}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;-><init>(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;Lcom/amazon/kcp/reader/ui/ReaderLayout;Z)V

    .line 2490
    sget-object p2, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 2495
    :cond_d
    invoke-direct {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->setAccessibilityGapViewVisible(Z)V

    .line 2499
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_f

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getReadingDirection()Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    move-result-object p1

    sget-object p2, Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;->RIGHT_TO_LEFT:Lcom/amazon/kindle/krx/ui/KRXBookReadingDirection;

    if-ne p1, p2, :cond_f

    .line 2500
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    iget p2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    if-eqz p2, :cond_e

    const/4 v1, 0x1

    :cond_e
    invoke-virtual {p1, v1}, Lcom/amazon/kcp/reader/ReaderActivity;->setPanelsInteractive(Z)V

    :cond_f
    return v2
.end method

.method public setcontentMissingView(Lcom/amazon/kindle/yj/ui/ContentMissingView;)V
    .locals 0

    .line 1073
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->contentMissingView:Lcom/amazon/kindle/yj/ui/ContentMissingView;

    return-void
.end method

.method protected shouldChangeOverlayVisibility(II)Z
    .locals 3

    and-int/2addr p1, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2378
    :goto_0
    iget v2, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->visibleOverlays:I

    and-int/2addr v2, p2

    if-ne v2, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    if-ne p1, p2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public shouldDelayExecuted()Z
    .locals 1

    .line 3716
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->shouldDelayLoadExtraAsset:Z

    return v0
.end method

.method protected shouldDrawSelectionRectsAndHandles()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected shouldInterceptReaderChromeShow()Z
    .locals 2

    .line 3810
    new-instance v0, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;

    invoke-direct {v0}, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;-><init>()V

    .line 3811
    sget-object v1, Lcom/amazon/kcp/reader/ui/ReaderLayout;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 3812
    invoke-virtual {v0}, Lcom/amazon/kindle/event/ReaderChromeInterceptEvent;->getShouldIntercept()Z

    move-result v0

    return v0
.end method

.method public shouldPreserveOverlays()Z
    .locals 1

    .line 2264
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->preserveOverlays:Z

    return v0
.end method

.method public showSelectionHandles(Z)V
    .locals 1

    .line 3731
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->objectSelectionView:Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;

    if-eqz v0, :cond_0

    .line 3732
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/reader/ui/ObjectSelectionLayout;->showSelectionHandles(Z)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1835
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->layoutEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;

    .line 1836
    invoke-virtual {v1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEventListener;->onActivityStop()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public usesReaderGestureDetector()Z
    .locals 1

    .line 845
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderLayout;->readerGestureDetector:Lcom/amazon/kcp/reader/ReaderGestureDetector;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
