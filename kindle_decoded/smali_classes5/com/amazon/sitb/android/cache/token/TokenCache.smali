.class public Lcom/amazon/sitb/android/cache/token/TokenCache;
.super Lcom/amazon/sitb/android/cache/Cache;
.source "TokenCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/sitb/android/cache/Cache<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/sitb/android/IPersistentStorage;",
            "Lcom/amazon/sitb/android/cache/CacheObjectParser<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/sitb/android/cache/CacheObjectFormatter<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/sitb/android/cache/Cache;-><init>(Ljava/lang/String;Lcom/amazon/sitb/android/IPersistentStorage;Lcom/amazon/sitb/android/cache/CacheObjectParser;Lcom/amazon/sitb/android/cache/CacheObjectFormatter;)V

    return-void
.end method
