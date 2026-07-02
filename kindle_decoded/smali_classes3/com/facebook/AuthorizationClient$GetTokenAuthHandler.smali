.class Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;
.super Lcom/facebook/AuthorizationClient$AuthHandler;
.source "AuthorizationClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AuthorizationClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetTokenAuthHandler"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private transient getTokenClient:Lcom/facebook/GetTokenClient;

.field final synthetic this$0:Lcom/facebook/AuthorizationClient;


# direct methods
.method constructor <init>(Lcom/facebook/AuthorizationClient;)V
    .locals 0

    .line 700
    iput-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-direct {p0, p1}, Lcom/facebook/AuthorizationClient$AuthHandler;-><init>(Lcom/facebook/AuthorizationClient;)V

    return-void
.end method


# virtual methods
.method cancel()V
    .locals 1

    .line 711
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    if-eqz v0, :cond_0

    .line 712
    invoke-virtual {v0}, Lcom/facebook/internal/PlatformServiceClient;->cancel()V

    const/4 v0, 0x0

    .line 713
    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    :cond_0
    return-void
.end method

.method getNameForLogging()Ljava/lang/String;
    .locals 1

    const-string v0, "get_token"

    return-object v0
.end method

.method getTokenCompleted(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    .line 744
    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 746
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->access$000(Lcom/facebook/AuthorizationClient;)V

    if-eqz p2, :cond_5

    const-string v0, "com.facebook.platform.extra.PERMISSIONS"

    .line 749
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 750
    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getPermissions()Ljava/util/List;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_0

    .line 751
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 754
    :cond_0
    sget-object p1, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_SERVICE:Lcom/facebook/AccessTokenSource;

    invoke-static {p2, p1}, Lcom/facebook/AccessToken;->createFromNativeLogin(Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;)Lcom/facebook/AccessToken;

    move-result-object p1

    .line 756
    iget-object p2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object p2, p2, Lcom/facebook/AuthorizationClient;->pendingRequest:Lcom/facebook/AuthorizationClient$AuthorizationRequest;

    invoke-static {p2, p1}, Lcom/facebook/AuthorizationClient$Result;->createTokenResult(Lcom/facebook/AuthorizationClient$AuthorizationRequest;Lcom/facebook/AccessToken;)Lcom/facebook/AuthorizationClient$Result;

    move-result-object p1

    .line 757
    iget-object p2, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p2, p1}, Lcom/facebook/AuthorizationClient;->completeAndValidate(Lcom/facebook/AuthorizationClient$Result;)V

    return-void

    .line 763
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 764
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 765
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 766
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 769
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ","

    .line 770
    invoke-static {v0, p2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "new_permissions"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/AuthorizationClient$AuthHandler;->addLoggingExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 773
    :cond_4
    invoke-virtual {p1, p2}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->setPermissions(Ljava/util/List;)V

    .line 776
    :cond_5
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient;->tryNextHandler()V

    return-void
.end method

.method needsRestart()Z
    .locals 1

    .line 721
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method tryAuthorize(Lcom/facebook/AuthorizationClient$AuthorizationRequest;)Z
    .locals 3

    .line 725
    new-instance v0, Lcom/facebook/GetTokenClient;

    iget-object v1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    iget-object v1, v1, Lcom/facebook/AuthorizationClient;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/facebook/AuthorizationClient$AuthorizationRequest;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/GetTokenClient;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    .line 726
    invoke-virtual {v0}, Lcom/facebook/internal/PlatformServiceClient;->start()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 730
    :cond_0
    iget-object v0, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->this$0:Lcom/facebook/AuthorizationClient;

    invoke-static {v0}, Lcom/facebook/AuthorizationClient;->access$300(Lcom/facebook/AuthorizationClient;)V

    .line 732
    new-instance v0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;

    invoke-direct {v0, p0, p1}, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler$1;-><init>(Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;Lcom/facebook/AuthorizationClient$AuthorizationRequest;)V

    .line 739
    iget-object p1, p0, Lcom/facebook/AuthorizationClient$GetTokenAuthHandler;->getTokenClient:Lcom/facebook/GetTokenClient;

    invoke-virtual {p1, v0}, Lcom/facebook/internal/PlatformServiceClient;->setCompletedListener(Lcom/facebook/internal/PlatformServiceClient$CompletedListener;)V

    const/4 p1, 0x1

    return p1
.end method
