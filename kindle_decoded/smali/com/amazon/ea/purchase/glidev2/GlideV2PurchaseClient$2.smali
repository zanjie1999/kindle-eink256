.class Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;
.super Ljava/lang/Object;
.source "GlideV2PurchaseClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->unBuy(Ljava/lang/String;Lcom/amazon/ea/purchase/model/PurchaseRecord;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$refTag:Ljava/lang/String;

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 199
    iput-object p2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$refTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 3

    .line 202
    new-instance v0, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$asin:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$refTag:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "PurchaseClient"

    const-string v2, "GlideV2"

    .line 203
    invoke-virtual {v0, v1, v2}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->withMetadata(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    .line 204
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v1

    if-nez v1, :cond_0

    .line 205
    iget-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildSuccess()Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$2;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    .line 208
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->withMessage(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;

    sget-object p1, Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;->UNKNOWN:Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;

    .line 209
    invoke-virtual {v0, p1}, Lcom/amazon/ea/purchase/PurchaseClient$Result$Builder;->buildFailure(Lcom/amazon/ea/purchase/model/FailRecord$ReasonCode;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    .line 207
    invoke-virtual {v1, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
