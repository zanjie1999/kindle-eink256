.class Lcom/facebook/AuthorizationClient$WebViewAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebViewAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private applicationId:Ljava/lang/String;

.field private e2e:Ljava/lang/String;

.field private transient loginDialog:Lcom/facebook/widget/WebDialog;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method

.method private loadCookieToken()Ljava/lang/String;
    .locals 3

    .line 692
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    .line 693
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "TOKEN"

    const-string v2, ""

    .line 696
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private saveCookieToken(Ljava/lang/String;)V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v0}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.facebook.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY"

    const/4 v2, 0x0

    .line 681
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 684
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "TOKEN"

    .line 685
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 686
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "Facebook-AuthorizationClient"

    const-string v0, "Could not update saved web view auth handler token."

    .line 687
    invoke-static {p1, v0}, Lcom/facebook/internal/Utility;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 584
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    if-eqz v0, :cond_0

    .line 585
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->dismiss()V

    const/4 v0, 0x0

    .line 586
    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "web_view"

    return-object v0
.end method

.method needsInternetPermission()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method needsRestart()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method onWebDialogComplete(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 2

    if-eqz p2, :cond_1

    const-string p3, "e2e"

    .line 640
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    .line 644
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object p1

    sget-object p3, Lcom/facebook/AccessTokenSource;->WEB_VIEW:Lcom/facebook/AccessTokenSource;

    invoke-static {p1, p2, p3}, Lcom/facebook/AccessToken;->createFromWebBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object p1

    .line 646
    iget-object p2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object p2, p2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {p2, p1}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object p2

    .line 651
    iget-object p3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object p3, p3, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {p3}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object p3

    .line 652
    invoke-virtual {p3}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 653
    invoke-virtual {p1}, Lcom/facebook/AccessToken;->getToken()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->saveCookieToken(Ljava/lang/String;)V

    goto :goto_1

    .line 655
    :cond_1
    instance-of p1, p3, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz p1, :cond_2

    .line 656
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object p1, p1, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    const-string p2, "User canceled log in."

    invoke-static {p1, p2}, Lcom/facebook/AuthorizationClient$Result;->createCancelResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 659
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    .line 662
    invoke-virtual {p3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    .line 663
    instance-of v0, p3, Lcom/facebook/FacebookServiceException;

    if-eqz v0, :cond_3

    .line 664
    check-cast p3, Lcom/facebook/FacebookServiceException;

    invoke-virtual {p3}, Lcom/facebook/FacebookServiceException;->getRequestError()Lcom/facebook/FacebookRequestError;

    move-result-object p2

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 665
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p3, v0

    const-string v0, "%d"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 666
    invoke-virtual {p2}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_3
    move-object p3, p1

    .line 668
    :goto_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v0, v0, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {v0, p1, p2, p3}, Lcom/facebook/AuthorizationClient$Result;->createErrorResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object p2

    .line 672
    :goto_1
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 673
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object p3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-static {p1, p3, v0}, Lcom/facebook/AuthorizationClient;->access$200(Lcom/facebook/AuthorizationClient;Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    :cond_4
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1, p2}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    return-void
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 5

    .line 592
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    .line 593
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 594
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 595
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    const-string v2, ","

    invoke-static {v2, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "scope"

    .line 596
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    invoke-virtual {p0, v2, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 600
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getDefaultAudience()Lcom/facebook/SessionDefaultAudience;

    move-result-object v1

    .line 601
    invoke-virtual {v1}, Lcom/facebook/SessionDefaultAudience;->getNativeProtocolAudience()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_audience"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPreviousAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 604
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "access_token"

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loadCookieToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 605
    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    .line 607
    invoke-virtual {p0, v3, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->clearFacebookCookies(Landroid/content/Context;)V

    const-string v1, "0"

    .line 611
    invoke-virtual {p0, v3, v1}, Lcom/facebook/AuthorizationClient$AuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 614
    :goto_0
    new-instance v1, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/AuthorizationClient$WebViewAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$WebViewAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 621
    invoke-static {}, Lcom/facebook/AuthorizationClient;->access$100()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    const-string v3, "e2e"

    .line 622
    invoke-virtual {p0, v3, v2}, Lcom/facebook/AuthorizationClient$AuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 624
    new-instance v2, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    iget-object v3, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {v3}, Lcom/facebook/AuthorizationClient;->getStartActivityDelegate()Lcom/facebook/AuthorizationClient$StartActivityDelegate;

    move-result-object v3

    invoke-interface {v3}, Lcom/facebook/AuthorizationClient$StartActivityDelegate;->getActivityContext()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->applicationId:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->e2e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setE2E(Ljava/lang/String;)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->isRerequest()Z

    move-result p1

    invoke-virtual {v2, p1}, Lcom/facebook/AuthorizationClient$AuthDialogBuilder;->setIsRerequest(Z)Lcom/facebook/AuthorizationClient$AuthDialogBuilder;

    invoke-virtual {v2, v1}, Lcom/facebook/widget/WebDialog$Builder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    check-cast v2, Lcom/facebook/widget/WebDialog$Builder;

    .line 629
    invoke-virtual {v2}, Lcom/facebook/widget/WebDialog$Builder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/AuthorizationClient$WebViewAuthHandler;->loginDialog:Lcom/facebook/widget/WebDialog;

    .line 630
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    const/4 p1, 0x1

    return p1
.end method
