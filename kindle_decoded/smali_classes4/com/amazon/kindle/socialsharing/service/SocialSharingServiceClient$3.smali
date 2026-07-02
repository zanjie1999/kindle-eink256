.class Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;
.super Ljava/lang/Object;
.source "SocialSharingServiceClient.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener<",
        "Lcom/amazon/kindle/socialsharing/service/protocol/State;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

.field final synthetic val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

.field final synthetic val$share:Lcom/amazon/kindle/socialsharing/service/Share;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;Lcom/amazon/kindle/socialsharing/service/Share;)V
    .locals 0

    .line 399
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->val$share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/amazon/kindle/socialsharing/service/protocol/State;)V
    .locals 3

    .line 402
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->val$metrics:Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->stop()V

    .line 403
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->this$0:Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->access$000(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 406
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "(empty response)"

    .line 408
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->val$share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 410
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Successfully updated the share "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->val$share:Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 412
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set the result though the response was valid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .line 399
    check-cast p1, Lcom/amazon/kindle/socialsharing/service/protocol/State;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;->onResponse(Lcom/amazon/kindle/socialsharing/service/protocol/State;)V

    return-void
.end method
