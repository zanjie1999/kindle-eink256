.class final Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;
.super Ljava/lang/Object;
.source "BaseGoodreadsShelfWebRequest.kt"

# interfaces
.implements Lcom/amazon/kindle/webservices/JSONResponseHandler$JSONResponseObjectHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->getResponseHandler()Lcom/amazon/kindle/webservices/IResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleJSONObject(Lorg/json/JSONObject;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 70
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-virtual {p1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->requestType()Lcom/amazon/kcp/goodreads/GoodreadsRequestType;

    move-result-object p1

    sget-object v2, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto/16 :goto_2

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifySuccess$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;ILjava/lang/Object;)V

    goto :goto_2

    .line 71
    :cond_1
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;ILjava/lang/Object;)V

    goto :goto_2

    :cond_2
    const-string v2, "book_uri"

    .line 75
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    if-eqz v3, :cond_4

    .line 76
    invoke-static {v3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v4, 0x1

    :goto_1
    if-eqz v4, :cond_5

    .line 77
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;ILjava/lang/Object;)V

    return-void

    :cond_5
    const-string/jumbo v4, "shelf"

    .line 80
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_6

    .line 82
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;ILjava/lang/Object;)V

    return-void

    :cond_6
    const-string/jumbo v4, "name"

    .line 85
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 86
    invoke-static {p1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    const/4 v2, 0x1

    :cond_8
    if-eqz v2, :cond_9

    .line 87
    iget-object p1, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    invoke-static {p1, v1, v0, v1}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->notifyFailure$default(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;ILjava/lang/Object;)V

    return-void

    :cond_9
    const-string v1, "/"

    .line 91
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x6

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 92
    iget-object v2, p0, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest$getResponseHandler$1;->this$0:Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;

    new-instance v3, Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, p1, v0}, Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;->access$notifySuccess(Lcom/amazon/kcp/goodreads/BaseGoodreadsShelfWebRequest;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;)V

    :goto_2
    return-void
.end method
