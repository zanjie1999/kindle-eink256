.class Lcom/amazon/sitb/android/purchase/GlideClient$3;
.super Ljava/lang/Object;
.source "GlideClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/purchase/GlideClient;->getReturnOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IReturnOfferForAsinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$unBuyRefTag:Ljava/lang/String;

.field final synthetic val$unBuyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 172
    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$unBuyRefTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$unBuyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;)V
    .locals 7

    .line 175
    new-instance v0, Lcom/amazon/sitb/android/UnBuyResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/sitb/android/UnBuyResult;-><init>(Z)V

    const/4 v2, 0x2

    const-string/jumbo v3, "returnOfferForAsinCallback"

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-nez p1, :cond_0

    .line 177
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$asin:Ljava/lang/String;

    aput-object v1, v4, v5

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$unBuyRefTag:Ljava/lang/String;

    aput-object v1, v4, v2

    const-string v1, "glide call=%s received empty result. asin=%s, refTag=%s"

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 178
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 179
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v1

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$asin:Ljava/lang/String;

    aput-object v1, v4, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "glide call=%s failed. asin=%s, error=%s"

    .line 179
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/ReturnOfferError;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/sitb/android/UnBuyResult;->setErrorCode(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXReturnOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/sitb/android/UnBuyResult;->setErrorMessage(Ljava/lang/String;)V

    goto :goto_0

    .line 184
    :cond_1
    invoke-virtual {v0, v5}, Lcom/amazon/sitb/android/UnBuyResult;->setResponseSuccess(Z)V

    .line 186
    :goto_0
    iget-object p1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$3;->val$unBuyResultFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
