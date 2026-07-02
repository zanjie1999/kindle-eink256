.class public Lcom/facebook/LoginActivity;
.super Landroid/app/Activity;
.source "LoginActivity.java"


# static fields
.field private static final EXTRA_REQUEST:Ljava/lang/String; = "request"

.field private static final NULL_CALLING_PKG_ERROR_MSG:Ljava/lang/String; = "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

.field static final RESULT_KEY:Ljava/lang/String; = "com.facebook.LoginActivity:Result"

.field private static final SAVED_AUTH_CLIENT:Ljava/lang/String; = "authorizationClient"

.field private static final SAVED_CALLING_PKG_KEY:Ljava/lang/String; = "callingPackage"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private authorizationClient:Lcom/facebook/AuthorizationClient;

.field private callingPackage:Ljava/lang/String;

.field private request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    const-class v0, Lcom/facebook/LoginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/facebook/LoginActivity;Lcom/facebook/AuthorizationClient$Result;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/facebook/LoginActivity;->onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method private onAuthClientCompleted(Lcom/facebook/AuthorizationClient$Result;)V
    .locals 3

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 91
    iget-object v0, p1, Lcom/facebook/AuthorizationClient$Result;->code:Lcom/facebook/AuthorizationClient$Result$Code;

    sget-object v1, Lcom/facebook/AuthorizationClient$Result$Code;->CANCEL:Lcom/facebook/AuthorizationClient$Result$Code;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 94
    :goto_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "com.facebook.LoginActivity:Result"

    .line 95
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 97
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 98
    invoke-virtual {p1, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 99
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 101
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method static populateIntentExtras(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Landroid/os/Bundle;
    .locals 2

    .line 142
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request"

    .line 143
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient;->onActivityResult(IILandroid/content/Intent;)Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget v0, Lcom/facebook/android/R$layout;->com_facebook_login_activity_layout:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    if-eqz p1, :cond_0

    const-string v0, "callingPackage"

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    const-string v0, "authorizationClient"

    .line 61
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/AuthorizationClient;

    iput-object p1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    .line 64
    new-instance p1, Lcom/facebook/AuthorizationClient;

    invoke-direct {p1}, Lcom/facebook/AuthorizationClient;-><init>()V

    iput-object p1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    iput-object p1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    .line 68
    :goto_0
    iget-object p1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1, p0}, Lcom/facebook/AuthorizationClient;->setContext(Landroid/app/Activity;)V

    .line 69
    iget-object p1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v0, Lcom/facebook/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/facebook/LoginActivity$1;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/facebook/AuthorizationClient;->setOnCompletedListener(Lcom/facebook/AuthorizationClient$OnCompletedListener;)V

    .line 75
    iget-object p1, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    new-instance v0, Lcom/facebook/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/facebook/LoginActivity$2;-><init>(Lcom/facebook/LoginActivity;)V

    invoke-virtual {p1, v0}, Lcom/facebook/AuthorizationClient;->setBackgroundProcessingListener(Lcom/facebook/AuthorizationClient$BackgroundProcessingListener;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 124
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->cancelCurrentHandler()V

    .line 125
    sget v0, Lcom/facebook/android/R$id;->com_facebook_login_activity_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 106
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 111
    iget-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 112
    sget-object v0, Lcom/facebook/LoginActivity;->TAG:Ljava/lang/String;

    const-string v1, "Cannot call LoginActivity with a null calling package. This can occur if the launchMode of the caller is singleInstance."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    iget-object v1, p0, Lcom/facebook/LoginActivity;->request:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-virtual {v0, v1}, Lcom/facebook/AuthorizationClient;->startOrContinueAuth(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 130
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 132
    iget-object v0, p0, Lcom/facebook/LoginActivity;->callingPackage:Ljava/lang/String;

    const-string v1, "callingPackage"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/facebook/LoginActivity;->authorizationClient:Lcom/facebook/AuthorizationClient;

    const-string v1, "authorizationClient"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method
