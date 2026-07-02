.class public Lcom/amazon/device/ads/AdLayout;
.super Landroid/widget/FrameLayout;
.source "AdLayout.java"

# interfaces
.implements Lcom/amazon/device/ads/Ad;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;,
        Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;
    }
.end annotation


# static fields
.field private static final CONTENT_DESCRIPTION_AD_LAYOUT:Ljava/lang/String; = "adLayoutObject"

.field private static final LOGTAG:Ljava/lang/String;

.field private static threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;


# instance fields
.field private activityRootView:Landroid/view/View;

.field private adController:Lcom/amazon/device/ads/AdController;

.field private final adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

.field private adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

.field private final adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

.field private final adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

.field private final adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

.field private adSize:Lcom/amazon/device/ads/AdSize;

.field private adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

.field private attached:Z

.field private autoShow:Z

.field private final context:Landroid/content/Context;

.field private currentDestroyable:Lcom/amazon/device/ads/Destroyable;

.field private currentView:Landroid/view/View;

.field private hasRegisterBroadcastReciever:Z

.field private isDestroyed:Z

.field private isInForeground:Z

.field private isInitialized:Z

.field private isParentViewMissingAtLoadTime:Z

.field private lastVisibility:I

.field private final logger:Lcom/amazon/device/ads/MobileAdsLogger;

.field private final loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

.field private needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private properties:Lcom/amazon/device/ads/AdProperties;

.field private screenStateReceiver:Landroid/content/BroadcastReceiver;

.field private shouldDisableWebViewHardwareAcceleration:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 65
    const-class v0, Lcom/amazon/device/ads/AdLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    .line 130
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    sput-object v0, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 131
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3c

    invoke-virtual {v0, v2, v3, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->setKeepAliveTime(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 141
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    invoke-direct {p0, p1, v0}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 201
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .line 241
    new-instance v4, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v5, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v5}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v6

    new-instance v7, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v7}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 9

    .line 251
    new-instance v5, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    move-object v4, p4

    invoke-direct {v5, p4}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 1

    .line 262
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, 0x0

    .line 79
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    const/16 v0, 0x8

    .line 81
    iput v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean p3, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 264
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 265
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 266
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 267
    sget-object p1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p4, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 268
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 269
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 270
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 271
    iput-object p8, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8

    .line 210
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 2

    .line 220
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    const/16 v1, 0x8

    .line 81
    iput v1, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 222
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 223
    invoke-direct {p0, p2}, Lcom/amazon/device/ads/AdLayout;->determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 224
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 225
    sget-object p1, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, p1}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 226
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 227
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 228
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 229
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)V
    .locals 7

    .line 151
    new-instance v3, Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    invoke-direct {v3}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;-><init>()V

    new-instance v4, Lcom/amazon/device/ads/AdControllerFactory;

    invoke-direct {v4}, Lcom/amazon/device/ads/AdControllerFactory;-><init>()V

    invoke-static {}, Lcom/amazon/device/ads/AdRegistration;->getAmazonAdRegistrationExecutor()Lcom/amazon/device/ads/AdRegistrationExecutor;

    move-result-object v5

    new-instance v6, Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {v6}, Lcom/amazon/device/ads/AdLoadStarter;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 8

    .line 160
    new-instance v4, Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-direct {v4, p3}, Lcom/amazon/device/ads/AdListenerExecutorFactory;-><init>(Lcom/amazon/device/ads/MobileAdsLoggerFactory;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/device/ads/AdLayout;-><init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;Lcom/amazon/device/ads/MobileAdsLoggerFactory;Lcom/amazon/device/ads/AdListenerExecutorFactory;Lcom/amazon/device/ads/AdControllerFactory;Lcom/amazon/device/ads/AdRegistrationExecutor;Lcom/amazon/device/ads/AdLoadStarter;)V
    .locals 2

    .line 170
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 80
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    const/16 v1, 0x8

    .line 81
    iput v1, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    .line 82
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 84
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    const/4 v1, 0x0

    .line 85
    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    .line 87
    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 89
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    .line 91
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    const/4 v1, 0x1

    .line 94
    iput-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    .line 119
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 171
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    .line 172
    iput-object p2, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    .line 173
    iput-object p3, p0, Lcom/amazon/device/ads/AdLayout;->loggerFactory:Lcom/amazon/device/ads/MobileAdsLoggerFactory;

    .line 174
    sget-object p2, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-virtual {p3, p2}, Lcom/amazon/device/ads/MobileAdsLoggerFactory;->createMobileAdsLogger(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    move-result-object p2

    iput-object p2, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    .line 175
    iput-object p4, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    .line 176
    iput-object p5, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    .line 177
    iput-object p6, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    .line 178
    iput-object p7, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    .line 181
    invoke-static {}, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->getDefaultPreferences()Landroid/content/SharedPreferences;

    move-result-object p2

    if-nez p2, :cond_0

    .line 182
    invoke-static {p1}, Lcom/amazon/device/ads/ApplicationDefaultPreferences;->initialize(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdController;
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/device/ads/AdLayout;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    return-void
.end method

.method static synthetic access$300(Lcom/amazon/device/ads/AdLayout;)Landroid/view/View;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/AdProperties;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/device/ads/AdLayout;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object p0
.end method

.method static synthetic access$402(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdProperties;)Lcom/amazon/device/ads/AdProperties;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->properties:Lcom/amazon/device/ads/AdProperties;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/device/ads/AdLayout;)Z
    .locals 0

    .line 52
    iget-boolean p0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    return p0
.end method

.method static synthetic access$600(Lcom/amazon/device/ads/AdLayout;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object p0
.end method

.method static synthetic access$702(Lcom/amazon/device/ads/AdLayout;Lcom/amazon/device/ads/AdController;)Lcom/amazon/device/ads/AdController;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/device/ads/AdLayout;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private collapseAd()V
    .locals 2

    .line 584
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    new-instance v0, Lcom/amazon/device/ads/AdLayout$2;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$2;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method private createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;
    .locals 1

    .line 485
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adControllerFactory:Lcom/amazon/device/ads/AdControllerFactory;

    invoke-virtual {v0, p2, p1}, Lcom/amazon/device/ads/AdControllerFactory;->buildAdController(Landroid/content/Context;Lcom/amazon/device/ads/AdSize;)Lcom/amazon/device/ads/AdController;

    move-result-object p1

    return-object p1
.end method

.method private determineAdSize(Landroid/util/AttributeSet;)Lcom/amazon/device/ads/AdSize;
    .locals 5

    const-string v0, "adSize"

    const-string v1, "http://schemas.android.com/apk/lib/com.amazon.device.ads"

    .line 315
    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 319
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "http://schemas.android.com/apk/res/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {p1, v1, v0}, Lcom/amazon/device/ads/AdLayout;->getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 323
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DEPRECATED - Please use the XML namespace \"http://schemas.android.com/apk/lib/com.amazon.device.ads\" for specifying AdLayout properties."

    invoke-virtual {p1, v0, v4, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 324
    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "custom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Using \"custom\" or \"CUSTOM\" for the \"adSize\" property is no longer supported. Please specifiy a size or remove the property to use Auto Ad Size."

    .line 327
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v1, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :cond_1
    :goto_0
    invoke-static {v1}, Lcom/amazon/device/ads/AdLayout;->parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    return-object p1
.end method

.method private fireViewableEvent()V
    .locals 1

    .line 304
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->fireViewableEvent()V

    :cond_0
    return-void
.end method

.method private getAdController()Lcom/amazon/device/ads/AdController;
    .locals 1

    .line 442
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->initializeIfNecessary()V

    .line 443
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_0

    .line 446
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 448
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    return-object v0
.end method

.method private static getAttributeValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 453
    invoke-interface {p0, p1, p2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initializeAdController()V
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-nez v0, :cond_1

    .line 421
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    if-nez v0, :cond_0

    .line 423
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/AdLayout;->createAdController(Lcom/amazon/device/ads/AdSize;Landroid/content/Context;)Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setAdController(Lcom/amazon/device/ads/AdController;)V

    .line 430
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    iget-boolean v1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    :cond_1
    return-void
.end method

.method private isReadyToLoad()Z
    .locals 2

    .line 784
    sget-object v0, Lcom/amazon/device/ads/AdState;->READY_TO_LOAD:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

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

.method private isReadyToShow()Z
    .locals 2

    .line 789
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private loadAdWhenParentViewMissing()Z
    .locals 3

    .line 863
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 865
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v2, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_NULL_LAYOUT_PARAMS:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    const-string v0, "Can\'t load an ad because layout parameters are blank. Use setLayoutParams() to specify dimensions for this AdLayout."

    .line 866
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0xb

    .line 873
    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 875
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setActivityRootView()V

    .line 876
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Ad load failed because root view could not be obtained from the activity."

    .line 880
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    return v1

    .line 886
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 888
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Activity root view layout is requested."

    invoke-virtual {v0, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 889
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    .line 890
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setOnLayoutChangeListenerForRoot()V

    return v1

    .line 895
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    return v2

    .line 902
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setFloatingWindowDimensions()V

    return v2
.end method

.method private onRequestError(Ljava/lang/String;)V
    .locals 1

    .line 1116
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->onRequestError(Ljava/lang/String;)V

    return-void
.end method

.method private static parseAdSize(Ljava/lang/String;)Lcom/amazon/device/ads/AdSize;
    .locals 3

    .line 457
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO:Lcom/amazon/device/ads/AdSize;

    if-eqz p0, :cond_2

    .line 460
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "autonoscale"

    .line 461
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 463
    sget-object v0, Lcom/amazon/device/ads/AdSize;->SIZE_AUTO_NO_SCALE:Lcom/amazon/device/ads/AdSize;

    goto :goto_1

    :cond_0
    const-string v1, "auto"

    .line 465
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v0, "x"

    .line 468
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 471
    array-length v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 473
    aget-object v0, p0, v2

    invoke-static {v0, v2}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    .line 474
    aget-object p0, p0, v1

    invoke-static {p0, v2}, Lcom/amazon/device/ads/NumberUtils;->parseInt(Ljava/lang/String;I)I

    move-result v2

    move p0, v2

    move v2, v0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 477
    :goto_0
    new-instance v0, Lcom/amazon/device/ads/AdSize;

    invoke-direct {v0, v2, p0}, Lcom/amazon/device/ads/AdSize;-><init>(II)V

    :cond_2
    :goto_1
    return-object v0
.end method

.method private registerScreenStateBroadcastReceiver()V
    .locals 3

    .line 510
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 515
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 516
    new-instance v0, Lcom/amazon/device/ads/AdLayout$1;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$1;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    .line 528
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_PRESENT"

    .line 529
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private setAdController(Lcom/amazon/device/ads/AdController;)V
    .locals 1

    .line 436
    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    .line 437
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/AdController;->setCallback(Lcom/amazon/device/ads/AdControlCallback;)V

    return-void
.end method

.method private setWindowDimensions()V
    .locals 3

    const/4 v0, 0x1

    .line 990
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParam(Z)I

    move-result v0

    const/4 v1, 0x0

    .line 991
    invoke-virtual {p0, v1}, Lcom/amazon/device/ads/AdLayout;->resolveLayoutParam(Z)I

    move-result v1

    if-gtz v0, :cond_0

    if-lez v1, :cond_1

    .line 995
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    :cond_1
    return-void
.end method

.method private startAdLoadUponLayout()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adTargetingOptions:Lcom/amazon/device/ads/AdTargetingOptions;

    .line 632
    new-instance v1, Lcom/amazon/device/ads/AdSlot;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/amazon/device/ads/AdSlot;-><init>(Lcom/amazon/device/ads/AdController;Lcom/amazon/device/ads/AdTargetingOptions;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/AdSlot;->setDeferredLoad(Z)Lcom/amazon/device/ads/AdSlot;

    .line 633
    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->adLoadStarter:Lcom/amazon/device/ads/AdLoadStarter;

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v4

    new-array v2, v2, [Lcom/amazon/device/ads/AdSlot;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    invoke-virtual {v3, v4, v0, v2}, Lcom/amazon/device/ads/AdLoadStarter;->loadAds(ILcom/amazon/device/ads/AdTargetingOptions;[Lcom/amazon/device/ads/AdSlot;)V

    .line 634
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAndResetIsPrepared()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Could not load ad on layout."

    .line 636
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private unregisterScreenStateBroadcastReceiver()V
    .locals 2

    .line 534
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 536
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->hasRegisterBroadcastReciever:Z

    .line 537
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->screenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method adFailed(Lcom/amazon/device/ads/AdError;)V
    .locals 1

    .line 909
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->adFailed(Lcom/amazon/device/ads/AdError;)V

    return-void
.end method

.method adShown()V
    .locals 1

    .line 922
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->adShown()V

    return-void
.end method

.method bypassAdRenderingProcess()V
    .locals 2

    .line 916
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->RENDERING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->setAdState(Lcom/amazon/device/ads/AdState;)V

    .line 917
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    const-string v1, "custom-render"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdController;->adRendered(Ljava/lang/String;)V

    return-void
.end method

.method createAdControlCallback()Lcom/amazon/device/ads/AdControlCallback;
    .locals 1

    .line 490
    new-instance v0, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$AdLayoutAdControlCallback;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    return-object v0
.end method

.method deferAdLoadToLayoutEvent()V
    .locals 1

    const/4 v0, 0x1

    .line 1060
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->setNeedsToLoadAdOnLayout(Z)V

    .line 1061
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->scheduleTaskForCheckingIfLayoutHasRun()V

    return-void
.end method

.method failLoadIfLayoutHasNotRun()V
    .locals 2

    const/4 v0, 0x0

    .line 1079
    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1081
    invoke-static {}, Lcom/amazon/device/ads/Metrics;->getInstance()Lcom/amazon/device/ads/Metrics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/Metrics;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_FAILED_LAYOUT_NOT_RUN:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->incrementMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    const-string v0, "Can\'t load an ad because the view size cannot be determined."

    .line 1082
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/AdLayout;->onRequestError(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method getActivityRootViewDimension(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1183
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    :goto_0
    return p1
.end method

.method getAdData()Lcom/amazon/device/ads/AdData;
    .locals 1

    .line 500
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdData()Lcom/amazon/device/ads/AdData;

    move-result-object v0

    return-object v0
.end method

.method getAdListenerExecutor()Lcom/amazon/device/ads/AdListenerExecutor;
    .locals 1

    .line 1201
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    return-object v0
.end method

.method public getAdSize()Lcom/amazon/device/ads/AdSize;
    .locals 1

    .line 680
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 685
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method getAndResetIsPrepared()Z
    .locals 1

    .line 1111
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAndResetIsPrepared()Z

    move-result v0

    return v0
.end method

.method getAndSetNeedsToLoadAdOnLayout(Z)Z
    .locals 1

    .line 1106
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    return p1
.end method

.method getLogger()Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    return-object v0
.end method

.method getNeedsToLoadAdOnLayout()Z
    .locals 1

    .line 1092
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method getRawScreenDimension(Z)I
    .locals 2

    .line 1047
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 1048
    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1049
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    if-eqz p1, :cond_0

    .line 1050
    iget p1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget p1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    return p1
.end method

.method public getTimeout()I
    .locals 1

    .line 647
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 652
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getTimeout()I

    move-result v0

    return v0
.end method

.method initializeIfNecessary()V
    .locals 5

    .line 361
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 366
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v3, "Initializing AdLayout."

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 367
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adRegistration:Lcom/amazon/device/ads/AdRegistrationExecutor;

    iget-object v3, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/amazon/device/ads/AdRegistrationExecutor;->initializeAds(Landroid/content/Context;)V

    const-string v2, "adLayoutObject"

    .line 369
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 375
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 377
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v1, "AdLayout"

    .line 378
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 v1, 0x11

    .line 380
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 381
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 382
    iput-boolean v3, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return-void

    .line 386
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 388
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 389
    invoke-virtual {p0, v4}, Landroid/widget/FrameLayout;->setVerticalScrollBarEnabled(Z)V

    .line 392
    iput-boolean v3, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    .line 394
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    .line 396
    invoke-virtual {p0, v2}, Lcom/amazon/device/ads/AdLayout;->setListener(Lcom/amazon/device/ads/AdListener;)V

    .line 399
    :cond_3
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->initializeAdController()V

    .line 406
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isWebViewDatabaseNull()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 408
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    sget-object v1, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Disabling ads. Local cache file is inaccessible so ads will fail if we try to create a WebView. Details of this Android bug found at: http://code.google.com/p/android/issues/detail?id=10789"

    invoke-virtual {v0, v1, v3, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 409
    iput-boolean v4, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return-void

    .line 412
    :cond_4
    iget-object v2, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v2

    sget-object v3, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v2, v3, v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetricInMillisecondsFromNanoseconds(Lcom/amazon/device/ads/Metrics$MetricType;J)V

    .line 413
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LAYOUT_INITIALIZATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    return-void
.end method

.method isActivityRootViewLayoutRequested()Z
    .locals 1

    .line 1164
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    return v0
.end method

.method isActivityRootViewNull()Z
    .locals 1

    .line 1173
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInitialized()Z
    .locals 1

    .line 505
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isInitialized:Z

    return v0
.end method

.method public isLoading()Z
    .locals 2

    .line 1211
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1216
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->LOADING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isParentViewMissingAtLoadTime()Z
    .locals 1

    .line 1125
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return v0
.end method

.method public isShowing()Z
    .locals 2

    .line 794
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isWebViewDatabaseNull()Z
    .locals 1

    .line 495
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->canShowViews()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 544
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 546
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 548
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 549
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->registerScreenStateBroadcastReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 554
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 555
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    .line 557
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 608
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isDestroyed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 614
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 616
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 621
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Lcom/amazon/device/ads/AdController;->setWindowDimensions(II)V

    const/4 p1, 0x0

    .line 623
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getAndSetNeedsToLoadAdOnLayout(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 625
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->startAdLoadUponLayout()V

    :cond_2
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 562
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->attached:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/amazon/device/ads/AdLayout;->lastVisibility:I

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 566
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    .line 567
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->collapseAd()V

    .line 568
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->unregisterScreenStateBroadcastReceiver()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 572
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isInForeground:Z

    :cond_1
    :goto_0
    return-void
.end method

.method prepareAd(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 808
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Skipping ad layout preparation steps because the layout is already prepared."

    invoke-virtual {p1, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    return v0

    .line 811
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 816
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getNeedsToLoadAdOnLayout()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 818
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "Can\'t load an ad because an ad is currently loading. Please wait for the ad to finish loading and showing before loading another ad."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return v1

    .line 822
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 825
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v2, "Ad size to be determined automatically."

    invoke-virtual {p1, v2}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 828
    :cond_3
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->setIsParentViewMissingAtLoadTime()V

    .line 830
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdController;->areWindowDimensionsSet()Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    .line 835
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isLayoutRequested()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getAdSize()Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/device/ads/AdSize;->isAuto()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result p1

    if-nez p1, :cond_5

    .line 840
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->deferAdLoadToLayoutEvent()V

    return v1

    .line 843
    :cond_5
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 845
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "The ad\'s parent view is missing at load time."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 849
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->loadAdWhenParentViewMissing()Z

    move-result p1

    return p1

    .line 853
    :cond_6
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->setWindowDimensions()V

    return v0
.end method

.method resolveLayoutParam(Z)I
    .locals 2

    .line 1015
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 1019
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isActivityRootViewNull()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getRawScreenDimension(Z)I

    move-result p1

    return p1

    .line 1028
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/AdLayout;->getActivityRootViewDimension(Z)I

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x2

    if-ne v0, p1, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    return v0
.end method

.method scheduleTaskForCheckingIfLayoutHasRun()V
    .locals 5

    .line 1066
    new-instance v0, Lcom/amazon/device/ads/AdLayout$3;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/AdLayout$3;-><init>(Lcom/amazon/device/ads/AdLayout;)V

    .line 1074
    sget-object v1, Lcom/amazon/device/ads/AdLayout;->threadPool:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->getTimeout()I

    move-result v2

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v0, v2, v3, v4}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method setActivityRootView()V
    .locals 2

    .line 1148
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/amazon/device/ads/ContextUtils;->getContextAsActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1151
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string/jumbo v1, "unable to set activity root view because the context did not contain an activity"

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;)V

    return-void

    .line 1155
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->activityRootView:Landroid/view/View;

    return-void
.end method

.method setFloatingWindowDimensions()V
    .locals 2

    .line 976
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_1

    .line 978
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The requested ad will scale based on the screen\'s dimensions because at least one AdLayout dimension is set to MATCH_PARENT but the AdLayout is currently missing a fixed-size parent view."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;)V

    .line 982
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->setWindowDimensions()V

    return-void
.end method

.method setIsParentViewMissingAtLoadTime()V
    .locals 1

    .line 1133
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return-void
.end method

.method setIsParentViewMissingAtLoadTime(Z)V
    .locals 0

    .line 1140
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->isParentViewMissingAtLoadTime:Z

    return-void
.end method

.method public setListener(Lcom/amazon/device/ads/AdListener;)V
    .locals 1

    if-nez p1, :cond_0

    .line 1194
    new-instance p1, Lcom/amazon/device/ads/DefaultAdListener;

    sget-object v0, Lcom/amazon/device/ads/AdLayout;->LOGTAG:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/amazon/device/ads/DefaultAdListener;-><init>(Ljava/lang/String;)V

    .line 1196
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutorFactory:Lcom/amazon/device/ads/AdListenerExecutorFactory;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdListenerExecutorFactory;->createAdListenerExecutor(Lcom/amazon/device/ads/AdListener;)Lcom/amazon/device/ads/AdListenerExecutor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adListenerExecutor:Lcom/amazon/device/ads/AdListenerExecutor;

    return-void
.end method

.method setMaxWidth(I)V
    .locals 1

    .line 695
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 697
    iget-object p1, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v0, "The maximum width cannot be changed because this ad has already been initialized. Max width should be set immediately after construction of the Ad object."

    invoke-virtual {p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdSize;->newMaxWidth(I)Lcom/amazon/device/ads/AdSize;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/AdLayout;->adSize:Lcom/amazon/device/ads/AdSize;

    return-void
.end method

.method setNeedsToLoadAdOnLayout(Z)V
    .locals 1

    .line 1101
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->needsToLoadAdOnLayout:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method setOnLayoutChangeListenerForRoot()V
    .locals 0

    .line 931
    invoke-static {p0}, Lcom/amazon/device/ads/AdLayout$OnLayoutChangeListenerUtil;->setOnLayoutChangeListenerForRoot(Lcom/amazon/device/ads/AdLayout;)V

    return-void
.end method

.method setShouldDisableWebViewHardwareAcceleration(Z)V
    .locals 1

    .line 349
    iput-boolean p1, p0, Lcom/amazon/device/ads/AdLayout;->shouldDisableWebViewHardwareAcceleration:Z

    .line 350
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->adController:Lcom/amazon/device/ads/AdController;

    if-eqz v0, :cond_0

    .line 352
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->requestDisableHardwareAcceleration(Z)V

    :cond_0
    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    .line 664
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 667
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdController;->setTimeout(I)V

    :cond_0
    return-void
.end method

.method public setTranslationX(F)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 292
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    return-void
.end method

.method public setTranslationY(F)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 299
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 277
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 278
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 284
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setY(F)V

    .line 285
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->fireViewableEvent()V

    return-void
.end method

.method public showAd()Z
    .locals 3

    .line 1254
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->previousAdExpired:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "This banner ad has expired. Please load another ad."

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1256
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return v2

    .line 1259
    :cond_0
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToShow()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1261
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1264
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return v2

    .line 1267
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->startAdDrawing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1269
    iget-boolean v0, p0, Lcom/amazon/device/ads/AdLayout;->autoShow:Z

    if-nez v0, :cond_2

    .line 1271
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_LOADED_TO_AD_SHOW_TIME:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->stopMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1273
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_LATENCY:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1274
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 1276
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1278
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    if-eqz v0, :cond_4

    .line 1280
    invoke-interface {v0}, Lcom/amazon/device/ads/Destroyable;->destroy()V

    .line 1282
    :cond_4
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    .line 1283
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getDestroyable()Lcom/amazon/device/ads/Destroyable;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/device/ads/AdLayout;->currentDestroyable:Lcom/amazon/device/ads/Destroyable;

    .line 1284
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 1288
    iget-object v1, p0, Lcom/amazon/device/ads/AdLayout;->currentView:Landroid/view/View;

    invoke-virtual {p0, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1289
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->getAdController()Lcom/amazon/device/ads/AdController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdController;->getMetricsCollector()Lcom/amazon/device/ads/MetricsCollector;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/Metrics$MetricType;->AD_SHOW_DURATION:Lcom/amazon/device/ads/Metrics$MetricType;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MetricsCollector;->startMetric(Lcom/amazon/device/ads/Metrics$MetricType;)V

    .line 1290
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->adShown()V

    const/4 v0, 0x1

    return v0

    .line 1295
    :cond_5
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "Banner ad could not be shown."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    return v2

    .line 1301
    :cond_6
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1303
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The banner ad cannot be shown because it is still loading."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1305
    :cond_7
    invoke-virtual {p0}, Lcom/amazon/device/ads/AdLayout;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1307
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The banner ad cannot be shown because it is already showing."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1309
    :cond_8
    invoke-direct {p0}, Lcom/amazon/device/ads/AdLayout;->isReadyToLoad()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1311
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "The banner ad cannot be shown because it has not loaded successfully."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 1315
    :cond_9
    iget-object v0, p0, Lcom/amazon/device/ads/AdLayout;->logger:Lcom/amazon/device/ads/MobileAdsLogger;

    const-string v1, "A banner ad is not ready to show."

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;)V

    :goto_0
    return v2
.end method
