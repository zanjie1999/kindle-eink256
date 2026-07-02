.class public Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;
.super Landroid/widget/FrameLayout;
.source "ReaderMenuContainer.java"


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field protected aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private final hideMenuOptionsListener:Landroid/view/GestureDetector$OnGestureListener;

.field private final insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private needToResetViewOptionsSheet:Z

.field protected parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

.field private systemWindowInsets:Landroid/graphics/Rect;

.field private toolbar:Landroid/view/View;

.field private wasViewOptionsResetForSettingsChange:Z

.field protected waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 168
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-interface {p2, v0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 83
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->systemWindowInsets:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 84
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->needToResetViewOptionsSheet:Z

    .line 85
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->wasViewOptionsResetForSettingsChange:Z

    .line 95
    new-instance p2, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$1;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideMenuOptionsListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 140
    new-instance p2, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$2;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    .line 169
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p2

    invoke-interface {p2, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 170
    new-instance p2, Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->hideMenuOptionsListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {p2, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->gestureDetector:Landroid/view/GestureDetector;

    .line 172
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->insetListener:Landroidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->areAnyMenusVisible()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Landroid/graphics/Rect;
    .locals 0

    .line 70
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->systemWindowInsets:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->systemWindowInsets:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$200(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isInLandscapeMode()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)Z
    .locals 0

    .line 70
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->wasViewOptionsResetForSettingsChange:Z

    return p0
.end method

.method static synthetic access$302(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Z)Z
    .locals 0

    .line 70
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->wasViewOptionsResetForSettingsChange:Z

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;Lcom/amazon/kindle/krx/events/UIEvent$UIElement;Z)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->sendUIEvent(Lcom/amazon/kindle/krx/events/UIEvent$UIElement;Z)V

    return-void
.end method

.method private areAnyMenusVisible()Z
    .locals 1

    .line 785
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isWaypointsMenuVisible()Z

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
    return v0
.end method

.method private getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 2

    .line 789
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    if-eqz v0, :cond_0

    .line 790
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 792
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getLocationSeeker()Landroid/view/View;
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getLocationSeeker()Lcom/amazon/kcp/reader/ui/CustomReaderLocationSeeker;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    sget v1, Lcom/amazon/kindle/krl/R$id;->trial_bar_and_scrubber:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private isForceAaSideSheetInLandscapeEnabled()Z
    .locals 4

    .line 589
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isForceAaSideSheetInLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "Debug value to force Aa side sheet is enabled"

    invoke-static {v1, v3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0
.end method

.method private isInLandscapeMode()Z
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getOrientation()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isTablet()Z
    .locals 2

    .line 585
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$bool;->is_tablet:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private layoutViewOptions(IIII)V
    .locals 6

    .line 249
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object p2

    .line 250
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 251
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    instance-of v2, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    if-eqz v2, :cond_4

    .line 252
    invoke-static {p2}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result p3

    if-eqz p3, :cond_1

    const-wide v0, 0x3fe999999999999aL    # 0.8

    goto :goto_1

    .line 253
    :cond_1
    sget-wide v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->TABLET_LANDSCAPE_MODE_WIDTH_PERCENT:D

    .line 254
    :goto_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-double v2, v2

    mul-double v2, v2, v0

    double-to-int v0, v2

    .line 255
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    sub-int v2, p4, v1

    if-eqz p2, :cond_2

    if-eqz p3, :cond_2

    if-lez p1, :cond_2

    .line 257
    iget p2, p2, Landroid/graphics/Rect;->left:I

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    add-int/2addr p1, v0

    .line 260
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    check-cast p3, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    invoke-virtual {p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->isOnLeftScreen()Z

    move-result p3

    if-nez p3, :cond_3

    .line 261
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    sub-int p2, p1, v0

    .line 265
    :cond_3
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v1, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 266
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 267
    iget-object p3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p3, p2, v2, p1, p4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    goto :goto_5

    .line 269
    :cond_4
    instance-of v0, v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    if-eqz v0, :cond_8

    .line 270
    invoke-static {p2}, Lcom/amazon/kindle/displaymask/RectUtils;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result v0

    .line 271
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz p2, :cond_5

    if-eqz v0, :cond_5

    .line 272
    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    sub-int p2, p4, p2

    int-to-double v2, p2

    const-wide v4, 0x3fee666666666666L    # 0.95

    mul-double v2, v2, v4

    double-to-int p2, v2

    goto :goto_3

    .line 273
    :cond_5
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    :goto_3
    sub-int p2, p4, p2

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 277
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    .line 278
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    sget v3, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_fragment_container:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 280
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v3

    if-lez v3, :cond_6

    .line 281
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 282
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    goto :goto_4

    .line 284
    :cond_6
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 289
    :cond_7
    :goto_4
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    sub-int v1, p3, p1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 290
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->layout(IIII)V

    :cond_8
    :goto_5
    return-void
.end method

.method private remeasureViewOptions(II)V
    .locals 6

    .line 213
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 214
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 220
    :cond_1
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    instance-of v3, v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eqz v3, :cond_3

    if-eqz v2, :cond_2

    .line 221
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/RectUtils;->isHorizontal(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 222
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p1

    .line 223
    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p2

    int-to-double p1, p1

    const-wide v0, 0x3fee666666666666L    # 0.95

    mul-double p1, p1, v0

    double-to-int p1, p1

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getMeasuredWidth()I

    move-result p1

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 228
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    int-to-double v0, p2

    const-wide v2, 0x3fe999999999999aL    # 0.8

    mul-double v0, v0, v2

    double-to-int p2, v0

    .line 229
    invoke-static {p2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_1

    .line 231
    :cond_3
    instance-of v1, v1, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;

    if-eqz v1, :cond_5

    if-eqz v2, :cond_4

    .line 232
    invoke-static {v0}, Lcom/amazon/kindle/displaymask/RectUtils;->isVertical(Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 233
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 234
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result p2

    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    int-to-double v0, p1

    .line 235
    sget-wide v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->TABLET_LANDSCAPE_MODE_WIDTH_PERCENT_DUO:D

    mul-double v0, v0, v2

    double-to-int p1, v0

    invoke-static {p1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_1

    .line 239
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    int-to-double v0, p1

    sget-wide v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSideSheet;->TABLET_LANDSCAPE_MODE_WIDTH_PERCENT:D

    mul-double v0, v0, v2

    double-to-int p1, v0

    .line 240
    invoke-static {p1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 244
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->measure(II)V

    return-void
.end method

.method private requiresSideSheet()Z
    .locals 4

    .line 597
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isForceAaSideSheetInLandscapeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 598
    :goto_1
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v3}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v0, :cond_2

    .line 599
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isInLandscapeMode()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private resetViewOptionsSheet()V
    .locals 4

    .line 606
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-nez v0, :cond_0

    return-void

    .line 612
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    .line 613
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 614
    instance-of v3, v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    if-eqz v3, :cond_2

    .line 615
    move-object v3, v2

    check-cast v3, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;

    invoke-virtual {v3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingBottomSheet;->saveBottomSheetBehavior()V

    .line 619
    :cond_2
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 620
    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->destroy()V

    const/4 v2, 0x0

    .line 621
    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 624
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->requiresSideSheet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_side_sheet:I

    invoke-static {v0, v2, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 626
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_side_sheet:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    goto :goto_1

    .line 628
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/amazon/kindle/krl/R$layout;->aa_menu_v2_bottom_sheet:I

    invoke-static {v2, v3, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 629
    sget v2, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bottom_sheet:I

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    iput-object v2, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 630
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 633
    :goto_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_4

    .line 634
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setupViewOptionsOnOpenCloseActions(Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;)V

    .line 636
    :cond_4
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->needToResetViewOptionsSheet:Z

    return-void
.end method

.method private sendUIEvent(Lcom/amazon/kindle/krx/events/UIEvent$UIElement;Z)V
    .locals 1

    .line 780
    new-instance v0, Lcom/amazon/kindle/krx/events/UIEvent;

    invoke-direct {v0, p2, p1}, Lcom/amazon/kindle/krx/events/UIEvent;-><init>(ZLcom/amazon/kindle/krx/events/UIEvent$UIElement;)V

    .line 781
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private setupViewOptionsOnOpenCloseActions(Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 815
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$5;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->setOnOpenedAction(Lkotlin/jvm/functions/Function0;)V

    .line 822
    new-instance v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$6;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$6;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->setOnClosedAction(Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addChildrenForAccessibility(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 707
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    goto :goto_0

    .line 710
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addChildrenForAccessibility(Ljava/util/ArrayList;)V

    :goto_0
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 745
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 749
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 750
    invoke-virtual {p1}, Landroid/view/View;->bringToFront()V

    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 653
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 654
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    .line 657
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_1

    .line 658
    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->destroy()V

    .line 659
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 661
    :cond_1
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 663
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 722
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 725
    invoke-static {}, Lcom/amazon/kindle/displaymask/DisplayMaskManager;->getInstance()Lcom/amazon/kindle/displaymask/DisplayMaskUtils;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/displaymask/DisplayMaskUtils;->getNonFunctionalAreas(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 726
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 728
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 729
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 730
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->isTouchOutside(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->isTouchOutside(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :goto_2
    if-eqz v0, :cond_3

    .line 735
    invoke-virtual {p0, v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    return v2

    .line 739
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Touch event identified "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableViewOptionsSheetResetFlag()V
    .locals 1

    const/4 v0, 0x1

    .line 810
    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->needToResetViewOptionsSheet:Z

    return-void
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->systemWindowInsets:Landroid/graphics/Rect;

    .line 183
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 184
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method protected fixWaypointsPosition()V
    .locals 7

    .line 295
    sget v0, Lcom/amazon/kindle/krl/R$id;->waypoint_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 300
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v1

    .line 301
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    .line 302
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    .line 303
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 306
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->getLocationSeeker()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_1

    .line 308
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    add-int/2addr v5, v6

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    sub-int/2addr v2, v5

    sub-int/2addr v3, v6

    sub-int/2addr v1, v5

    .line 311
    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public getBottomMenuHeight()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getToolBarOverlayAnimator(ZZ)Landroid/animation/Animator;
    .locals 4

    .line 763
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-eqz p2, :cond_2

    .line 768
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    if-eqz p1, :cond_1

    sget v1, Lcom/amazon/kindle/krl/R$integer;->location_seeker_show_animation_duration:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/amazon/kindle/krl/R$integer;->hide_animation_duration:I

    :goto_0
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    xor-int/lit8 v1, p1, 0x1

    int-to-long v2, p2

    .line 769
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/animation/AnimatorFactory;->createDownSlideAnimator(Landroid/view/View;ZJ)Landroid/animation/Animator;

    move-result-object p2

    const/4 v1, 0x1

    .line 770
    invoke-static {v0, v1, p1}, Lcom/amazon/kcp/animation/AnimatorUtils;->createVisibilityChangeListener(Landroid/view/View;ZZ)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p2
.end method

.method public getToolbar()Landroid/view/View;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    return-object v0
.end method

.method public hideAllViewOptionOverlays()Z
    .locals 1

    const/4 v0, 0x0

    .line 343
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    move-result v0

    return v0
.end method

.method protected inflateViewOptionsSheetStub()Z
    .locals 2

    .line 464
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 467
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->requiresSideSheet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 468
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_side_sheet_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    goto :goto_0

    .line 470
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->aa_menu_v2_bottom_sheet_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    :goto_0
    if-eqz v0, :cond_2

    .line 475
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 476
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    .line 477
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->wasRestartedForSettingsChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->onRestartFromSettingChange()V

    .line 484
    iput-boolean v1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->wasViewOptionsResetForSettingsChange:Z

    .line 485
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->addThemesPerfActivityRestartFlag()V

    .line 487
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setupViewOptionsOnOpenCloseActions(Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;)V

    .line 490
    :cond_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method protected inflateWaypointViewStub()Z
    .locals 1

    .line 494
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    if-nez v0, :cond_0

    .line 495
    sget v0, Lcom/amazon/kindle/krl/R$id;->waypoint_view_stub:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    .line 497
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    .line 500
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public initialize(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 2

    .line 334
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    if-nez v0, :cond_0

    .line 337
    sget v0, Lcom/amazon/kindle/krl/R$layout;->toolbar_with_shadow:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    .line 338
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public isAaBottomSheetVisible()Z
    .locals 1

    .line 351
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isAaSettingSheetVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->requiresSideSheet()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAaSettingSheetVisible()Z
    .locals 1

    .line 347
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    return v0
.end method

.method public isReaderContentVertical()Z
    .locals 2

    .line 644
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getPrimaryWritingMode()Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    move-result-object v0

    .line 645
    sget-object v1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_LEFT_TO_RIGHT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/model/content/PrimaryWritingMode;->VERTICAL_RIGHT_TO_LEFT:Lcom/amazon/kindle/model/content/PrimaryWritingMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isViewOptionsVisible()Z
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isWaypointsMenuVisible()Z
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/AnimatableVisibility;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAccessibilityChangedEvent(Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 805
    invoke-static {}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->instance()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v0

    iget-boolean p1, p1, Lcom/amazon/kindle/event/AccessibilityStateChangeEvent;->accessibilityOn:Z

    invoke-virtual {v0, p1}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->setVoiceOverModeEnabled(Z)V

    .line 806
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    return-void
.end method

.method public onConfigChange(Landroid/content/Context;Ljava/lang/Boolean;)V
    .locals 0

    .line 548
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz p1, :cond_0

    .line 550
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->updateViewContext()V

    .line 552
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    .line 554
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 555
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 563
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 568
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz p1, :cond_0

    .line 569
    new-instance p1, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$4;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$4;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .line 198
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 199
    sget v0, Lcom/amazon/kindle/krl/R$id;->toolbar_with_shadow:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->toolbar:Landroid/view/View;

    return-void
.end method

.method public onFontSizeChangeEvent(Lcom/amazon/kcp/reader/FontSizeChangeEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 800
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->enableViewOptionsSheetResetFlag()V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 695
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 696
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 701
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 702
    const-class v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 204
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 207
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    move-result p2

    const/4 p3, 0x0

    invoke-direct {p0, p3, p3, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->layoutViewOptions(IIII)V

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->fixWaypointsPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->remeasureViewOptions(II)V

    .line 193
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 1

    .line 687
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->isViewOptionsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1

    .line 690
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public setOverlaysVisible(ZZ)V
    .locals 1

    .line 512
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getPanelController()Lcom/amazon/kindle/panels/IPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    invoke-interface {v0}, Lcom/amazon/kindle/panels/IPanelController;->isTOCPanelOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 517
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0, p1, p2}, Lcom/amazon/kcp/reader/ReaderActivity;->setActionBarVisibility(ZZ)V

    .line 522
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/amazon/kcp/reader/ui/AnimatableVisibility;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 523
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setWaypointViewVisible(ZZ)Z

    :cond_2
    return-void
.end method

.method public setViewOptionsVisible(Z)Z
    .locals 6

    .line 400
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_7

    .line 402
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_OPEN:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 403
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->needToResetViewOptionsSheet:Z

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 404
    :goto_1
    iget-boolean v3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->needToResetViewOptionsSheet:Z

    if-eqz v3, :cond_2

    .line 405
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->resetViewOptionsSheet()V

    .line 408
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->inflateViewOptionsSheetStub()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 409
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    .line 411
    iget-object v3, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->getReaderLayout()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 413
    invoke-virtual {v3}, Lcom/amazon/kcp/reader/ui/ReaderLayout;->getReaderViewForInit()Landroid/view/View;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$id;->orientation_lock_view:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 415
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->setOrientationLockView(Landroid/view/View;)V

    :cond_3
    if-nez p1, :cond_4

    .line 419
    iget-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->wasViewOptionsResetForSettingsChange:Z

    if-eqz p1, :cond_5

    :cond_4
    const/4 v1, 0x1

    .line 420
    :cond_5
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;

    invoke-direct {v4, p0, v1, v0, v3}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$3;-><init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;ZZLcom/amazon/kcp/reader/ui/ReaderLayout;)V

    invoke-virtual {p1, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_6
    return v1

    .line 446
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz p1, :cond_9

    if-eqz v0, :cond_8

    .line 448
    sget-object p1, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->AA_MENU_CLOSE:Lcom/amazon/kindle/performance/KindlePerformanceConstants;

    invoke-virtual {p1}, Lcom/amazon/kindle/performance/KindlePerformanceConstants;->getMetricString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 449
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;->hide()V

    :cond_8
    return v0

    :cond_9
    return v1
.end method

.method public setViewOptionsVisible(ZZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 377
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    move-result p1

    return p1
.end method

.method public setViewOptionsVisible(ZZZ)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 391
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->setViewOptionsVisible(Z)Z

    move-result p1

    return p1
.end method

.method public setWaypointViewVisible(ZZ)Z
    .locals 3

    .line 669
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->parentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getWaypointsModel()Lcom/amazon/kindle/readingprogress/waypoints/WaypointsModel;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 672
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->inflateWaypointViewStub()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 673
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    invoke-interface {p1, p2}, Lcom/amazon/kcp/reader/ui/AnimatableVisibility;->show(Z)Z

    move-result p1

    return p1

    .line 676
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->waypointView:Lcom/amazon/kindle/readingprogress/waypoints/IWaypointMenuView;

    if-eqz p1, :cond_2

    .line 677
    invoke-interface {p1, v1}, Lcom/amazon/kcp/reader/ui/AnimatableVisibility;->hide(Z)Z

    move-result p1

    return p1

    :cond_2
    return v2
.end method
