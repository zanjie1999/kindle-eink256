.class public Lcom/amazon/ea/purchase/cache/CachedBookOffer;
.super Ljava/lang/Object;
.source "CachedBookOffer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O::",
        "Lcom/amazon/ea/purchase/model/BookOffer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final PRICE_KEY_PREFIX:Ljava/lang/String; = "price-"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.purchase.cache.CachedBookOffer"


# instance fields
.field private final bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TO;"
        }
    .end annotation
.end field

.field private final cache:Landroid/content/SharedPreferences;

.field private final purchaseClient:Lcom/amazon/ea/purchase/PurchaseClient;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/ea/purchase/PurchaseClient<",
            "TO;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/PurchaseClient;Landroid/content/SharedPreferences;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Lcom/amazon/ea/purchase/PurchaseClient<",
            "TO;>;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    .line 48
    iput-object p2, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->purchaseClient:Lcom/amazon/ea/purchase/PurchaseClient;

    .line 49
    iput-object p3, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->cache:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static cleanup(Ljava/lang/Class;Landroid/content/SharedPreferences;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/amazon/ea/purchase/model/BookOffer;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;",
            "Landroid/content/SharedPreferences;",
            ")V"
        }
    .end annotation

    .line 147
    invoke-interface {p1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 148
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 149
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 150
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 154
    :try_start_0
    invoke-static {p0, v2, v3}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->parse(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object v3

    .line 155
    invoke-virtual {v3}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v3}, Lcom/amazon/ea/purchase/model/BookOffer;->isExpired()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 156
    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 160
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static fetch(Ljava/lang/Class;Landroid/content/SharedPreferences;Lcom/amazon/ea/purchase/PurchaseClient;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/amazon/ea/purchase/model/BookOffer;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;",
            "Landroid/content/SharedPreferences;",
            "Lcom/amazon/ea/purchase/PurchaseClient<",
            "TO;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/ea/purchase/cache/CachedBookOffer;",
            ">;"
        }
    .end annotation

    .line 116
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "price-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 118
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 120
    :cond_0
    invoke-static {p0, p3, v0}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->parse(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/base/Optional;

    move-result-object p0

    .line 121
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 122
    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0}, Lcom/amazon/ea/purchase/model/BookOffer;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-static {}, Lcom/amazon/ea/logging/Log;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 124
    sget-object p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Offer for asin "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " expired"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :cond_1
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 128
    :cond_2
    new-instance v0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;

    invoke-virtual {p0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/ea/purchase/cache/CachedBookOffer;-><init>(Lcom/amazon/ea/purchase/model/BookOffer;Lcom/amazon/ea/purchase/PurchaseClient;Landroid/content/SharedPreferences;)V

    .line 129
    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 131
    :cond_3
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 134
    sget-object p1, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception while parsing asin "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 135
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method

.method private static parse(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lcom/google/common/base/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Lcom/amazon/ea/purchase/model/BookOffer;",
            ">(",
            "Ljava/lang/Class<",
            "TO;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/common/base/Optional<",
            "TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    const-class v0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    new-instance p0, Lcom/amazon/ea/purchase/model/LegacyBookOffer;

    invoke-direct {p0, p1, p2}, Lcom/amazon/ea/purchase/model/LegacyBookOffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 92
    :cond_0
    const-class v0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    new-instance p0, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;

    invoke-direct {p0, p2}, Lcom/amazon/ea/purchase/glidev2/GlideV2BookOffer;-><init>(Ljava/lang/String;)V

    .line 98
    :goto_0
    invoke-static {p0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0

    .line 95
    :cond_1
    sget-object p2, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized offer type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "for asin "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/amazon/ea/logging/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public borrow(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->purchaseClient:Lcom/amazon/ea/purchase/PurchaseClient;

    iget-object v1, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0, v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient;->borrow(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public buy(Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->purchaseClient:Lcom/amazon/ea/purchase/PurchaseClient;

    iget-object v1, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v0, v1, p1}, Lcom/amazon/ea/purchase/PurchaseClient;->buy(Lcom/amazon/ea/purchase/model/BookOffer;Ljava/lang/String;)Lcom/amazon/ea/purchase/PurchaseClient$Result;

    move-result-object p1

    return-object p1
.end method

.method public getOffer()Lcom/amazon/ea/purchase/model/BookOffer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    return-object v0
.end method

.method public getPurchaseClient()Lcom/amazon/ea/purchase/PurchaseClient;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/ea/purchase/PurchaseClient<",
            "TO;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->purchaseClient:Lcom/amazon/ea/purchase/PurchaseClient;

    return-object v0
.end method

.method public store()V
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->cache:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "price-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v2}, Lcom/amazon/ea/purchase/model/BookOffer;->getAsin()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/ea/purchase/cache/CachedBookOffer;->bookOffer:Lcom/amazon/ea/purchase/model/BookOffer;

    invoke-interface {v2}, Lcom/amazon/ea/purchase/model/BookOffer;->toCacheString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
