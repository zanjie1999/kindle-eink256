.class final Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;
.super Lkotlin/jvm/internal/Lambda;
.source "HomeFeedManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->makeHomeFeedRequest(ZLcom/amazon/kcp/home/feeds/FeedResponseHandler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $responseHandler:Lcom/amazon/kcp/home/feeds/FeedResponseHandler;

.field final synthetic this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/feeds/FeedResponseHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    iput-object p2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->$responseHandler:Lcom/amazon/kcp/home/feeds/FeedResponseHandler;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 9

    .line 196
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getAuthenticationManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    const-string v1, "authenticationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getAuthenticationManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->getAccountInfo()Lcom/amazon/kindle/services/authentication/IAccountInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/services/authentication/DefaultAccount;->isDefaultAccount(Lcom/amazon/kindle/services/authentication/IAccountInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.amazon.kcp.home.feeds.HomeFeedManager"

    const-string v1, "Not authenticated, failing home feed request"

    .line 197
    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$switchToEmptyFeedIfNotYetInitialized(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->$responseHandler:Lcom/amazon/kcp/home/feeds/FeedResponseHandler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/amazon/kcp/home/feeds/FeedResponseHandler;->onResponse(Lcom/amazon/kcp/home/models/voltron/SidekickResponse;)V

    :cond_0
    return-void

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$recentAsinsFromLibrary(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$setLastRecentAsins$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Ljava/util/Collection;)V

    .line 205
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getAuthenticationManager$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->fetchToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v2

    .line 206
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    new-instance v8, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    const-string/jumbo v1, "marketplace"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getLastRecentAsins$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;

    invoke-direct {v5, p0}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1$1;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, v8

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-static {v0, v8}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$setCurrentRequest$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)V

    .line 209
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl$makeHomeFeedRequest$1;->this$0:Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;

    invoke-static {v1}, Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;->access$getCurrentRequest$p(Lcom/amazon/kcp/home/feeds/HomeFeedManagerImpl;)Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method
