.class public Lcom/amazon/kcp/reader/ui/ActionBarDecoration;
.super Landroid/widget/LinearLayout;
.source "ActionBarDecoration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/ui/ActionBarDecoration$ActionBarDecorationProviderAddedEvent;
    }
.end annotation


# static fields
.field private static ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ANIMATION_TRANSITION_TIME:I = 0x190

.field private static final INITIAL_HIDE_DELAY:I = 0x3e8

.field private static INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/android/docviewer/KindleDocViewer;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kcp/reader/ui/ActionBarDecoration;",
            ">;>;"
        }
    .end annotation
.end field

.field private static KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private static MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected actionBarDecoration:Landroid/widget/LinearLayout;

.field private bottomBorder:Landroid/view/View;

.field private currentDecoration:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amazon/kindle/krx/ui/ColorCodedView;",
            ">;"
        }
    .end annotation
.end field

.field private docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field private hideUpsellButton:Landroid/widget/ImageButton;

.field protected isDecorationHiddenByUser:Z

.field private onFirstShowRunnable:Ljava/lang/Runnable;

.field private volatile shouldInterceptChildTouchEvents:Z

.field protected titleContainer:Landroid/view/View;

.field private upsellAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private useLayoutCache:Z

.field private volatile userHasTappedButton:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    const-class v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->TAG:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->INSTANCES:Ljava/util/Map;

    .line 74
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 138
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    const/4 p1, 0x0

    .line 83
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->userHasTappedButton:Z

    .line 84
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->shouldInterceptChildTouchEvents:Z

    .line 85
    new-instance p2, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$1;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    .line 96
    new-instance p2, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$2;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->upsellAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 p2, 0x1

    .line 133
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    .line 135
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->useLayoutCache:Z

    .line 139
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Lcom/amazon/android/docviewer/KindleDocViewer;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)Z
    .locals 0

    .line 68
    iget-boolean p0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->userHasTappedButton:Z

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->userHasTappedButton:Z

    return p1
.end method

.method static synthetic access$202(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)Z
    .locals 0

    .line 68
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->shouldInterceptChildTouchEvents:Z

    return p1
.end method

.method static synthetic access$300()Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 1

    .line 68
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setupDecoration()V

    return-void
.end method

.method public static addActionBarDecorationProvider(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 610
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addActionBarDecorationProvider "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 613
    :cond_0
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-eqz v0, :cond_1

    .line 617
    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->register(Lcom/amazon/kindle/krx/providers/IProvider;)V

    .line 618
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->MESSAGE_QUEUE:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$ActionBarDecorationProviderAddedEvent;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$ActionBarDecorationProviderAddedEvent;-><init>(Lcom/amazon/kindle/krx/providers/ISortableProvider;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void

    .line 614
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setActionBarProviderRegistry not called?"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getActionBarDecorationProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;"
        }
    .end annotation

    .line 602
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-object v0
.end method

.method private getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;
    .locals 2

    .line 575
    invoke-static {}, Lcom/amazon/kcp/debug/DarkModeUtils;->isPhaseTwoEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->BLACK:Lcom/amazon/kindle/krx/ui/ColorMode;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 580
    sget-object v1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 582
    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    goto :goto_1

    .line 584
    :cond_3
    sget-object v0, Lcom/amazon/kindle/krx/ui/ColorMode;->WHITE:Lcom/amazon/kindle/krx/ui/ColorMode;

    :goto_1
    return-object v0
.end method

.method public static getInstance()Lcom/amazon/kcp/reader/ui/ActionBarDecoration;
    .locals 3

    .line 304
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 305
    invoke-static {v0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    .line 306
    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 308
    sget-object v2, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->INSTANCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;

    :cond_0
    return-object v1
.end method

.method private prepareButtonAnimator(Z)Landroid/view/ViewPropertyAnimator;
    .locals 5

    .line 693
    sget v0, Lcom/amazon/kindle/krl/R$id;->hide_decoration_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x43340000    # 180.0f

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/high16 v3, 0x43340000    # 180.0f

    .line 698
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setRotationX(F)V

    .line 700
    sget v0, Lcom/amazon/kindle/krl/R$id;->hide_decoration_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x190

    .line 701
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_2

    const/high16 v1, 0x43340000    # 180.0f

    .line 702
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    return-object v0
.end method

.method private prepareTitleDecorationAnimation(Z)Landroid/view/ViewPropertyAnimator;
    .locals 7

    .line 739
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainer:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 744
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 745
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 746
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    const/high16 v3, -0x3d4c0000    # -90.0f

    if-eqz p1, :cond_2

    const/high16 v4, -0x3d4c0000    # -90.0f

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    .line 747
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationX(F)V

    .line 750
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_3

    const/4 v4, 0x0

    .line 751
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 754
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    .line 755
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 756
    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_5

    goto :goto_3

    :cond_5
    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 757
    :goto_3
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    if-nez p1, :cond_6

    .line 760
    new-instance p1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$8;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Landroid/view/View;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_6
    return-object v4
.end method

.method private prepareUpsellAnimator(Z)Landroid/view/ViewPropertyAnimator;
    .locals 7

    .line 708
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    .line 710
    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 711
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setPivotX(F)V

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    const/high16 v3, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 712
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    const/high16 v3, 0x42b40000    # 90.0f

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/high16 v4, 0x42b40000    # 90.0f

    .line 713
    :goto_1
    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationX(F)V

    const/4 v4, 0x0

    .line 714
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 716
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x190

    .line 717
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 718
    iget-object v5, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->upsellAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_2

    const/4 v2, 0x0

    .line 719
    :cond_2
    invoke-virtual {v4, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_3

    const/high16 v1, 0x42b40000    # 90.0f

    .line 720
    :cond_3
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    if-eqz p1, :cond_4

    .line 723
    new-instance p1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$7;

    invoke-direct {p1, p0, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$7;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Landroid/view/View;)V

    invoke-virtual {v4, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_4
    return-object v4

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method private removeViewFromParent(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 560
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 561
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 562
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private replaceView(ZLcom/amazon/kindle/krx/ui/ColorCodedView;Landroid/widget/LinearLayout;)Z
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 530
    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    .line 531
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 536
    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->removeViewFromParent(Landroid/view/View;)V

    .line 538
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->getCurrentColorMode()Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->setColorCode(Lcom/amazon/kindle/krx/ui/ColorMode;)V

    .line 539
    invoke-virtual {p2}, Lcom/amazon/kindle/krx/ui/ColorCodedView;->shouldSetDefaultPadding()Z

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updatePadding(Landroid/widget/LinearLayout;Z)V

    .line 540
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return p1
.end method

.method public static setActionBarDecorationProviderRegistry(Lcom/amazon/kindle/krx/providers/IProviderRegistry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/providers/IProviderRegistry<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            "Lcom/amazon/kindle/krx/providers/ISortableProvider<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;>;)V"
        }
    .end annotation

    .line 593
    sput-object p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    return-void
.end method

.method public static setKindleReaderSDK(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 626
    sput-object p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private setupDecoration()V
    .locals 2

    .line 360
    new-instance v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$4;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$4;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V

    .line 366
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 367
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 369
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private titleContainerExists()Z
    .locals 3

    .line 654
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainer:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 658
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$id;->title_container:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private updatePadding(Landroid/widget/LinearLayout;Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v1, Lcom/amazon/kindle/krl/R$dimen;->action_bar_decoration_container_padding_left:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p2

    .line 549
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/amazon/kindle/krl/R$dimen;->action_bar_decoration_container_padding_right:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    const/4 v1, 0x0

    .line 551
    :goto_0
    invoke-virtual {p1, p2, v0, v1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method protected calculatePaddingTop()I
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    .line 242
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 244
    sget v2, Lcom/amazon/kindle/krl/R$dimen;->nln_toolbar_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    if-eqz v0, :cond_0

    .line 246
    sget v0, Lcom/amazon/kindle/krl/R$dimen;->nln_toolbar_shadow_height:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    add-int/2addr v2, v0

    return v2
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 223
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->shouldInterceptChildTouchEvents:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public hasDecoration()Z
    .locals 3

    .line 410
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-eq v0, v1, :cond_1

    invoke-virtual {p0, v2, v2}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateDecorationDecorators(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 192
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 193
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateChildDimensions()V

    .line 194
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateActionBar()V

    .line 196
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/krl/R$dimen;->page_flip_title_space:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 197
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 285
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->useLayoutCache:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 286
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 287
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 289
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    .line 291
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 292
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    .line 294
    :cond_1
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->INSTANCES:Ljava/util/Map;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iput-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    .line 144
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v0

    .line 147
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 149
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    .line 151
    sget-object v1, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->INSTANCES:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_0
    sget v0, Lcom/amazon/kindle/krl/R$id;->action_bar_decoration_container:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    .line 155
    sget v0, Lcom/amazon/kindle/krl/R$id;->hide_decoration_button:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    .line 156
    sget v0, Lcom/amazon/kindle/krl/R$id;->action_bar_container_bottom_border:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->bottomBorder:Landroid/view/View;

    .line 158
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v0}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v0

    .line 159
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 163
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_4

    .line 166
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 167
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    sget v5, Lcom/amazon/kindle/krl/R$attr;->chromeBackgroundColor:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 169
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 170
    iget-object v4, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_3

    .line 171
    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setBackgroundColor(I)V

    .line 174
    :cond_3
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 175
    invoke-virtual {v1}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v4, Lcom/amazon/kindle/krl/R$attr;->csTitleContainerBottomBorderColor:I

    invoke-virtual {v1, v4, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 176
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->bottomBorder:Landroid/view/View;

    iget v0, v0, Landroid/util/TypedValue;->data:I

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 177
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->bottomBorder:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateChildDimensions()V

    .line 182
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x16

    if-lt v0, v1, :cond_5

    .line 183
    sget v0, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAccessibilityTraversalAfter(I)V

    .line 184
    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 187
    :cond_5
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public onProviderAdded(Lcom/amazon/kcp/reader/ui/ActionBarDecoration$ActionBarDecorationProviderAddedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 261
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setupDecoration()V

    return-void
.end method

.method public onReaderLayoutEvent(Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 268
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 269
    :goto_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getEventType()Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;->CHROME_SHOWN:Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent$EventType;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/ReaderLayoutEvent;->getPublisher()Lcom/amazon/kcp/reader/ui/ReaderLayout;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 278
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    :cond_2
    :goto_1
    return-void
.end method

.method public onReaderModeChangedEvent(Lcom/amazon/kindle/krx/events/ReaderModeChangedEvent;)V
    .locals 0
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 352
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateActionBar()V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    .line 253
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onVisibilityChanged(Landroid/view/View;I)V

    if-nez p2, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->setupDecoration()V

    :cond_0
    return-void
.end method

.method public setDocViewer(Lcom/amazon/android/docviewer/KindleDocViewer;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    return-void
.end method

.method public setUseLayoutCache(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->useLayoutCache:Z

    return-void
.end method

.method protected final toggleDecorationVisibility(Ljava/lang/Runnable;)V
    .locals 1

    .line 663
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainerExists()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 667
    :cond_0
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    .line 668
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateDecorationVisibility(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateActionBar()V
    .locals 2

    .line 319
    new-instance v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$3;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;)V

    .line 343
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 344
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->submitOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 346
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method protected updateChildDimensions()V
    .locals 4

    .line 228
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v0

    .line 229
    invoke-virtual {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->calculatePaddingTop()I

    move-result v1

    .line 230
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v2

    .line 231
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v3

    .line 227
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected updateDecorationDecorators(ZZ)Z
    .locals 4

    .line 384
    sget-object v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->KINDLE_READER_SDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object v2, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    if-nez v2, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 388
    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const-string v3, "Getting actionbar decorators"

    .line 389
    invoke-static {v3, v2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 390
    sget-object v2, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->ACTION_BAR_DECORATION_PROVIDER_REGISTRY:Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->getAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    .line 391
    invoke-static {v3, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 393
    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->updateShownDecoration(Ljava/util/Collection;ZZ)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method protected updateDecorationVisibility(Ljava/lang/Runnable;)V
    .locals 3

    .line 677
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    .line 679
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->prepareButtonAnimator(Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 680
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->prepareTitleDecorationAnimation(Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 681
    invoke-direct {p0, v0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->prepareUpsellAnimator(Z)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 684
    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 685
    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 686
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 687
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method protected updateShownDecoration(Ljava/util/Collection;ZZ)Z
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/kindle/krx/ui/IActionBarDecoration;",
            ">;ZZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x1

    const-string v2, "UpdatingShownDecoration"

    .line 425
    invoke-static {v2, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 426
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 427
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateShownDecoration "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 431
    :cond_0
    iget-object v3, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    .line 432
    iget-object v4, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    const/4 v5, 0x0

    if-eqz v4, :cond_12

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    if-eqz v4, :cond_12

    if-nez v3, :cond_1

    goto/16 :goto_5

    .line 438
    :cond_1
    iget-object v4, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v4}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v4

    .line 439
    iget-object v6, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-static {v6}, Lcom/amazon/kindle/nln/pageflip/NLNUtils;->shouldUseNonLinearNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v6

    .line 440
    iget-object v7, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    invoke-interface {v7}, Lcom/amazon/android/docviewer/KindleDocViewer;->getContinuousScrollEnabled()Z

    move-result v7

    .line 441
    invoke-interface {v4}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->isFalkorEpisode()Z

    move-result v4

    const/16 v8, 0x8

    const/4 v9, 0x0

    if-nez v6, :cond_2

    if-nez v7, :cond_2

    .line 443
    iput-object v9, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    .line 444
    iget-object v10, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 445
    iget-object v10, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->bottomBorder:Landroid/view/View;

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    .line 446
    iput-boolean v5, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    .line 451
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/amazon/kindle/krx/ui/IActionBarDecoration;

    .line 452
    sget-object v13, Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;->CENTER:Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;

    invoke-interface {v12, v13}, Lcom/amazon/kindle/krx/ui/IActionBarDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/IActionBarDecoration$ActionBarDecorationPosition;)Lcom/amazon/kindle/krx/ui/ColorCodedView;

    move-result-object v13

    .line 453
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    .line 454
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "decorator: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " decoration: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_4
    if-eqz v13, :cond_5

    const/4 v12, 0x1

    goto :goto_0

    :cond_5
    const/4 v12, 0x0

    :goto_0
    or-int/2addr v11, v12

    if-eqz v13, :cond_6

    .line 458
    iget-object v12, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-ne v13, v12, :cond_6

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_3

    if-eqz v13, :cond_3

    .line 463
    iget-object v12, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    if-eq v13, v12, :cond_3

    if-nez v6, :cond_8

    if-eqz v7, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    .line 464
    :cond_8
    :goto_1
    invoke-direct {v0, v1, v13, v3}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->replaceView(ZLcom/amazon/kindle/krx/ui/ColorCodedView;Landroid/widget/LinearLayout;)Z

    move-result v1

    goto :goto_3

    :cond_9
    :goto_2
    const/4 v1, 0x0

    :goto_3
    if-eqz p2, :cond_11

    if-eqz v11, :cond_e

    .line 471
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v10

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v10

    sget v12, Lcom/amazon/kindle/krl/R$id;->book_toolbar:I

    invoke-virtual {v10, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 477
    iget-object v10, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    if-nez v6, :cond_a

    iget-object v12, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    .line 478
    invoke-static {v12}, Lcom/amazon/kcp/debug/FastNavigationUtils;->shouldShowFastNavigation(Lcom/amazon/android/docviewer/KindleDocViewer;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_a
    if-nez v4, :cond_b

    const/4 v8, 0x0

    .line 477
    :cond_b
    invoke-virtual {v10, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 479
    iget-object v4, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;

    invoke-direct {v8, v0, v7}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$5;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Z)V

    invoke-virtual {v4, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    iget-object v4, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_c

    if-eqz p3, :cond_c

    .line 492
    iput-object v9, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->onFirstShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v6, 0x3e8

    .line 493
    invoke-virtual {v0, v4, v6, v7}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    :cond_c
    if-eqz p3, :cond_d

    if-eqz v1, :cond_d

    .line 494
    iget-boolean v1, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    if-eqz v1, :cond_d

    .line 496
    invoke-virtual {v0, v9}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->toggleDecorationVisibility(Ljava/lang/Runnable;)V

    goto :goto_4

    :cond_d
    if-eqz p3, :cond_11

    if-nez v6, :cond_11

    .line 498
    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4

    .line 502
    :cond_e
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    .line 506
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->currentDecoration:Ljava/lang/ref/WeakReference;

    .line 507
    iget-object v1, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    if-nez v7, :cond_f

    if-eqz v6, :cond_10

    .line 509
    :cond_f
    iget-boolean v4, v0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->isDecorationHiddenByUser:Z

    if-nez v4, :cond_10

    .line 510
    new-instance v3, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;

    invoke-direct {v3, v0, v1}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration$6;-><init>(Lcom/amazon/kcp/reader/ui/ActionBarDecoration;Landroid/view/View;)V

    invoke-virtual {v0, v3}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->toggleDecorationVisibility(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 518
    :cond_10
    invoke-virtual {v1, v8}, Landroid/view/View;->setVisibility(I)V

    const/4 v1, 0x4

    .line 519
    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 523
    :cond_11
    :goto_4
    invoke-static {v2, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v11

    .line 434
    :cond_12
    :goto_5
    invoke-static {v2, v5}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return v5
.end method

.method protected updateViewsToReflectDecorationHiddenState(Z)V
    .locals 4

    .line 777
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->actionBarDecoration:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_6

    .line 778
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainerExists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_5

    .line 783
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->hideUpsellButton:Landroid/widget/ImageButton;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    const/high16 v3, 0x43340000    # 180.0f

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setRotationX(F)V

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/high16 v3, 0x3f800000    # 1.0f

    .line 786
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    if-eqz p1, :cond_3

    const/high16 v3, 0x42b40000    # 90.0f

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    .line 787
    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setRotationX(F)V

    .line 790
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 791
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    .line 792
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ActionBarDecoration;->titleContainer:Landroid/view/View;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    const/high16 v2, -0x3d4c0000    # -90.0f

    :goto_4
    invoke-virtual {v0, v2}, Landroid/view/View;->setRotationX(F)V

    :cond_6
    :goto_5
    return-void
.end method
