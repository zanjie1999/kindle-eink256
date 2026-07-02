.class public final Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;
.super Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;
.source "AuthorFollowCardBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AuthorFollowStatusResponseHandler"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final widget:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/home/widget/AuthorFollowWidget;)V
    .locals 1

    const-string/jumbo v0, "widget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->widget:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    .line 160
    const-class p1, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Utils.getTag(AuthorFollo\u2026ponseHandler::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getWidget$p(Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;)Lcom/amazon/kcp/home/widget/AuthorFollowWidget;
    .locals 0

    .line 159
    iget-object p0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->widget:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    return-object p0
.end method


# virtual methods
.method public onInputStream(Ljava/io/InputStream;)V
    .locals 5

    const-string v0, "AuthorFollowStatusRequestError"

    .line 163
    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "AuthorFollowStatusRequestHttpError"

    const/16 v4, 0xc8

    if-eq v4, v1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Status code was not OK, it was "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0, v3, v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 168
    invoke-virtual {p0, v3, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 171
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->getGSON()Lcom/google/gson/Gson;

    move-result-object v3

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 172
    const-class p1, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;

    .line 171
    invoke-virtual {v3, v4, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    iget-object v2, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->widget:Lcom/amazon/kcp/home/widget/AuthorFollowWidget;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->isFollowing()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/home/widget/AuthorFollowWidget;->setFollowingAuthor$LibraryModule_release(Ljava/lang/Boolean;)V

    .line 180
    invoke-virtual {p0, v0, v1}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    .line 181
    iget-object v0, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->TAG:Ljava/lang/String;

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Initial AuthorFollow status card response - csrf: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->getCsrf()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " isFollowing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p1}, Lcom/amazon/kcp/home/api/AuthorFollowStatusSuccessResponse;->isFollowing()Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 181
    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 186
    new-instance v0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler$onInputStream$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler$onInputStream$1;-><init>(Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p1

    .line 174
    iget-object v1, p0, Lcom/amazon/kcp/home/cards/AuthorFollowCardBuilder$AuthorFollowStatusResponseHandler;->TAG:Ljava/lang/String;

    const-string v3, "Error in response"

    invoke-static {v1, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 175
    invoke-virtual {p0, v0, v2}, Lcom/amazon/kcp/home/api/BaseAuthorFollowResponseHandler;->reportToPMET(Ljava/lang/String;Z)V

    return-void
.end method
