.class Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;
.super Ljava/lang/Object;
.source "RequestsRateLimiter.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$Operation<",
        "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

.field final synthetic val$assignment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

.field final synthetic val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

.field final synthetic val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

    iput-object p2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$assignment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    iput-object p3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iput-object p4, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enact()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->this$0:Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;

    invoke-static {v0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;->access$000(Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter;)Lcom/amazon/weblab/mobile/service/IServiceProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$assignment:Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$sessionInfo:Lcom/amazon/weblab/mobile/model/SessionInfo;

    iget-object v3, p0, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->val$customerInfo:Lcom/amazon/weblab/mobile/model/CustomerInfo;

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/weblab/mobile/service/IServiceProxy;->recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

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

    .line 72
    invoke-virtual {p0}, Lcom/amazon/weblab/mobile/service/ratelimiter/RequestsRateLimiter$2;->enact()Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;

    move-result-object v0

    return-object v0
.end method
