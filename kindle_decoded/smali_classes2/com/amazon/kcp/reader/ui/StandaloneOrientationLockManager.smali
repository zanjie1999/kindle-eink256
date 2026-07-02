.class public Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;
.super Ljava/lang/Object;
.source "StandaloneOrientationLockManager.java"

# interfaces
.implements Lcom/amazon/kcp/reader/ui/IOrientationLockManager;


# static fields
.field private static final ORIENTATION_LOCK_REMOVAL_JIT_NAME:Ljava/lang/String; = "orientationLockRemoval"

.field private static final ORIENTATION_LOCK_TIME:J = 0xbb8L

.field private static final orientationLockMovedTutorialProvider:Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;


# instance fields
.field private activity:Landroid/app/Activity;

.field private volatile cachedMargin:I

.field private final hideOrientationLockHandler:Landroid/os/Handler;

.field private final hideOrientationLockRunnable:Ljava/lang/Runnable;

.field private lockImageResourceId:I

.field private orientationLockClickListener:Landroid/view/View$OnClickListener;

.field private orientationLockContainer:Landroid/view/View;

.field private orientationLockView:Landroid/widget/ImageView;

.field private orientationLockVisible:Z

.field private unlockImageResourceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockMovedTutorialProvider:Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    sget v0, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_unlocked_default:I

    iput v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->lockImageResourceId:I

    .line 46
    sget v0, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_locked_default:I

    iput v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->unlockImageResourceId:I

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockHandler:Landroid/os/Handler;

    .line 53
    new-instance v0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$1;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 60
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    const/4 v0, 0x0

    .line 63
    iput v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->cachedMargin:I

    return-void
.end method

.method static synthetic access$000()Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;
    .locals 1

    .line 39
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockMovedTutorialProvider:Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockAfterDelay()V

    return-void
.end method

.method private getDisplayCutout()Landroid/view/DisplayCutout;
    .locals 2

    .line 272
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 273
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getHorizontalMargin()I
    .locals 5

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isNotchSupportEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 254
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/device/DisplayCutoutUtils;->isCornerNotchSupportEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v1

    .line 257
    invoke-virtual {v0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 258
    iget v3, v1, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    if-lt v3, v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->right:I

    if-gt v3, v4, :cond_0

    iget v3, v1, Landroid/graphics/Point;->y:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    if-lt v3, v4, :cond_0

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v3, v4, :cond_0

    .line 261
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private hideOrientationLockAfterDelay()V
    .locals 4

    .line 218
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 220
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getRotationUnlockedResId()I

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->unlockImageResourceId:I

    .line 235
    invoke-virtual {p1}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getRotationLockedResId()I

    move-result p1

    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->lockImageResourceId:I

    goto :goto_0

    .line 237
    :cond_0
    sget p1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_unlocked_default:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->unlockImageResourceId:I

    .line 238
    sget p1, Lcom/amazon/kindle/thirdparty/R$drawable;->ic_locked_default:I

    iput p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->lockImageResourceId:I

    :goto_0
    return-void
.end method

.method private setLockImageResource(Landroid/widget/ImageView;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 226
    iget p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->lockImageResourceId:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->unlockImageResourceId:I

    .line 227
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    const/4 v0, 0x0

    .line 208
    iput-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    .line 209
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->unsubscribe(Ljava/lang/Object;)V

    .line 210
    invoke-static {}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->getInstance()Lcom/amazon/kindle/tutorial/AndroidTutorialManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockMovedTutorialProvider:Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/tutorial/AndroidTutorialManager;->deregisterTutorialProvider(Lcom/amazon/kindle/krx/tutorial/TutorialProvider;)V

    return-void
.end method

.method public initialize(Lcom/amazon/kcp/reader/ReaderActivity;Landroid/view/View;Z)V
    .locals 1

    .line 71
    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    if-eqz p2, :cond_0

    .line 73
    sget v0, Lcom/amazon/kindle/thirdparty/R$id;->orientation_lock_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockView:Landroid/widget/ImageView;

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    .line 75
    iput-boolean p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    .line 76
    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->getCurrentColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode;)V

    .line 77
    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockView:Landroid/widget/ImageView;

    invoke-direct {p0, p2, p3}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setLockImageResource(Landroid/widget/ImageView;Z)V

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    .line 81
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object p1

    new-instance p2, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$2;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$2;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V

    const/4 p3, 0x0

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->execute(Ljava/lang/Runnable;Z)V

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method public isOrientationLockVisible()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    return v0
.end method

.method public isPointInOrientationLock(II)Z
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    if-nez v0, :cond_1

    return v1

    .line 195
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    if-gt p1, v0, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    .line 197
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lt p2, p1, :cond_2

    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    .line 198
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    if-gt p2, p1, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public onOrientationLockClick()Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 155
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isOrientationLockTapEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 157
    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isOrientationLockTapTutorialShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    sget-object v0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockMovedTutorialProvider:Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/OrientationLockMovedTutorialProvider;->publishTutorialEvent()V

    const-string v0, "orientationLockRemoval"

    .line 159
    invoke-static {v0}, Lcom/amazon/kcp/util/fastmetrics/JitActionFastMetrics;->reportJitShown(Ljava/lang/String;)V

    :cond_1
    return v1

    .line 164
    :cond_2
    iget-boolean v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 167
    invoke-virtual {p0, v1, v1}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setOrientationLockTemporarilyVisible(ZZ)V

    goto :goto_0

    .line 169
    :cond_3
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_4

    .line 170
    invoke-interface {v2, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 172
    :cond_4
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockAfterDelay()V

    :goto_0
    return v1
.end method

.method public onOrientationLockSettingUpdate(Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockView:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ui/OnOrientationLockSettingUpdate;->isLocked()Z

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->setLockImageResource(Landroid/widget/ImageView;Z)V

    return-void
.end method

.method public refreshLayout()V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->getHorizontalMargin()I

    move-result v0

    .line 245
    iget v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->cachedMargin:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    if-nez v1, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    iput v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->cachedMargin:I

    .line 249
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockContainer:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOrientationLockClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOrientationLockTemporarilyVisible(ZZ)V
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->activity:Landroid/app/Activity;

    if-nez v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {v0}, Lcom/amazon/android/util/UIUtils;->isActivityInMultiWindowedMode(Landroid/app/Activity;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    invoke-static {}, Lcom/amazon/kcp/util/OrientationLockUtils;->isOrientationLockTapEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 114
    :cond_2
    iget-boolean v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    if-ne p1, v1, :cond_4

    if-eqz p1, :cond_3

    .line 117
    invoke-direct {p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->hideOrientationLockAfterDelay()V

    :cond_3
    return-void

    .line 122
    :cond_4
    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 123
    iput-boolean p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockVisible:Z

    if-eqz p1, :cond_5

    const/high16 v1, 0x10a0000

    goto :goto_0

    :cond_5
    const v1, 0x10a0001

    .line 124
    :goto_0
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 125
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    if-nez p2, :cond_6

    const-wide/16 v1, 0x0

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_6
    if-eqz p1, :cond_7

    .line 130
    new-instance p1, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance p2, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$3;

    invoke-direct {p2, p0}, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager$3;-><init>(Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;)V

    const/4 v1, 0x0

    invoke-direct {p1, v1, v1, p2}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 139
    :cond_7
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneOrientationLockManager;->orientationLockView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_8
    return-void
.end method

.method public shouldUseOrientationListener()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
