.class public interface abstract Lcom/amazon/weblab/mobile/service/IServiceProxy;
.super Ljava/lang/Object;
.source "IServiceProxy.java"


# virtual methods
.method public abstract getTreatmentAssignments(Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;Ljava/util/Collection;)Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/weblab/mobile/model/SessionInfo;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/amazon/weblab/mobile/service/MobileWeblabGetTreatmentAssignmentResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation
.end method

.method public abstract recordTrigger(Lcom/amazon/weblab/mobile/model/TreatmentAssignment;Lcom/amazon/weblab/mobile/model/SessionInfo;Lcom/amazon/weblab/mobile/model/CustomerInfo;)Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation
.end method
