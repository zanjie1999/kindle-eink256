.class Lcom/amazon/sitb/android/purchase/GlideClient$1;
.super Ljava/lang/Object;
.source "GlideClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/sitb/android/purchase/GlideClient;->getGetOfferCallBack(Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/sitb/android/purchase/GlideClient;

.field final synthetic val$asin:Ljava/lang/String;

.field final synthetic val$offerFuture:Lcom/google/common/util/concurrent/SettableFuture;

.field final synthetic val$refTag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Ljava/lang/String;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->this$0:Lcom/amazon/sitb/android/purchase/GlideClient;

    iput-object p2, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$asin:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$refTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$offerFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const-string v2, "getOfferTaskCallback"

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-nez p1, :cond_0

    .line 132
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object p1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$asin:Ljava/lang/String;

    aput-object v2, v4, v1

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$refTag:Ljava/lang/String;

    aput-object v1, v4, v0

    const-string v0, "glide call=%s received empty result. asin=%s, refTag=%s"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 134
    invoke-static {}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$000()Lcom/amazon/sitb/android/ISamplingLogger;

    move-result-object v5

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    iget-object v2, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$asin:Ljava/lang/String;

    aput-object v2, v4, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "glide call=%s failed. asin=%s, error=%s"

    .line 134
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v5, p1}, Lcom/amazon/sitb/android/ISamplingLogger;->error(Ljava/lang/String;)V

    .line 136
    iget-object p1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$offerFuture:Lcom/google/common/util/concurrent/SettableFuture;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 138
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object p1

    .line 139
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$asin:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    .line 140
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->this$0:Lcom/amazon/sitb/android/purchase/GlideClient;

    iget-object v1, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$asin:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/amazon/sitb/android/purchase/GlideClient;->access$100(Lcom/amazon/sitb/android/purchase/GlideClient;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;)Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    move-result-object p1

    .line 141
    iget-object v0, p0, Lcom/amazon/sitb/android/purchase/GlideClient$1;->val$offerFuture:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-virtual {v0, p1}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
