.class public Lcom/amazon/kcp/ui/brochure/BrochureActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "BrochureActivity.java"


# static fields
.field private static final ANIMATION_SHOWN:Ljava/lang/String; = "animation"

.field public static final BROCHURE_ASSETS:Ljava/lang/String; = "brochure_assets"

.field public static final BROCHURE_FROM_TUTORIAL:Ljava/lang/String; = "brochure_from_tutorial"

.field public static final BROCHURE_OPTIONS:Ljava/lang/String; = "brochure_options"

.field public static final BROCHURE_SOURCE_NOTIFICATION:Ljava/lang/String; = "Notification"

.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile animationWasShown:Z

.field private clickstreamPageType:Ljava/lang/String;

.field private metricsContext:Ljava/lang/String;

.field private options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

.field private requestedOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->TAG:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V
    .locals 0

    .line 44
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->finishAmazingly()V

    return-void
.end method

.method private configureBackground()V
    .locals 5

    .line 180
    sget v0, Lcom/amazon/kindle/krl/R$id;->llNotificationBackground:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 181
    sget v1, Lcom/amazon/kindle/krl/R$id;->llGenericBackground:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 184
    iget-object v2, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v2, v2, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    const-string v3, "Notification"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 185
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 186
    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 189
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-boolean v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->animationWasShown:Z

    if-nez v0, :cond_3

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/amazon/kindle/krl/R$integer;->brochure_animation_time:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 195
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 197
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 198
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v3, v0

    invoke-virtual {v1, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 202
    :cond_2
    sget v1, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    .line 203
    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setTranslationY(F)V

    .line 204
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    .line 205
    iput-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->animationWasShown:Z

    :cond_3
    return-void
.end method

.method private finishAmazingly()V
    .locals 4

    .line 291
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-boolean v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->animate:Z

    if-eqz v0, :cond_1

    .line 292
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/krl/R$integer;->brochure_animation_time:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 293
    sget v1, Lcom/amazon/kindle/krl/R$id;->llGenericBackground:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 296
    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 300
    :cond_0
    sget v1, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    if-eqz v1, :cond_2

    .line 302
    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-static {p0}, Lcom/amazon/android/util/UIUtils;->getDeviceScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, v0

    .line 303
    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/ui/brochure/BrochureActivity$2;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity$2;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 311
    :cond_1
    invoke-virtual {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method private initializeActionButton()V
    .locals 3

    .line 230
    sget v0, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    .line 231
    iget-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v2, v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    iget-object v1, v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeActionButton(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;Ljava/lang/String;)V

    return-void
.end method

.method private initializeBrochureViewGroup()V
    .locals 3

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "brochure_assets"

    .line 214
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 216
    sget v1, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    .line 217
    new-instance v2, Lcom/amazon/kcp/ui/brochure/BrochureActivity$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity$1;-><init>(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V

    invoke-virtual {v1, v2}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->setDoneListener(Lcom/amazon/kcp/ui/brochure/IBrochureDoneListener;)V

    .line 223
    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->setContentToDisplay(Ljava/util/List;)V

    .line 225
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->metricsContext:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->setMetricsContext(Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->clickstreamPageType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->setClickstreamPageType(Ljava/lang/String;)V

    return-void
.end method

.method private initializeClickstreamPageType()V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->clickstreamPageType:Ljava/lang/String;

    .line 254
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pageType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 257
    :cond_1
    iput-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->clickstreamPageType:Ljava/lang/String;

    return-void
.end method

.method private initializeMetricsContext()V
    .locals 3

    .line 238
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 241
    :goto_0
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 242
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contextName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v0, "%sBrochure"

    .line 244
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->metricsContext:Ljava/lang/String;

    return-void
.end method

.method private initializeOrientation()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    .line 267
    :goto_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-virtual {p0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    iput v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->requestedOrientation:I

    .line 269
    sget-object v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->PORTRAIT:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    return-void
.end method

.method private restoreOrientation()V
    .locals 2

    .line 278
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    .line 280
    :goto_0
    sget-object v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->NONE:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->requestedOrientation:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 4

    .line 139
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->restoreOrientation()V

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "brochure_from_tutorial"

    .line 141
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_0
    if-nez v1, :cond_1

    .line 145
    invoke-static {}, Lcom/amazon/kcp/info/TutorialLockHelper;->getLock()Lcom/amazon/kcp/info/TutorialLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/info/TutorialLock;->unlockTutorials()V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 151
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    iget-object v0, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    const-string v1, "Notification"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    .line 158
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getLaunchActivity(Landroid/content/Context;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 161
    sget-object v2, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->TAG:Ljava/lang/String;

    const-string v3, "Going to launch Kindle app"

    invoke-static {v2, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x10000000

    .line 163
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    .line 164
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 165
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 166
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 168
    :cond_2
    sget-object v0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->TAG:Ljava/lang/String;

    const-string v1, "Android Activity is null, cannot launch Kindle App"

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 86
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 87
    sget v0, Lcom/amazon/kindle/krl/R$layout;->brochure_fullscreen:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "animation"

    .line 89
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->animationWasShown:Z

    .line 91
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v0, "brochure_options"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    :cond_1
    instance-of p1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    if-eqz p1, :cond_2

    check-cast v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->options:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    .line 98
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->configureBackground()V

    .line 100
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeOrientation()V

    .line 102
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeMetricsContext()V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeClickstreamPageType()V

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeBrochureViewGroup()V

    .line 108
    invoke-direct {p0}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->initializeActionButton()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 113
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 115
    sget v0, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    .line 116
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->onPauseDisplay()V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 121
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 123
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->METRICS_NAME:Ljava/lang/String;

    const-string v2, "BrochureTapToOpen"

    invoke-virtual {v0, v1, v2, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    sget v0, Lcom/amazon/kindle/krl/R$id;->slideshowPager:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    .line 127
    invoke-virtual {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->onResumeDisplay()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 133
    iget-boolean v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->animationWasShown:Z

    const-string v1, "animation"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 134
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
