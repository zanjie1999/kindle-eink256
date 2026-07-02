.class public Lcom/amazon/ea/purchase/cache/OfferCache;
.super Ljava/lang/Object;
.source "OfferCache.java"


# static fields
.field private static final GLIDE_PREFERENCE_CACHE:Ljava/lang/String; = "endactions.preference.purchase.price.g2cache"

.field private static final LEGACY_PREFERENCE_CACHE:Ljava/lang/String; = "endactions.preference.purchase.price.cache"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.cache.OfferCache"


# instance fields
.field private final glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

.field private final legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/amazon/ea/purchase/cache/OfferCache;->glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    .line 34
    iput-object p2, p0, Lcom/amazon/ea/purchase/cache/OfferCache;->legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    return-void
.end method

.method public static cleanup()V
    .locals 2

    .line 70
    const-class v0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getLegacyCache()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->cleanup(Ljava/lang/Class;Landroid/content/SharedPreferences;)V

    .line 71
    const-class v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getGlideCache()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->cleanup(Ljava/lang/Class;Landroid/content/SharedPreferences;)V

    return-void
.end method

.method public static clear()V
    .locals 0

    .line 78
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->clearLegacyCache()V

    .line 79
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->clearGlideCache()V

    return-void
.end method

.method public static clearGlideCache()V
    .locals 2

    .line 94
    sget-object v0, Lcom/amazon/ea/purchase/cache/OfferCache;->TAG:Ljava/lang/String;

    const-string v1, "Clearing Glde V2 Purchase Cache"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getGlideCache()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static clearLegacyCache()V
    .locals 2

    .line 86
    sget-object v0, Lcom/amazon/ea/purchase/cache/OfferCache;->TAG:Ljava/lang/String;

    const-string v1, "Clearing Legacy Purchase Cache"

    invoke-static {v0, v1}, Lcom/amazon/ea/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getLegacyCache()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static getGlideCache()Landroid/content/SharedPreferences;
    .locals 3

    .line 109
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "endactions.preference.purchase.price.g2cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getLegacyCache()Landroid/content/SharedPreferences;
    .locals 3

    .line 102
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "endactions.preference.purchase.price.cache"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public fetch(Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/ea/purchase/cache/CachedBookOffer;",
            ">;"
        }
    .end annotation

    .line 46
    const-class v0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getLegacyCache()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/purchase/cache/OfferCache;->legacyPurchaseClient:Lcom/amazon/ea/purchase/client/LegacyPurchaseClient;

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->fetch(Ljava/lang/Class;Landroid/content/SharedPreferences;Lcom/amazon/ea/purchase/PurchaseClient;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 48
    const-class v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-static {}, Lcom/amazon/ea/purchase/cache/OfferCache;->getGlideCache()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/purchase/cache/OfferCache;->glideV2PurchaseClient:Lcom/amazon/ea/purchase/glidev2/GlideV2PurchaseClient;

    invoke-static {v0, v1, v2, p1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->fetch(Ljava/lang/Class;Landroid/content/SharedPreferences;Lcom/amazon/ea/purchase/PurchaseClient;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v0

    .line 50
    :cond_0
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_1

    .line 51
    sget-object v1, Lcom/amazon/ea/purchase/cache/OfferCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " No cached entry of type found for asin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public needsRefresh(Ljava/lang/String;)Z
    .locals 1

    .line 62
    invoke-virtual {p0, p1}, Lcom/amazon/ea/purchase/cache/OfferCache;->fetch(Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    invoke-virtual {p1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->getOffer()Lcom/amazon/ea/purchase/model/BookOffer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/ea/purchase/model/BookOffer;->isExpiringSoon()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
