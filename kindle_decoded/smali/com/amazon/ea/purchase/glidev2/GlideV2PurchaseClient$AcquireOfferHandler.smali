.class Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;
.super Ljava/lang/Object;
.source "GlideV2PurchaseClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AcquireOfferHandler"
.end annotation


# instance fields
.field private final logTag:Ljava/lang/String;

.field final offer:Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

.field final refTag:Ljava/lang/String;

.field final result:Lcom/google/common/util/concurrent/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/amazon/ea/purchase/PurchaseClient$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/common/util/concurrent/SettableFuture<",
            "Lcom/amazon/ea/purchase/PurchaseClient$Result;",
            ">;",
            "Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object p2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->logTag:Ljava/lang/String;

    .line 160
    iput-object p3, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 161
    iput-object p4, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->offer:Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    .line 162
    iput-object p5, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->refTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 5

    .line 167
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v0

    .line 168
    new-instance v1, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    iget-object v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->offer:Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-virtual {v2}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;->getAsin()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->refTag:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "PurchaseClient"

    const-string v3, "GlideV2"

    .line 169
    invoke-virtual {v1, v2, v3}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->withMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    if-nez v0, :cond_1

    .line 171
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    new-instance v0, Lcom/amazon/ea/purchase/model/PurchaseRecord;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderItemId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v2, p1}, Lcom/amazon/ea/purchase/model/PurchaseRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->withPurchaseRecord(Lcom/amazon/ea/purchase/model/PurchaseRecord;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    .line 174
    :cond_0
    iget-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 176
    :cond_1
    invoke-static {}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->logTag:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " call to Glide: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$AcquireOfferHandler;->result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 178
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->withMessage(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 179
    invoke-virtual {v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    .line 177
    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
