.class public Lcom/amazon/kindle/specialOffer/KSOScreenActivity;
.super Landroid/app/Activity;
.source "KSOScreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/specialOffer/KSOScreenActivity$KSOCountDownTimer;
    }
.end annotation


# static fields
.field private static final ANDROID_VIEW:Ljava/lang/String; = "android.intent.action.VIEW"

.field private static final FALSE:Ljava/lang/String; = "false"

.field private static final MIAO_ZHEN:Ljava/lang/String; = "miaozhen"

.field private static final TAG:Ljava/lang/String;

.field private static final TRUE:Ljava/lang/String; = "true"


# instance fields
.field private manager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

.field private picView:Landroid/widget/ImageView;

.field private skipButton:Landroid/widget/Button;

.field private timer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Lcom/amazon/kindle/specialOffer/IKSOCacheManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->manager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->updateUI(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/os/CountDownTimer;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->timer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$202(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->timer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->gotoHomePage()V

    return-void
.end method

.method static synthetic access$400(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->getRetailWebUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)Landroid/widget/Button;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->skipButton:Landroid/widget/Button;

    return-object p0
.end method

.method private configureKSO()V
    .locals 2

    .line 87
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$1;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private extendSkipButtonTouchArea()V
    .locals 3

    .line 177
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/thirdparty/R$dimen;->kso_skip_button_touch_extension:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 178
    sget v1, Lcom/amazon/kindle/thirdparty/R$id;->kso_button_container:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 180
    new-instance v2, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$4;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;ILandroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private getRetailWebUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 227
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KSO path: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->default_domain:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private gotoHomePage()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->timer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->skipButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 200
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->picView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 201
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->skipButton:Landroid/widget/Button;

    sget v1, Lcom/amazon/kindle/thirdparty/R$string;->kso_skip_button_redirecting:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 202
    invoke-static {p0}, Lcom/amazon/kindle/UpgradePageUtils;->getHomeActivityIntent(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 203
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private updateUI(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->picView:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 111
    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;->getAdType()Ljava/lang/String;

    move-result-object p2

    const-string v0, "miaozhen"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 112
    invoke-static {p1}, Lcom/amazon/kindle/specialOffer/KSOMiaoZhenHelper;->reportExposure(Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V

    .line 114
    :cond_0
    iget-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->picView:Landroid/widget/ImageView;

    new-instance v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$2;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object p2, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->skipButton:Landroid/widget/Button;

    new-instance v0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity$3;-><init>(Lcom/amazon/kindle/specialOffer/KSOScreenActivity;Lcom/amazon/kindle/specialOffer/KSOWidgetMetadata;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    invoke-direct {p0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->extendSkipButtonTouchArea()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 216
    invoke-direct {p0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->gotoHomePage()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 69
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    sget p1, Lcom/amazon/kindle/thirdparty/R$layout;->kso_screen:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 73
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKSOCacheManager()Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->manager:Lcom/amazon/kindle/specialOffer/IKSOCacheManager;

    .line 75
    sget p1, Lcom/amazon/kindle/thirdparty/R$id;->kso_screen_pic:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->picView:Landroid/widget/ImageView;

    .line 76
    sget p1, Lcom/amazon/kindle/thirdparty/R$id;->kso_skip_btn:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->skipButton:Landroid/widget/Button;

    .line 77
    sget v0, Lcom/amazon/kindle/thirdparty/R$string;->kso_skip_button_counting:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const-wide/16 v2, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 79
    invoke-direct {p0}, Lcom/amazon/kindle/specialOffer/KSOScreenActivity;->configureKSO()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 210
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 211
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
