.class Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$4;
.super Ljava/lang/Object;
.source "SocialSharingServiceClient.java"

# interfaces
.implements Lcom/android/volley/Response$ErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;)V
    .locals 0

    .line 417
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$4;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$4;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->abort(Ljava/lang/String;)V

    .line 421
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SocialSharing"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
