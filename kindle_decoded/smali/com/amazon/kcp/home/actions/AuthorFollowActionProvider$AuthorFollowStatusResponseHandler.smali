.class public final Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;
.source "AuthorFollowActionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorFollowStatusResponseHandler"
.end annotation


# instance fields
.field private final args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    return-object p0
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 2

    .line 207
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    .line 209
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAction()Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "AuthorFollowStatusRequestError"

    const-string v3, "com.amazon.kcp.home.actions.AuthorFollowActionProvider"

    .line 155
    iget-object v0, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v4, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v4

    iget-object v5, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAction()Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v5

    invoke-virtual {v1, v0, v4, v5}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    move-result v0

    const/4 v4, 0x0

    const-string v5, "AuthorFollowStatusRequestHttpError"

    if-nez v0, :cond_0

    .line 156
    invoke-virtual {v1, v5, v4}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 160
    invoke-virtual {v1, v5, v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 163
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getGSON()Lcom/google/gson/Gson;

    move-result-object v5

    new-instance v6, Ljava/io/InputStreamReader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v7, p1

    :try_start_1
    invoke-direct {v6, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 164
    const-class v8, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;

    .line 163
    invoke-virtual {v5, v6, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 180
    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Prestatus response - csrf:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->getCsrf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFollowing:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->isFollowing()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    invoke-static {v3, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->isFollowing()Z

    move-result v0

    const-string v2, "Utils.getFactory()"

    if-eqz v0, :cond_1

    .line 186
    new-instance v0, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;

    .line 187
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAuthorAsin()Ljava/lang/String;

    move-result-object v7

    .line 188
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getReftag()Ljava/lang/String;

    move-result-object v8

    .line 189
    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->getCsrf()Ljava/lang/String;

    move-result-object v9

    .line 190
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getLinkParams()Ljava/lang/String;

    move-result-object v10

    .line 191
    new-instance v11, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;

    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-direct {v11, v3}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorUnfollowResponseHandler;-><init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;)V

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0xe0

    const/16 v16, 0x0

    move-object v6, v0

    .line 186
    invoke-direct/range {v6 .. v16}, Lcom/amazon/kcp/home/api/AuthorUnfollowRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 193
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_0

    .line 195
    :cond_1
    new-instance v0, Lcom/amazon/kcp/home/api/AuthorFollowRequest;

    .line 196
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAuthorAsin()Ljava/lang/String;

    move-result-object v4

    .line 197
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getReftag()Ljava/lang/String;

    move-result-object v6

    .line 198
    invoke-virtual {v5}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->getCsrf()Ljava/lang/String;

    move-result-object v7

    .line 199
    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getLinkParams()Ljava/lang/String;

    move-result-object v8

    .line 200
    new-instance v9, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;

    iget-object v3, v1, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-direct {v9, v3}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;-><init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xe0

    const/4 v14, 0x0

    move-object v3, v0

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object v11, v12

    move v12, v13

    move-object v13, v14

    .line 195
    invoke-direct/range {v3 .. v13}, Lcom/amazon/kcp/home/api/AuthorFollowRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/webservices/BaseResponseHandler;Lcom/amazon/kcp/home/debug/SidekickSettings;Lcom/amazon/kcp/application/Marketplace;Landroid/net/Uri$Builder;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 202
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v7, p1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v7, p1

    :goto_1
    :try_start_2
    const-string v5, "Failing author follow card - couldn\'t get follow status"

    .line 166
    invoke-static {v3, v5, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getH()Landroid/os/Handler;

    move-result-object v0

    new-instance v3, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler$onInputStream$response$1;

    invoke-direct {v3, v1}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler$onInputStream$response$1;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowStatusResponseHandler;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    invoke-virtual {v1, v2, v4}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 177
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_2
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
