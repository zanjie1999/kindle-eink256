.class Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;
.super Ljava/lang/Object;
.source "MobileWeblabTreatmentAndTriggerResult.java"

# interfaces
.implements Lcom/amazon/weblab/mobile/IMobileWeblabTreatmentAndTriggerResult;


# instance fields
.field private mFuture:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation
.end field

.field private mTreatment:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/concurrent/Future;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 32
    iput-object p1, p0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;->mTreatment:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;->mFuture:Ljava/util/concurrent/Future;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "trigger can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "treatment can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFutureMobileWeblabTrigger()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Lcom/amazon/weblab/mobile/model/MobileWeblabTriggerResult;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;->mFuture:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getTreatment()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/weblab/mobile/MobileWeblabTreatmentAndTriggerResult;->mTreatment:Ljava/lang/String;

    return-object v0
.end method
