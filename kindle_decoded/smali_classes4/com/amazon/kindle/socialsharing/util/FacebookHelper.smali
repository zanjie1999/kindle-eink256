.class public Lcom/amazon/kindle/socialsharing/util/FacebookHelper;
.super Ljava/lang/Object;
.source "FacebookHelper.java"


# static fields
.field private static final FACEBOOK_TYPE_FORMATTER:Ljava/lang/String; = "%s:%s"

.field private static final LOG_TAG:Ljava/lang/String;

.field protected static instance:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;


# instance fields
.field private callingActivity:Landroid/app/Activity;

.field protected fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

.field private final kindleDomain:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocialSharing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "amazonreader"

    .line 40
    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->kindleDomain:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/socialsharing/util/FacebookHelper;)Landroid/app/Activity;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->callingActivity:Landroid/app/Activity;

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/kindle/socialsharing/util/FacebookHelper;
    .locals 1

    .line 47
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->instance:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;-><init>()V

    sput-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->instance:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    .line 51
    :cond_0
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->instance:Lcom/amazon/kindle/socialsharing/util/FacebookHelper;

    return-object v0
.end method


# virtual methods
.method public createLifecycleHelper(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 2

    .line 62
    new-instance v0, Lcom/facebook/UiLifecycleHelper;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    iput-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    .line 64
    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 65
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->callingActivity:Landroid/app/Activity;

    return-void
.end method

.method public initializeActivityResult(IILandroid/content/Intent;)V
    .locals 2

    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->callingActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    new-instance v1, Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/socialsharing/util/FacebookHelper$1;-><init>(Lcom/amazon/kindle/socialsharing/util/FacebookHelper;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;Lcom/facebook/widget/FacebookDialog$Callback;)V

    return-void
.end method

.method public logoutUserFromWebDialog()V
    .locals 3

    .line 186
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    if-nez v0, :cond_0

    .line 190
    invoke-static {}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 192
    new-instance v0, Lcom/facebook/Session;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    :cond_0
    if-eqz v0, :cond_1

    .line 196
    sget-object v1, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Logging out of the Facebook web dialog"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->fbLifecycleHelper:Lcom/facebook/UiLifecycleHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_0
    .catch Lcom/facebook/FacebookException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 123
    sget-object v0, Lcom/amazon/kindle/socialsharing/util/FacebookHelper;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unable to save Facebook state"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
