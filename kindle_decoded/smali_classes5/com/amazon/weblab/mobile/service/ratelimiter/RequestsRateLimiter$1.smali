.class Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;
.super Ljava/lang/Object;
.source "RequestsRateLimiter.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation<",
        "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

.field final synthetic val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field final synthetic val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

.field final synthetic val$weblabs:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$weblabs:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enact()Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->access$000(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;)Lcom/amazon/weblab/mobile/service/IServiceProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->val$weblabs:Ljava/util/Collection;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/service/IServiceProxy;->getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic enact()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 59
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$1;->enact()Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;

    move-result-object v0

    return-object v0
.end method
