.class public Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.super Landroid/app/Activity;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aZ:Lcom/amazon/identity/auth/device/ds;

.field private bO:Lcom/amazon/identity/auth/device/ej;

.field private bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

.field private bi:Ljava/lang/String;

.field private dO:Lcom/amazon/identity/auth/device/ms;

.field private dP:Lcom/amazon/identity/auth/device/ms;

.field private dQ:Lcom/amazon/identity/auth/device/ms;

.field private dR:Lcom/amazon/identity/auth/device/ms;

.field private dS:Lcom/amazon/identity/auth/device/ms;

.field private dT:Lcom/amazon/identity/auth/device/ms;

.field private dU:Ljava/lang/String;

.field private dV:Lcom/amazon/identity/auth/device/ms;

.field private dW:Ljava/util/Timer;

.field private dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

.field private dY:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

.field private dZ:Ljava/lang/String;

.field private ea:Ljava/lang/String;

.field private eb:Landroid/os/Bundle;

.field private ec:Ljava/lang/String;

.field private ed:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ee:Ljava/lang/String;

.field private ef:Ljava/lang/String;

.field private eg:Z

.field private eh:Z

.field private ei:Z

.field private ej:I

.field private ek:Landroid/webkit/WebView;

.field private el:Lcom/amazon/identity/auth/device/de;

.field private em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

.field private en:Lcom/amazon/identity/auth/device/dr;

.field private eo:Z

.field private ep:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

.field private er:Lcom/amazon/identity/auth/device/fe;

.field private es:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private et:Ljava/lang/String;

.field private eu:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ev:Lcom/amazon/identity/auth/device/hv;

.field private ew:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ex:I

.field private o:Lcom/amazon/identity/auth/device/ed;

.field private s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-class v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 125
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 192
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dO:Lcom/amazon/identity/auth/device/ms;

    .line 194
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dP:Lcom/amazon/identity/auth/device/ms;

    .line 196
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dQ:Lcom/amazon/identity/auth/device/ms;

    .line 198
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dR:Lcom/amazon/identity/auth/device/ms;

    .line 205
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dV:Lcom/amazon/identity/auth/device/ms;

    .line 254
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 266
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 267
    iput v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    return-void
.end method

.method static synthetic A(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/os/Bundle;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic B(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ea:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    return-object p0
.end method

.method static synthetic E(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    return p0
.end method

.method static synthetic F(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 2

    .line 14149
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eh:Z

    if-nez v0, :cond_0

    const-string v0, "delay_fade_anim"

    .line 14151
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->A(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 14152
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    const/4 v1, 0x1

    .line 14153
    iput-boolean v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eh:Z

    .line 14154
    iget v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    .line 14155
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x4

    .line 14156
    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic G(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aF()V

    return-void
.end method

.method static synthetic H(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic I(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/api/MAPAccountManager;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    return-object p0
.end method

.method private a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;Z)I
    .locals 1

    .line 1296
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    .line 1313
    sget-object p1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string p2, "Bar State not recongized"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const p1, 0x1010289

    goto :goto_0

    :cond_1
    const p1, 0x101007a

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const p1, 0x1010287

    goto :goto_0

    :cond_3
    const p1, 0x1010077

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    const p1, 0x1010288

    goto :goto_0

    :cond_5
    const p1, 0x1010079

    :goto_0
    return p1
.end method

.method private static a(Landroid/widget/RelativeLayout$LayoutParams;Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1321
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->getValue()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Bar Pos: %s"

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1324
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 v0, 0xc

    .line 1339
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_1
    const/16 v0, 0xf

    .line 1334
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0

    :pswitch_2
    const/16 v0, 0xa

    .line 1329
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1345
    :goto_0
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eF:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_1

    :pswitch_3
    const/16 p1, 0xb

    .line 1360
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_4
    const/16 p1, 0xe

    .line 1355
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_1

    :pswitch_5
    const/16 p1, 0x9

    .line 1350
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    return-object p0
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dO:Lcom/amazon/identity/auth/device/ms;

    return-object p1
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dW:Ljava/util/Timer;

    return-object p1
.end method

.method private a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V
    .locals 1

    .line 2460
    new-instance v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$2;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;Landroid/os/Bundle;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/ValueCallback;)V
    .locals 2

    .line 13246
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 13248
    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 13251
    :cond_0
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    .line 13253
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.GET_CONTENT"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.OPENABLE"

    .line 13254
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "*/*"

    .line 13255
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "File Browser"

    .line 13258
    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    .line 13257
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;I)V
    .locals 2

    .line 12266
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3c

    if-le p2, v0, :cond_0

    if-eqz p1, :cond_0

    .line 12275
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContentHeight()I

    move-result p1

    if-lez p1, :cond_0

    const/16 p1, 0x64

    .line 12277
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->f(I)V

    .line 12278
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aC()V

    .line 12279
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dQ:Lcom/amazon/identity/auth/device/ms;

    if-eqz p0, :cond_1

    .line 12281
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    return-void

    .line 12286
    :cond_0
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->f(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V
    .locals 1

    .line 11505
    new-instance v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$8;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)V
    .locals 3

    .line 11613
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 11617
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_0

    .line 11619
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "AuthPortalUIActivity_CriticalFeatureLoaded:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11621
    invoke-static {p1}, Lcom/amazon/identity/auth/device/mm;->eO(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11620
    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dV:Lcom/amazon/identity/auth/device/ms;

    :cond_0
    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V
    .locals 4

    .line 2081
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v0

    .line 2082
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2083
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/cm;->getDirectedId()Ljava/lang/String;

    move-result-object p1

    const-string v2, "com.amazon.dcp.sso.property.account.acctId"

    .line 2084
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2085
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "com.amazon.dcp.sso.AddAccount.options.AccessToken"

    if-eqz v2, :cond_0

    .line 2087
    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    const-string v2, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {p2, p1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2091
    :cond_0
    invoke-virtual {v1, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2093
    :goto_0
    invoke-direct {p0, v1, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/cm;ZLcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V
    .locals 10

    .line 2694
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2695
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/cm;->bW()Ljava/lang/String;

    move-result-object v1

    const-string v2, "authorization_code"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2696
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hv;->gx()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_verifier"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2697
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hv;->gz()Ljava/lang/String;

    move-result-object v1

    const-string v2, "code_challenge_method"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_domain"

    const-string v2, "DeviceLegacy"

    .line 2698
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2699
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ef:Ljava/lang/String;

    const-string v2, "client_id"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "authorizationCode"

    const/4 v2, 0x1

    .line 2700
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2702
    new-instance v1, Lcom/amazon/identity/auth/device/api/TokenManagement;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v1, v2}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    .line 2703
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/cm;->getDirectedId()Ljava/lang/String;

    move-result-object v2

    new-instance v9, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;

    move-object v3, v9

    move-object v4, p0

    move v5, p2

    move-object v6, p4

    move-object v7, p3

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$5;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;ZLandroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/cm;)V

    const-string p1, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {v1, v2, p1, v0, v9}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1806
    iget-object v3, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1808
    sget-object v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 1813
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "WebViewSuccess:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/String;

    invoke-static {v3, v6}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1815
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->getDirectedId()Ljava/lang/String;

    move-result-object v3

    .line 1816
    iget-object v6, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    .line 7047
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_3

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_0

    .line 7052
    :cond_1
    iget-object v7, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v9, "sid"

    .line 7053
    invoke-static {v7, v3, v6, v9}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/token/MAPCookie;

    move-result-object v6

    if-nez v6, :cond_2

    goto :goto_0

    .line 7059
    :cond_2
    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/token/MAPCookie;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 7060
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_3
    :goto_0
    move-object v6, v8

    .line 7791
    :cond_4
    sget-object v7, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 7793
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aB()Z

    move-result v7

    goto :goto_1

    .line 7796
    :cond_5
    sget-object v7, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1, v7}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x1

    goto :goto_1

    :cond_6
    const/4 v7, 0x0

    :goto_1
    const-string v9, "client_id"

    const-string v10, "code_challenge_method"

    const-string v11, "code_verifier"

    if-nez v7, :cond_e

    .line 1822
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aG()Z

    move-result v7

    if-eqz v7, :cond_7

    .line 8072
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v1

    .line 8073
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 8074
    iget-object v3, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v4, "EnsureAccountStateAttributes"

    .line 8075
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 8074
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8076
    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    return-void

    .line 1827
    :cond_7
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1829
    iget-object v7, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    const-string v12, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {v7, v3, v12, v6}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    :cond_8
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1836
    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1839
    invoke-direct {v0, v2, v5, v8, v8}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;ZLcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    .line 1843
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void

    .line 1847
    :cond_a
    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1850
    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1852
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 8650
    new-instance v15, Landroid/os/Bundle;

    invoke-direct {v15}, Landroid/os/Bundle;-><init>()V

    const-string v1, "authorizationCode"

    .line 8651
    invoke-virtual {v15, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8652
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->bW()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_auth_code"

    invoke-virtual {v15, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8653
    iget-object v1, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hv;->gx()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v11, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8654
    iget-object v1, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/hv;->gz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v10, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_domain"

    const-string v3, "DeviceLegacy"

    .line 8655
    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8656
    iget-object v1, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ef:Ljava/lang/String;

    invoke-virtual {v15, v9, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_token_type"

    const-string/jumbo v3, "token_type_oauth_refresh_token"

    .line 8657
    invoke-virtual {v15, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8659
    new-instance v12, Lcom/amazon/identity/auth/device/gw;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v12, v1}, Lcom/amazon/identity/auth/device/gw;-><init>(Landroid/content/Context;)V

    const/4 v14, 0x0

    .line 8660
    new-instance v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;

    move-object/from16 v3, p3

    invoke-direct {v1, v0, v3, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$3;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;Lcom/amazon/identity/auth/device/cm;)V

    new-instance v2, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$4;

    invoke-direct {v2, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$4;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    move-object/from16 v13, p3

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    invoke-virtual/range {v12 .. v17}, Lcom/amazon/identity/auth/device/gw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 1860
    :cond_b
    invoke-direct {v0, v2, v5, v8, v8}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;ZLcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    .line 1867
    :cond_c
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void

    .line 1873
    :cond_d
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UnexpectedRequestTypeWithoutRegistration:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1874
    invoke-direct {v0, v2, v8}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    return-void

    .line 1878
    :cond_e
    iget-object v1, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v1, :cond_f

    goto :goto_2

    :cond_f
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_2
    const-string/jumbo v5, "registration_domain"

    .line 1888
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "com.amazon.identity.ap.domain"

    .line 1889
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1893
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "Passing domain "

    if-nez v12, :cond_10

    .line 1895
    sget-object v12, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " to registerAccount from registerAccountWithUI as registration domain"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    :cond_10
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1900
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " to registerAccount from registerAccountWithUI as sign in domain"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "sign_in_domain"

    .line 1901
    invoke-virtual {v1, v5, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1904
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->bZ()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string v7, "com.amazon.identity.auth.device.accountManager.newaccount"

    invoke-virtual {v1, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1906
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    const-string/jumbo v5, "sid_cookie_value"

    .line 1909
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1913
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aB()Z

    move-result v5

    if-nez v5, :cond_13

    iget-object v5, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    invoke-virtual {v5, v3}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;->E(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1915
    sget-object v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v2, "Fast failing since account already exists"

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-static {v3}, Lcom/amazon/identity/auth/device/m;->w(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 1918
    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void

    .line 1922
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v3

    if-eqz v3, :cond_16

    .line 1928
    iget-object v5, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->ca()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/amazon/identity/auth/device/framework/IsolatedModeSwitcher;->switchAppToIsolatedModeIfNecessary(Landroid/content/Context;Ljava/lang/String;)V

    .line 8962
    new-instance v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;

    invoke-direct {v5, v0, v3, v6, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$11;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;Ljava/lang/String;Lcom/amazon/identity/auth/device/cm;)V

    .line 1931
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->bW()Ljava/lang/String;

    move-result-object v3

    .line 1934
    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 9742
    iget-object v6, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v6}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object v6

    sget-object v7, Lcom/amazon/identity/auth/device/features/Feature;->PandaRegistration:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v6, v7}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v2, "authorization_code"

    .line 1937
    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1938
    iget-object v2, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/hv;->gx()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1939
    iget-object v2, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/hv;->gz()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v10, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1940
    iget-object v2, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ef:Ljava/lang/String;

    invoke-virtual {v1, v9, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1941
    iget-object v2, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    sget-object v3, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_AUTHORIZATION_CODE:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {v2, v3, v1, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccount(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    return-void

    .line 1945
    :cond_14
    invoke-direct {v0, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1948
    invoke-direct {v0, v2, v4, v5, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/cm;ZLcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;)V

    return-void

    .line 1953
    :cond_15
    invoke-virtual/range {p2 .. p2}, Lcom/amazon/identity/auth/device/cm;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.amazon.dcp.sso.AddAccount.options.AccessToken"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    iget-object v2, v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    sget-object v3, Lcom/amazon/identity/auth/device/api/RegistrationType;->FROM_ACCESS_TOKEN:Lcom/amazon/identity/auth/device/api/RegistrationType;

    invoke-virtual {v2, v3, v1, v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;->registerAccount(Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    :cond_16
    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V
    .locals 1

    const-string v0, "0"

    .line 718
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aQ(Ljava/lang/String;)V

    .line 719
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bQ()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    .line 783
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    const-string v3, ""

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private a(Lcom/amazon/identity/auth/device/cm;)Z
    .locals 0

    .line 2737
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/cm;->bW()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)Z
    .locals 1

    .line 2496
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v0, "isWarmSeatAuthentication"

    .line 2497
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private aA()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 920
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 926
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 927
    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const-string v2, "debugParams"

    .line 934
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 936
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 938
    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 939
    invoke-virtual {v2, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 941
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 944
    new-instance v3, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    .line 945
    invoke-virtual {v3, v1}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    .line 946
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 948
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v1

    .line 949
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 951
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    .line 952
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 960
    sget-object v2, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v3, "No meta found for this package"

    invoke-static {v2, v3, v1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-object v0
.end method

.method private aB()Z
    .locals 2

    .line 1786
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "account_recover_attempt"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private aC()V
    .locals 2

    .line 2110
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dS:Lcom/amazon/identity/auth/device/ms;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_0

    .line 2112
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2113
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "MFA:ChallengeCodeEnterTime"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dS:Lcom/amazon/identity/auth/device/ms;

    .line 2116
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dT:Lcom/amazon/identity/auth/device/ms;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_1

    .line 2118
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "DCQ:ChallengeQuestionEnterTime"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bz(Ljava/lang/String;)Lcom/amazon/identity/auth/device/ms;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dT:Lcom/amazon/identity/auth/device/ms;

    .line 2122
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aH()V

    .line 2123
    iget v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2125
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 2128
    new-instance v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;

    invoke-direct {v1, p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$12;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/widget/ProgressBar;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->d(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method private aD()V
    .locals 2

    const/4 v0, 0x0

    .line 2162
    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eh:Z

    .line 2163
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v1, :cond_0

    .line 2165
    iget v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    .line 2166
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 2167
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;
    .locals 2

    .line 2477
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dY:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    const/4 v1, 0x0

    .line 2479
    iput-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dY:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    return-object v0
.end method

.method private aF()V
    .locals 2

    .line 2486
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2487
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private aG()Z
    .locals 2

    .line 2503
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v1, "isAccountStateFixUpFlow"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private aH()V
    .locals 1

    .line 2508
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dW:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 2510
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 2511
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dW:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method private aI()Landroid/widget/RelativeLayout;
    .locals 1

    const-string v0, "apparentlayout"

    .line 2517
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 2518
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1200()Ljava/lang/String;
    .locals 1

    .line 125
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private av(Ljava/lang/String;)V
    .locals 8

    .line 569
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->et:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 571
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jk;->dI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 578
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 581
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Setting up the frc cookie in AuthPortalUIActivity for domain : "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 584
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->et:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v3, "frc"

    const-string v5, "/ap"

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 593
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private aw(Ljava/lang/String;)V
    .locals 8

    .line 2628
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v1, "InjectCookiesToAuthPortalUIActivity"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2630
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v2, "Need to inject the cookies into the webview."

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2631
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    .line 2632
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2635
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 2636
    invoke-virtual {v1, v2}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 2637
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    .line 2638
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 2640
    sget-object v5, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Adding cookie to CookieManager: "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v5}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2641
    invoke-virtual {v1, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2643
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jl;->aK(Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private ax()V
    .locals 2

    .line 628
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "callback"

    .line 630
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dY:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    .line 631
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ay()V
    .locals 3

    .line 639
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string/jumbo v1, "signin_domains"

    .line 642
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 648
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dZ:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/ho;->i(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    .line 650
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Allowed signin domains after formatting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method private az()V
    .locals 3

    .line 656
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "AuthPortalActivityUIOptions.systemUiVisibility"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 659
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 660
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 663
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dP:Lcom/amazon/identity/auth/device/ms;

    return-object p1
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dU:Ljava/lang/String;

    return-object p0
.end method

.method private b(Landroid/content/Intent;)V
    .locals 3

    .line 601
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/high16 v1, 0x10000

    .line 606
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x100

    .line 607
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    const/16 v1, 0x2000

    .line 608
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 610
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "AuthPortalActivityUIOptions.windowFlags"

    .line 614
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 617
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 619
    aget v2, p1, v1

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V
    .locals 1

    .line 13430
    new-instance v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$14;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)V
    .locals 0

    .line 125
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->av(Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V
    .locals 12

    .line 850
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aZ:Lcom/amazon/identity/auth/device/ds;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ds;->dg()Z

    move-result v0

    const-string v1, "directedid"

    if-eqz v0, :cond_2

    .line 854
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    .line 855
    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.amazon.dcp.sso.token.cookie.xmain"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 858
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$TokenError;->MISSING_TOKEN:Lcom/amazon/identity/auth/device/api/MAPError$TokenError;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v1, "X-MAIN should exist. There is likely a registration bug."

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/identity/auth/device/hc;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void

    .line 874
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object v0

    const-string v1, "development.amazon.com"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "x-tacbus"

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "x-main"

    const-string v1, ".amazon.com"

    :goto_0
    move-object v4, v0

    move-object v6, v1

    .line 885
    new-instance v0, Lcom/amazon/identity/auth/device/token/MAPCookie;

    .line 889
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v8, "/"

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Lcom/amazon/identity/auth/device/token/MAPCookie;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    const-string v1, "http://www.amazon.com/ap/specs/auth/confirm_credentials"

    .line 894
    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aR(Ljava/lang/String;)V

    .line 896
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/token/MAPCookie;)V

    goto :goto_1

    .line 900
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 901
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    sget-object v3, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;->HTTPS:Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;

    .line 903
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object v4

    .line 901
    invoke-static {v2, v3, v4}, Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers;->a(Landroid/os/Bundle;Lcom/amazon/identity/auth/device/endpoint/TokenRequestHelpers$PROTOCOL;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/ap/id/"

    .line 904
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 906
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 907
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aR(Ljava/lang/String;)V

    :goto_1
    const-string v0, "0"

    .line 912
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->aQ(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 915
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->e(Z)V

    return-void
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ed;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    return-object p0
.end method

.method private c(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;
    .locals 2

    .line 973
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-nez p1, :cond_0

    return-object v0

    .line 981
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    const-string/jumbo v1, "requestType"

    .line 988
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    return-object v0

    .line 995
    :cond_2
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 997
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CALLBACK_FOR_3P_LOGIN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 999
    :cond_3
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1001
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->REGISTER:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 1003
    :cond_4
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1005
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 1007
    :cond_5
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1009
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->FORGOT_PASSWORD:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 1011
    :cond_6
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1013
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CNEP:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 1015
    :cond_7
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1017
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    goto :goto_0

    .line 1019
    :cond_8
    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 1021
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->AUTHENTICATE:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    :cond_9
    :goto_0
    return-object v0
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dQ:Lcom/amazon/identity/auth/device/ms;

    return-object p1
.end method

.method static synthetic c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dU:Ljava/lang/String;

    return-object p1
.end method

.method private d(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;
    .locals 3

    if-eqz p1, :cond_1

    .line 2529
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v0, "MAP_AuthPortalUIActivity"

    .line 2530
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ej;->b(Landroid/content/Intent;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    .line 2531
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "disable_user_name_auto_suggestion"

    .line 2533
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eo:Z

    .line 2534
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ho;->F(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ea:Ljava/lang/String;

    .line 2536
    :cond_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->az()V

    .line 2537
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ax()V

    .line 2539
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->j(Landroid/os/Bundle;)V

    goto :goto_0

    .line 2543
    :cond_1
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v1, "The intent in AuthPortalUIActivity is null. This should never happen."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 2546
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_1
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    .line 2547
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/hv;->gy()Ljava/lang/String;

    move-result-object v0

    .line 2548
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v2, "code_challenge"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2549
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v1, "code_challenge_method"

    const-string v2, "S256"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2550
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string/jumbo v2, "use_code_response_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2552
    new-instance v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ef:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->c(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-direct {v0, v1, p1, v2}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;-><init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Landroid/os/Bundle;)V

    .line 2553
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->getHost()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dZ:Ljava/lang/String;

    .line 2554
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ay()V

    .line 2561
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2563
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V

    .line 2565
    :cond_3
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object p1

    sget-object v1, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->CONFIRM_CREDENTIAL:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    if-ne p1, v1, :cond_4

    .line 2567
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V

    goto :goto_2

    .line 2572
    :cond_4
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const/4 v1, 0x0

    const-string v2, "disable_user_name_pre_population"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->e(Z)V

    :goto_2
    return-object v0
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/ms;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dR:Lcom/amazon/identity/auth/device/ms;

    return-object p1
.end method

.method static synthetic d(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aC()V

    return-void
.end method

.method static synthetic e(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dV:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic f(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dV:Lcom/amazon/identity/auth/device/ms;

    return-object v0
.end method

.method private f(I)V
    .locals 2

    .line 2098
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v0, :cond_0

    .line 2100
    iget v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    .line 2101
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 2103
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/dr;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->en:Lcom/amazon/identity/auth/device/dr;

    return-object p0
.end method

.method private getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1672
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "apwebview"

    .line 1677
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic h(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic i(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eo:Z

    return p0
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "AuthPortalActivityUIOptions.aboveLockScreen"

    .line 690
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    const-string v0, "AuthPortalActivityUIOptions.requestedOrientation"

    .line 700
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 702
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 703
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_2
    const-string v0, "AuthPortalActivityUIOptions.fullscreen"

    .line 706
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 709
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_3
    return-void
.end method

.method static synthetic j(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 11

    .line 11484
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    .line 11486
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-boolean v3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eo:Z

    .line 11485
    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/fi;->a(Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Z)Ljava/lang/String;

    move-result-object v7

    .line 11489
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 11491
    iget-object v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string/jumbo v6, "map-md"

    const-string v8, "/ap"

    invoke-static/range {v4 .. v10}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method static synthetic k(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/util/Map;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aA()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private k(Landroid/os/Bundle;)V
    .locals 2

    .line 2400
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v0

    .line 2401
    new-instance v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$13;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic l(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Z
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    return p0
.end method

.method static synthetic m(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    return-object p0
.end method

.method static synthetic n(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aH()V

    return-void
.end method

.method static synthetic o(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dO:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic p(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/de;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    return-object p0
.end method

.method static synthetic q(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/util/Timer;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dW:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic r(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aD()V

    return-void
.end method

.method static synthetic s(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Landroid/webkit/WebView;
    .locals 0

    .line 125
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 1

    const/16 v0, 0x64

    .line 125
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->f(I)V

    return-void
.end method

.method static synthetic u(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dQ:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic v(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dP:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic w(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dS:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic x(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dS:Lcom/amazon/identity/auth/device/ms;

    return-object v0
.end method

.method static synthetic y(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dT:Lcom/amazon/identity/auth/device/ms;

    return-object p0
.end method

.method static synthetic z(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ms;
    .locals 1

    const/4 v0, 0x0

    .line 125
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dT:Lcom/amazon/identity/auth/device/ms;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;Lcom/amazon/identity/auth/device/dr$a;)V
    .locals 2

    .line 2590
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 2592
    new-instance v0, Lcom/amazon/identity/auth/device/dr;

    invoke-direct {v0, p4}, Lcom/amazon/identity/auth/device/dr;-><init>(Lcom/amazon/identity/auth/device/dr$a;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->en:Lcom/amazon/identity/auth/device/dr;

    const-string p4, "embedNotification"

    .line 2593
    invoke-virtual {p1, v0, p4}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2596
    new-instance p4, Lcom/amazon/identity/auth/device/fg;

    invoke-direct {p4, p1, p2, p3}, Lcom/amazon/identity/auth/device/fg;-><init>(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;)V

    const-string p2, "MAPAndroidJSBridge"

    invoke-virtual {p1, p4, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 3

    .line 2199
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2202
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2209
    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v1, 0x4

    const-string v2, "Registration canceled"

    .line 2210
    invoke-static {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/m;->b(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 2216
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aG()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2218
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v2, "AccountMissingAttributes"

    .line 2219
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2218
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2221
    :cond_0
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void

    .line 2224
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aF()V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 1175
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v1, "AuthPortalUIActivity onActivityResult()"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_2

    .line 1183
    :cond_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    invoke-virtual {p1, p2, p3}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;->a(ILandroid/content/Intent;)V

    goto :goto_2

    .line 6192
    :cond_1
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    const/4 v2, -0x1

    if-eq p2, v2, :cond_2

    goto :goto_1

    .line 6204
    :cond_2
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p2

    .line 6207
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    new-array p3, v0, [Landroid/net/Uri;

    .line 6209
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    aput-object p2, p3, p1

    goto :goto_0

    :cond_3
    move-object p3, v1

    .line 6212
    :goto_0
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    invoke-interface {p1, p3}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 6213
    iput-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    return-void

    .line 6199
    :cond_4
    :goto_1
    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    new-array p1, p1, [Landroid/net/Uri;

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 6200
    iput-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ep:Landroid/webkit/ValueCallback;

    :cond_5
    :goto_2
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 2175
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2177
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dR:Lcom/amazon/identity/auth/device/ms;

    if-eqz v0, :cond_0

    .line 2179
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->iN()V

    .line 2181
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :cond_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1409
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1413
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1420
    invoke-virtual {p1}, Landroid/webkit/WebView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    .line 1425
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Android Resource error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/NoSuchFieldError;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 25

    move-object/from16 v7, p0

    move-object/from16 v1, p1

    const-string v2, "An unexpected error occured while setting up the WebView."

    const-string v8, "directedid"

    const/4 v9, 0x0

    const/4 v10, 0x1

    .line 300
    :try_start_0
    sget-object v3, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v4, "Login webview called in package %s by package %s"

    const/4 v11, 0x2

    new-array v5, v11, [Ljava/lang/Object;

    .line 301
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 302
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v10

    .line 300
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static/range {p0 .. p0}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/app/Activity;)V

    .line 305
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v3

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    .line 306
    new-instance v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v3, v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dX:Lcom/amazon/identity/auth/device/api/MAPAccountManager;

    .line 307
    new-instance v3, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v3, v4}, Lcom/amazon/identity/auth/accounts/AmazonAccountManager;-><init>(Landroid/content/Context;)V

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->s:Lcom/amazon/identity/auth/accounts/AmazonAccountManager;

    .line 308
    iget-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    const-string/jumbo v4, "sso_platform"

    invoke-virtual {v3, v4}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/identity/auth/device/ds;

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aZ:Lcom/amazon/identity/auth/device/ds;

    .line 309
    new-instance v3, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v3, v4}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    .line 310
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    .line 311
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    .line 312
    invoke-static/range {p0 .. p0}, Lcom/amazon/identity/auth/device/mw;->bm(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ee:Ljava/lang/String;

    .line 313
    iget-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    sget-object v4, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {v3, v4}, Lcom/amazon/identity/auth/device/it;->c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bi:Ljava/lang/String;

    .line 314
    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ee:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ef:Ljava/lang/String;

    .line 3029
    new-instance v3, Lcom/amazon/identity/auth/device/hv;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/hv;-><init>()V

    .line 315
    iput-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ev:Lcom/amazon/identity/auth/device/hv;

    .line 316
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/hv;->gw()V

    .line 318
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 321
    invoke-direct {v7, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {v7, v10}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 329
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 331
    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ee:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bi:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_8

    .line 343
    :cond_0
    invoke-direct {v7, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->d(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    move-result-object v12

    const-string v3, "apwebviewlayout"

    .line 345
    invoke-static {v7, v3}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->B(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 346
    invoke-virtual {v7, v3}, Landroid/app/Activity;->setContentView(I)V

    .line 3622
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 3632
    invoke-virtual {v3, v1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 3637
    :cond_2
    invoke-virtual {v3, v9}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 3640
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 3641
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 3642
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 3643
    sget-object v4, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 3644
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 3645
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 3646
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_3

    .line 3648
    invoke-virtual {v1, v9}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 3650
    :cond_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_4

    .line 3652
    invoke-virtual {v1, v10}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 3656
    :cond_4
    invoke-virtual {v3}, Landroid/webkit/WebView;->clearFormData()V

    .line 3661
    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 3662
    sget-object v4, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current MAP Webview version:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    move-object v14, v3

    :goto_0
    if-nez v14, :cond_5

    .line 354
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 356
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    .line 354
    invoke-static {v1, v2, v3, v2}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void

    .line 360
    :cond_5
    new-instance v1, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v1, v2, v14}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;-><init>(Lcom/amazon/identity/auth/device/ej;Landroid/webkit/WebView;)V

    iput-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 364
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 366
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 367
    sget-object v2, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v3, "Directed id for ConfirmCredential has been set to "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    goto :goto_1

    .line 372
    :cond_6
    sget-object v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 4467
    :goto_1
    new-instance v2, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;

    invoke-direct {v2, v7, v12, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$10;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;Ljava/lang/String;)V

    .line 4589
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-nez v1, :cond_7

    const/16 v22, 0x0

    goto :goto_2

    .line 4595
    :cond_7
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v3, "allow_all_signin_paths"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    move/from16 v22, v1

    .line 4599
    :goto_2
    new-instance v1, Lcom/amazon/identity/auth/device/de;

    iget-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v4, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    .line 4602
    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bV()Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    move-result-object v18

    .line 4603
    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bT()Ljava/lang/String;

    move-result-object v19

    sget-object v20, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;->ACCESS:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;

    iget-object v5, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ed:Ljava/util/Set;

    iget-object v6, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    move-object v15, v1

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v21, v5

    move-object/from16 v23, v2

    move-object/from16 v24, v6

    invoke-direct/range {v15 .. v24}, Lcom/amazon/identity/auth/device/de;-><init>(Landroid/content/Context;Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Ljava/lang/String;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$TOKEN_SCOPE;Ljava/util/Set;ZLcom/amazon/identity/auth/device/de$a;Lcom/amazon/identity/auth/device/ej;)V

    iput-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    .line 4609
    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 376
    new-instance v1, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    invoke-direct {v1, v7, v11}, Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;-><init>(Landroid/app/Activity;I)V

    iput-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    .line 377
    new-instance v1, Lcom/amazon/identity/auth/device/fe;

    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v3, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-direct {v1, v2, v3}, Lcom/amazon/identity/auth/device/fe;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;)V

    iput-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->er:Lcom/amazon/identity/auth/device/fe;

    .line 380
    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eq:Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;

    new-instance v3, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;

    invoke-direct {v3, v7}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$1;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    invoke-virtual {v7, v14, v2, v1, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager;Lcom/amazon/identity/auth/device/fe;Lcom/amazon/identity/auth/device/dr$a;)V

    .line 417
    invoke-virtual {v12}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bS()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    const-string/jumbo v3, "sid"

    const-string v4, "/"

    .line 4738
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 4735
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4809
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    .line 4813
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4814
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 4819
    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bg:Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;

    const-string v3, "com.amazon.dcp.sso.token.cookie.sid"

    .line 4820
    invoke-virtual {v2, v1, v3}, Lcom/amazon/identity/auth/device/storage/BackwardsCompatiableDataStorage;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 4821
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 4826
    iget-object v15, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    const-string/jumbo v17, "sid"

    const-string v19, "/"

    .line 4831
    invoke-static {}, Lcom/amazon/identity/auth/device/hx;->gB()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move-object/from16 v16, v1

    .line 4826
    invoke-static/range {v15 .. v21}, Lcom/amazon/identity/auth/device/jk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 423
    :cond_8
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ee:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->et:Ljava/lang/String;

    .line 426
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->av(Ljava/lang/String;)V

    .line 428
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aw(Ljava/lang/String;)V

    .line 431
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    .line 5032
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->OFF:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    .line 5033
    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->BOTTOM_CENTER:Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    .line 5034
    iput-boolean v10, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    const/4 v4, -0x1

    if-eqz v1, :cond_b

    const-string/jumbo v5, "progressbar_state"

    .line 5045
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 5048
    invoke-static {v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    move-result-object v2

    :cond_9
    const-string/jumbo v5, "progressbar_position"

    .line 5051
    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 5054
    invoke-static {v5}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    move-result-object v3

    :cond_a
    const-string/jumbo v5, "progressbar_fade"

    .line 5057
    iget-boolean v6, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    const-string/jumbo v5, "progressbar_stretch"

    .line 5058
    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v6, "progressbar_invert_spinner"

    .line 5059
    invoke-virtual {v1, v6, v9}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    const-string/jumbo v8, "progressbar_resource"

    .line 5061
    invoke-virtual {v1, v8, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v15, "progressbar_background_resource"

    .line 5063
    invoke-virtual {v1, v15, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v15

    const-string/jumbo v9, "progressbar_primary_color"

    .line 5065
    invoke-virtual {v1, v9, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v13, "progressbar_secondary_color"

    .line 5066
    invoke-virtual {v1, v13, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_3

    :cond_b
    const/4 v1, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v15, -0x1

    :goto_3
    const-string v13, "approgressbar"

    .line 5069
    invoke-static {v7, v13}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v13

    iput v13, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    .line 5070
    invoke-virtual {v7, v13}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ProgressBar;

    .line 5071
    invoke-virtual {v13}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 5074
    sget-object v18, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$6;->eE:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v19

    aget v11, v18, v19

    move-object/from16 v18, v12

    if-eq v11, v10, :cond_d

    const/4 v12, 0x2

    if-eq v11, v12, :cond_c

    .line 5139
    iput-boolean v10, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    .line 5141
    invoke-direct {v7, v2, v6}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;Z)I

    move-result v1

    const/4 v2, -0x2

    .line 5144
    iput v2, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v2, 0x8

    .line 5151
    invoke-virtual {v13, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 5152
    new-instance v13, Landroid/widget/ProgressBar;

    const/4 v2, 0x0

    invoke-direct {v13, v7, v2, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 5154
    invoke-direct/range {p0 .. p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aI()Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v13}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-string v1, "apspinner_progressbar"

    .line 5156
    invoke-static {v7, v1}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 5157
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setId(I)V

    .line 5160
    iput v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    goto/16 :goto_5

    :cond_c
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 5130
    iput-boolean v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    const/16 v1, 0x8

    .line 5132
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    .line 5077
    iput-boolean v10, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v5, :cond_e

    const/4 v5, -0x1

    .line 5082
    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_4

    :cond_e
    const/4 v5, -0x1

    const/4 v6, -0x2

    .line 5086
    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    :goto_4
    const/4 v6, 0x3

    if-eq v5, v8, :cond_10

    .line 5092
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 5093
    new-instance v8, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v8, v1, v6, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 5094
    invoke-virtual {v13, v8}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eq v5, v15, :cond_f

    .line 5098
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 5099
    invoke-virtual {v13, v5}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5103
    :cond_f
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    iput v1, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_5

    :cond_10
    if-eq v5, v9, :cond_12

    if-ne v5, v1, :cond_11

    move v1, v9

    :cond_11
    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v8, 0x0

    aput v9, v5, v8

    aput v1, v5, v10

    .line 5116
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v9, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v9, v5}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 5117
    invoke-virtual {v1, v8}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const/high16 v5, 0x40a00000    # 5.0f

    .line 5119
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 5121
    new-instance v5, Landroid/graphics/drawable/ClipDrawable;

    invoke-direct {v5, v1, v6, v10}, Landroid/graphics/drawable/ClipDrawable;-><init>(Landroid/graphics/drawable/Drawable;II)V

    .line 5122
    invoke-virtual {v13, v5}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5123
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x108006c

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5164
    :cond_12
    :goto_5
    iget-boolean v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v1, :cond_13

    .line 5166
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/widget/RelativeLayout$LayoutParams;Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v1

    .line 5167
    invoke-virtual {v13, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5168
    invoke-virtual {v13}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 5221
    :cond_13
    new-instance v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;

    invoke-direct {v1, v7}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$9;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    invoke-virtual {v14, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 434
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v3, "apimageview"

    .line 5374
    invoke-static {v7, v3}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    .line 5375
    invoke-virtual {v7, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    if-eqz v1, :cond_14

    const-string/jumbo v2, "splashscreen_resource"

    const/4 v4, -0x1

    .line 5379
    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v2, "splashscreen_scale_type"

    .line 5380
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const/4 v1, -0x1

    goto :goto_6

    :cond_14
    move-object v13, v2

    const/4 v1, -0x1

    const/4 v5, -0x1

    :goto_6
    if-ne v1, v5, :cond_15

    const/16 v1, 0x8

    .line 5386
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    .line 5387
    invoke-virtual {v14, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 5388
    invoke-virtual {v14}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    goto :goto_7

    .line 5392
    :cond_15
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 5393
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 5395
    invoke-static {v13}, Landroid/widget/ImageView$ScaleType;->valueOf(Ljava/lang/String;)Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 437
    :cond_16
    :goto_7
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v2, "domain_hint"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v2, "ab_federated_auth"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 439
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 440
    iget v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    add-int/2addr v1, v10

    iput v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    .line 441
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v2, "color_code"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 442
    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v7, v2, v1}, Lcom/amazon/identity/auth/device/bw;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "chromeCustomTabLaunch:OpenFederatedAuthRegistrationRequest:Url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 444
    sget-object v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Opening in chrome custom tab - url="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v18 .. v18}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 448
    :cond_17
    iget-object v1, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 449
    iput v2, v7, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    .line 450
    new-instance v1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;

    move-object/from16 v2, v18

    invoke-direct {v1, v7, v14, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$7;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;)V

    invoke-static {v1}, Lcom/amazon/identity/auth/device/jf;->e(Ljava/lang/Runnable;)V

    return-void

    .line 335
    :cond_18
    :goto_8
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const-string v2, "An unexpected error occurred while setting up the WebView. Cannot fetch client id. If this is an unregistered Grover device or Canary device, this error is expected."

    sget-object v3, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 337
    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    const-string v4, "An unexpected error occured while setting up the WebView. Cannot fetch client id! If it is an unregistered Grover(versions lesser than )/Canary(all version) device, it is expected."

    .line 335
    invoke-static {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v1, v0

    .line 474
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v10, [Ljava/lang/Object;

    .line 475
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "An Exception was thrown with message: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 476
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    .line 477
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v2, v3, v4, v1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void

    :catch_1
    move-exception v0

    move-object v1, v0

    .line 465
    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    new-array v3, v10, [Ljava/lang/Object;

    .line 466
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "An IllegalArgumentException was thrown with message: %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->BAD_REQUEST:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 467
    invoke-virtual {v4}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v4

    .line 468
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 465
    invoke-static {v2, v3, v4, v1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 8

    .line 1432
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1434
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    if-eqz v0, :cond_0

    .line 1436
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->L(Landroid/content/Context;)V

    .line 6744
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 6746
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 6748
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const-string v4, "frc"

    const-string v5, "/ap"

    move-object v2, p0

    .line 6750
    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6752
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eu:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 6758
    :cond_2
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ec:Ljava/lang/String;

    if-eqz v2, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "map-md"

    const-string v4, "/ap"

    move-object v1, p0

    .line 6760
    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1443
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_4

    .line 1445
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 1449
    :cond_4
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aH()V

    .line 1451
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    if-eqz v0, :cond_5

    .line 1453
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aI()Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1454
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 1455
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    const/4 v0, 0x0

    .line 1456
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    .line 1459
    :cond_5
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1709
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cI()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_0

    .line 1711
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v1, "MFA canceled"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1712
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "MFACanceled"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 1714
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->el:Lcom/amazon/identity/auth/device/de;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/de;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_1

    .line 1716
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const-string v1, "DCQ canceled"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 1717
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v1, "DCQCanceled"

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 1723
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 1729
    sget-object p1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->INTERNAL_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object p2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 1731
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result p2

    const-string v0, "An unexpected error occured while setting up the WebView."

    .line 1729
    invoke-static {p1, v0, p2, v0}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->k(Landroid/os/Bundle;)V

    return v1

    .line 1737
    :cond_2
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1745
    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 1746
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-lez v2, :cond_4

    .line 1749
    invoke-virtual {p1}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {p1, v2}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1752
    invoke-virtual {p1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object p1

    .line 1754
    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v2, p1, v3}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    const/4 p1, -0x2

    .line 1756
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1758
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    return p2

    .line 1766
    :cond_3
    sget-object p1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string v0, "Cannot go the the page before previous page. Something is wrong."

    const-string v2, "SkipAutoPhoneVerificationPageError"

    invoke-static {p1, p2, v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Ljava/lang/String;Ljava/lang/String;)V

    .line 1770
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->finish()V

    return v1

    .line 1776
    :cond_4
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    return p2

    .line 1781
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 7

    .line 2230
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 2231
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 2232
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "Existing login webview called in package %s by package %s"

    .line 2230
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2233
    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->a(Landroid/app/Activity;)V

    .line 2235
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aE()Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    move-result-object v0

    .line 2239
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10366
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v5, "/ap/maplanding"

    invoke-static {v2, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_2

    .line 2242
    iget p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    .line 11297
    new-instance p1, Lcom/amazon/identity/auth/device/cm;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/amazon/identity/auth/device/cm;-><init>(Ljava/lang/String;)V

    .line 11298
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->es:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11299
    iput-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->dY:Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;

    .line 11300
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 11302
    iput-boolean v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    .line 11303
    iput-boolean v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    const-string/jumbo v0, "spinner_medium"

    .line 11306
    invoke-static {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;->get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;

    move-result-object v0

    const-string v2, "center_center"

    .line 11308
    invoke-static {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;->get(Ljava/lang/String;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;

    move-result-object v2

    .line 11309
    iput-boolean v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ei:Z

    .line 11311
    invoke-direct {p0, v0, v3}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ProgressBarState;Z)I

    move-result v0

    .line 11313
    iget v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    .line 11314
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x2

    .line 11317
    iput v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/16 v6, 0x8

    .line 11324
    invoke-virtual {v4, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 11325
    new-instance v4, Landroid/widget/ProgressBar;

    invoke-direct {v4, p0, v1, v0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 11327
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aI()Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    const-string v0, "apspinner_progressbar"

    .line 11329
    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/utils/ResourceHelper;->z(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 11330
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setId(I)V

    .line 11333
    iput v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ej:I

    .line 11335
    iget-boolean v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eg:Z

    if-eqz v0, :cond_1

    .line 11337
    invoke-static {v5, v2}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Landroid/widget/RelativeLayout$LayoutParams;Lcom/amazon/identity/auth/device/api/MAPAccountManager$AuthPortalActivityUIOptions$ScreenPosition;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 11338
    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 11339
    invoke-virtual {v4}, Landroid/widget/ProgressBar;->bringToFront()V

    .line 11342
    :cond_1
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->aD()V

    .line 11343
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const/16 v0, 0x3c

    .line 11345
    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->f(I)V

    .line 11346
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->em:Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/framework/MAPSmsReceiver;->de()V

    .line 11347
    sget-object v0, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;->SIGN_IN:Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;

    invoke-direct {p0, v0, p1, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest$REQUEST_TYPE;Lcom/amazon/identity/auth/device/cm;Ljava/lang/String;)V

    new-array p1, v3, [Ljava/lang/String;

    const-string v0, "federatedAuthenticationCallbackUrlSuccess"

    .line 2244
    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2245
    sget-object p1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 2254
    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->OPERATION_CANCELLED:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    const/4 v2, 0x4

    const-string v5, "Registration canceled"

    invoke-static {v1, v5, v2, v5}, Lcom/amazon/identity/auth/device/m;->b(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/callback/RemoteCallbackWrapper;->onError(Landroid/os/Bundle;)V

    .line 2260
    :cond_3
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Landroid/content/Intent;)V

    .line 2262
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->d(Landroid/content/Intent;)Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;

    move-result-object p1

    .line 2265
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "ab_federated_auth"

    .line 11384
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "domain_hint"

    .line 11385
    invoke-virtual {v0, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "true"

    .line 11386
    invoke-virtual {v5, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_5

    .line 2268
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_6

    .line 2270
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2271
    iget p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    add-int/2addr p1, v4

    iput p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    .line 2272
    iget-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eb:Landroid/os/Bundle;

    const-string v1, "color_code"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2273
    invoke-static {p0, v0, p1}, Lcom/amazon/identity/auth/device/bw;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    .line 2274
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "chromeCustomTabLaunch:OpenFederatedAuthRegistrationRequest:Url="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2275
    sget-object p1, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Opening in chrome custom tab - url="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    return-void

    .line 2280
    :cond_5
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2281
    iput v3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    .line 2282
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/endpoint/OpenIdRequest;->bR()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 550
    invoke-static {p1}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->i(I)Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 555
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->en:Lcom/amazon/identity/auth/device/dr;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ek:Landroid/webkit/WebView;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->bO:Lcom/amazon/identity/auth/device/ej;

    iget-boolean v5, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->eo:Z

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/identity/auth/device/framework/MAPRuntimePermissionHandler;->a(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/dr;Landroid/webkit/WebView;Lcom/amazon/identity/auth/device/ej;Z)V

    return-void

    .line 563
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    .line 2756
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2757
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ew:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2759
    iget v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->ex:I

    if-gez v0, :cond_0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "chromeCustomTabClosed:CloseFederatedAuthRegistrationRequest"

    .line 2762
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 2763
    sget-object v0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2764
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->onBackPressed()V

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1685
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1686
    invoke-direct {p0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1689
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    :cond_0
    return-void
.end method
