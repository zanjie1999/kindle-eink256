.class Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;
.super Ljava/lang/Object;
.source "GlideV2PurchaseClient.java"

# interfaces
.implements Lcom/amazon/kindle/krx/glide/IGetOffersForAsinCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->getOffers(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

.field final synthetic val$asins:Ljava/util/List;

.field final synthetic val$offers:Ljava/util/Map;

.field final synthetic val$result:Lcom/google/common/util/concurrent/SettableFuture;


# direct methods
.method constructor <init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/util/List;Ljava/util/Map;Lcom/google/common/util/concurrent/SettableFuture;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->this$0:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    iput-object p2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$asins:Ljava/util/List;

    iput-object p3, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$offers:Ljava/util/Map;

    iput-object p4, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;)V
    .locals 7

    .line 73
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getError()Lcom/amazon/kindle/krx/glide/GetOfferError;

    move-result-object v0

    .line 74
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResponse;->getResource()Ljava/util/Map;

    move-result-object p1

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    .line 76
    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$asins:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 77
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 80
    invoke-static {}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No offer for [asin="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iget-object v2, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$offers:Ljava/util/Map;

    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getBadgeInfos()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getBadgeInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 85
    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getBadgeInfos()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;

    if-eqz v4, :cond_2

    .line 86
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->getSticker()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->getDarkSticker()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 87
    new-instance v3, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    invoke-direct {v3}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;-><init>()V

    .line 88
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->getSticker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 89
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->getDarkSticker()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setDarkSticker(Ljava/lang/String;)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 90
    invoke-virtual {v4}, Lcom/amazon/kindle/krx/glide/KRXBadgeInfo;->getyAxis()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->setyAxis(I)Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;

    .line 91
    invoke-virtual {v3}, Lcom/amazon/ea/purchase/model/BadgeInfo$Builder;->build()Lcom/amazon/ea/purchase/model/BadgeInfo;

    move-result-object v3

    .line 94
    :cond_2
    iget-object v4, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->this$0:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    invoke-virtual {v2}, Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;->getAsinOffers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->getPreferredOffer(Ljava/util/List;)Lcom/google/common/base/Optional;

    move-result-object v4

    .line 95
    iget-object v5, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->this$0:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    invoke-static {v5, v1, v2, v4}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->access$100(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Ljava/lang/String;Lcom/amazon/kindle/krx/glide/KRXGetOfferResource;Lcom/google/common/base/Optional;)V

    .line 96
    invoke-virtual {v4}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    new-instance v2, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-virtual {v4}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/kindle/krx/glide/KRXAsinOffer;

    invoke-direct {v2, v4, v3}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;-><init>(Lcom/amazon/kindle/krx/glide/KRXAsinOffer;Lcom/amazon/ea/purchase/model/BadgeInfo;)V

    .line 98
    iget-object v3, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$offers:Ljava/util/Map;

    new-instance v4, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    iget-object v5, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->this$0:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getGlideCache()Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-direct {v4, v2, v5, v6}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;-><init>(Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/PurchaseClient;Landroid/content/SharedPreferences;)V

    invoke-static {v4}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v2

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 102
    :cond_3
    invoke-static {}, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in getBatchOffers call to Glide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$result:Lcom/google/common/util/concurrent/SettableFuture;

    iget-object v0, p0, Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient$1;->val$offers:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/google/common/util/concurrent/SettableFuture;->set(Ljava/lang/Object;)Z

    return-void
.end method
