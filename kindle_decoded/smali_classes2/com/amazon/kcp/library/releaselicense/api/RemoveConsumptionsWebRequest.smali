.class public final Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;
.super Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;
.source "RemoveConsumptionsWebRequest.kt"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final callBack:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

.field private final content:Lcom/amazon/kindle/content/ContentMetadata;

.field private final deviceIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final responseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/content/ContentMetadata;Ljava/util/List;Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/content/ContentMetadata;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "content"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceIds"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callBack"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->content:Lcom/amazon/kindle/content/ContentMetadata;

    iput-object p4, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->deviceIds:Ljava/util/List;

    iput-object p5, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    .line 32
    const-class p1, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;

    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Utils.getTag(RemoveConsu\u2026nsWebRequest::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    .line 37
    new-instance p1, Lcom/amazon/kindle/webservices/BaseResponseHandler;

    invoke-direct {p1}, Lcom/amazon/kindle/webservices/BaseResponseHandler;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    return-void
.end method

.method private final handleRequestFailed(ILcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "Handling failed request with errorCode: "

    const/16 v2, 0x193

    if-ne p1, v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;

    const-string v2, "FORBIDDEN"

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V

    goto :goto_1

    :cond_0
    const/16 v2, 0x198

    if-ne p1, v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;

    const-string v2, "TIME_OUT"

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V

    goto :goto_1

    :cond_1
    const/16 v2, 0x1ff

    const/16 v3, 0x1f4

    if-le v3, p1, :cond_2

    goto :goto_0

    :cond_2
    if-lt v2, p1, :cond_3

    .line 97
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;

    const-string v2, "SERVER_ERROR"

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V

    goto :goto_1

    .line 101
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    new-instance v1, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;

    const-string v2, "UNKNOWN"

    invoke-direct {v1, v0, v2, p1}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;-><init>(ZLjava/lang/String;I)V

    invoke-interface {p2, v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V

    :goto_1
    return-void
.end method

.method private final parseDeviceIdsAndBuildRequest(Ljava/util/List;)Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const-string v1, ","

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3e

    const/4 v8, 0x0

    move-object v0, p1

    .line 41
    invoke-static/range {v0 .. v8}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 42
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 43
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->content:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    sget-object v1, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest;->Companion:Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/releaselicense/api/RemoteLicenseReleaseBaseWebRequest$Companion;->getContentTypeMap()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->content:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v2}, Lcom/amazon/kindle/content/ContentMetadata;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 45
    iget-object v1, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->content:Lcom/amazon/kindle/content/ContentMetadata;

    invoke-virtual {v1}, Lcom/amazon/kindle/content/ContentMetadata;->getParentAsin()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceAccountIds"

    .line 46
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    return-object v0
.end method

.method public onBeforeExecute()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->deviceIds:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->parseDeviceIdsAndBuildRequest(Ljava/util/List;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPostFormData(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public onRequestComplete()Z
    .locals 7

    .line 61
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "DebugSettings"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "RemoveConsumptionsDebugResponseError"

    .line 62
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->responseHandler:Lcom/amazon/kindle/webservices/BaseResponseHandler;

    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/BaseResponseHandler;->getHttpStatusCode()I

    move-result v0

    .line 66
    :cond_0
    new-instance v2, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-direct {v2, v5, v3, v4}, Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;-><init>(ZLjava/lang/String;I)V

    .line 68
    iget-object v3, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RemoveAndReadNow request completed with response code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_1

    .line 71
    iget-object v2, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    invoke-direct {p0, v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->handleRequestFailed(ILcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;)V

    return v1

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionsWebRequest;->callBack:Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;

    invoke-interface {v0, v2}, Lcom/amazon/kcp/library/releaselicense/api/RemoveConsumptionCompletionCallback;->onResponse(Lcom/amazon/kcp/library/releaselicense/api/model/RemoveConsumptionsResponse;)V

    return v5
.end method
