.class Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;
.super Ljava/lang/Object;
.source "SocialSharingServiceClient.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

.field final synthetic val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

.field final synthetic val$overrideLocation:Ljava/lang/String;

.field final synthetic val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$overrideLocation:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;)V
    .locals 3

    .line 250
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->stop()V

    .line 252
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->access$000(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;)Z

    move-result v0

    const-string v1, "SocialSharing"

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    invoke-static {v2}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->access$100(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;)Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$overrideLocation:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->getShareFromResponse(Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/Share;

    move-result-object v0

    .line 257
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    if-eqz v2, :cond_1

    .line 258
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    invoke-interface {v2, v0}, Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;->onResponse(Lcom/amazon/kindle/socialsharing/service/Share;)V

    goto :goto_0

    :cond_1
    const-string v0, "responseListener is null"

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 263
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    const-class v2, Lcom/android/volley/ParseError;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->abort(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid response from the service: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    iget-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    if-eqz p1, :cond_2

    .line 266
    new-instance v0, Lcom/android/volley/VolleyError;

    const-string v1, "Invalid response"

    invoke-direct {v0, v1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;->onError(Lcom/android/volley/VolleyError;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 247
    check-cast p1, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;->onResponse(Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;)V

    return-void
.end method
