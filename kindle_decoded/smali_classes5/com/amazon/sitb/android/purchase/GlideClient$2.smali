.class Lcom/amazon/sitb/android/purchase/GlideClient$2;
.super Ljava/lang/Object;
.source "GlideClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/purchase/GlideClient;->getBuyOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IAcquireOfferFromAsinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$buyAsinRefTag:Ljava/lang/String;

.field final synthetic val$buyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 148
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$buyAsinRefTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$buyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;)V
    .locals 7

    .line 151
    new-instance v0, Lcom/amazon/sitb/android/BuyAsinResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/amazon/sitb/android/BuyAsinResult;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "buyAsinFromOfferCallback"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez p1, :cond_0

    .line 154
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$asin:Ljava/lang/String;

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$buyAsinRefTag:Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "glide call=%s received empty result. asin=%s, refTag=%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 155
    :cond_0
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 156
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$asin:Ljava/lang/String;

    aput-object v1, v4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "glide call=%s failed. asin=%s, error=%s"

    .line 156
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    .line 158
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/AcquireOfferError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/BuyAsinResult;->setErrorCode(Ljava/lang/String;)V

    .line 159
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/BuyAsinResult;->setLocalizedErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/BuyAsinResult;->setOrderId(Ljava/lang/String;)V

    .line 162
    invoke-interface {p1}, Lcom/amazon/kindle/krx/glide/KRXAcquireOfferResponse;->getOrderItemId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/BuyAsinResult;->setOrderItemId(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0, v5}, Lcom/amazon/sitb/android/BuyAsinResult;->setResponseSuccess(Z)V

    .line 165
    :goto_0
    iget-object p1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$2;->val$buyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
