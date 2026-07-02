.class public interface abstract Lcom/amazon/weblab/mobile/repository/IRepository;
.super Ljava/lang/Object;
.source "IRepository.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract containsValidatedWeblab(Ljava/lang/String;)Z
.end method

.method public abstract getFailsafeRepository()Lcom/amazon/weblab/mobile/repository/IRepository;
.end method

.method public abstract getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;
.end method

.method public abstract getTreatmentAssignment(Ljava/lang/String;)Lcom/amazon/weblab/mobile/model/TreatmentAssignment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public abstract hasBackup()Z
.end method

.method public abstract pushAll(Ljava/util/Map;Lcom/amazon/weblab/mobile/model/CustomerInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;",
            "Lcom/amazon/weblab/mobile/model/CustomerInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract restore()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation
.end method

.method public abstract save()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/weblab/mobile/model/MobileWeblabException;
        }
    .end annotation
.end method

.method public abstract setApplicationVersion(Ljava/lang/String;)V
.end method

.method public abstract setSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)V
.end method

.method public abstract updateKeepInCacheDateInMillis(Ljava/lang/String;)V
.end method
