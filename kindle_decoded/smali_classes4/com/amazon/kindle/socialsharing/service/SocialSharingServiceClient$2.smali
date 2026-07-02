.class Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;
.super Ljava/lang/Object;
.source "SocialSharingServiceClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

.field final synthetic val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;)V
    .locals 0

    .line 272
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->abort(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;->val$responseListener:Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;

    if-eqz v0, :cond_0

    .line 278
    invoke-interface {v0, p1}, Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;->onError(Lcom/android/volley/VolleyError;)V

    goto :goto_0

    :cond_0
    const-string p1, "responseListener is null"

    .line 280
    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
