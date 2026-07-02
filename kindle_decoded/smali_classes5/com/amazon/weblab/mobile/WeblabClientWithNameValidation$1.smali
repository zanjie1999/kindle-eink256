.class Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;
.super Ljava/lang/Object;
.source "WeblabClientWithNameValidation.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/IMobileWeblab;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->getWeblab(Ljava/lang/String;)Lcom/amazon/weblab/mobile/IMobileWeblab;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private resultFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;

.field final synthetic val$weblabName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;Ljava/lang/String;)V
    .locals 2

    .line 131
    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->this$0:Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;

    iput-object p2, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->val$weblabName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    new-instance p1, Lcom/amazon/weblab/mobile/MobileWeblabFailedImmediateFuture;

    new-instance p2, Lcom/amazon/weblab/mobile/model/MobileWeblabException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Weblab "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->val$weblabName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " does not have a valid name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/amazon/weblab/mobile/model/MobileWeblabException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Lcom/amazon/weblab/mobile/MobileWeblabFailedImmediateFuture;-><init>(Ljava/lang/Exception;)V

    iput-object p1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->resultFuture:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->val$weblabName:Ljava/lang/String;

    return-object v0
.end method

.method public getTreatmentAndRecordTrigger()Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 152
    new-instance v0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->this$0:Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->val$weblabName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->access$000(Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->resultFuture:Ljava/util/concurrent/Future;

    invoke-direct {v0, v1, v2}, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;-><init>(Ljava/lang/String;Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public getTreatmentAssignment()Ljava/lang/String;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->this$0:Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;

    iget-object v1, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->val$weblabName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;->access$000(Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public recordTrigger()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/RejectedExecutionException;
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/amazon/weblab/mobile/WeblabClientWithNameValidation$1;->resultFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method
