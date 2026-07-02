.class public final Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;
.source "AuthorFollowActionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorFollowResponseHandler"
.end annotation


# instance fields
.field private final args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;)V
    .locals 1

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 221
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    return-void
.end method

.method public static final synthetic access$getArgs$p(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;)Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;
    .locals 0

    .line 221
    iget-object p0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    return-object p0
.end method


# virtual methods
.method public onHttpStatusCodeReceived(I)V
    .locals 2

    .line 258
    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->onHttpStatusCodeReceived(I)V

    .line 260
    iget-object p1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAction()Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    move-result p1

    if-nez p1, :cond_0

    :cond_0
    return-void
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 7

    const-string v0, "AuthorFollowRequestError"

    const-string v1, "com.amazon.kcp.home.actions.AuthorFollowActionProvider"

    .line 223
    iget-object v2, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getCallback()Lkotlin/jvm/functions/Function3;

    move-result-object v3

    iget-object v4, p0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;->args:Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler$Args;->getAction()Lcom/amazon/kindle/home/model/HomeAction;

    move-result-object v4

    invoke-virtual {p0, v2, v3, v4}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->isHttpUrlConnectionOk(Landroid/view/View;Lkotlin/jvm/functions/Function3;Lcom/amazon/kindle/home/model/HomeAction;)Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "AuthorFollowRequestHttpError"

    if-nez v2, :cond_0

    .line 224
    invoke-virtual {p0, v4, v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v2, 0x1

    .line 228
    invoke-virtual {p0, v4, v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 231
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getGSON()Lcom/google/gson/Gson;

    move-result-object v4

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 232
    const-class v6, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;

    .line 231
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 248
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 250
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Follow response - entity_id:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->getEntity_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " category:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/amazon/kcp/home/api/AuthorFollowUpdateStatusSuccessResponse;->getCategory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getH()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler$onInputStream$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler$onInputStream$1;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v4, "Failing author follow card - error in response"

    .line 234
    invoke-static {v1, v4, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 235
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getH()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler$onInputStream$response$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler$onInputStream$response$1;-><init>(Lcom/amazon/kcp/home/actions/AuthorFollowActionProvider$AuthorFollowResponseHandler;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 241
    invoke-virtual {p0, v0, v3}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 245
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    return-void

    :goto_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    throw v0
.end method
