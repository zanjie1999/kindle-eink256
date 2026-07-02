.class public interface abstract Lcom/amazon/kcp/store/StorePathProvider;
.super Ljava/lang/Object;
.source "StorePathProvider.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/store/StorePathProvider$DefaultImpls;
    }
.end annotation


# virtual methods
.method public abstract getBrowseNodePath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation
.end method

.method public abstract getDefaultCookies(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultHeaders(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDefaultPath()Landroid/net/Uri$Builder;
.end method

.method public abstract getDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation
.end method

.method public abstract getFeatureDocPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation
.end method

.method public abstract getSeriesDetailPagePath(Ljava/util/Map;Lcom/amazon/kcp/store/StoreUrlBuilder$Action;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/kcp/store/StoreUrlBuilder$Action;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation
.end method

.method public abstract getStoreSearchPath(Ljava/util/Map;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/net/Uri$Builder;"
        }
    .end annotation
.end method

.method public abstract getStorefrontPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
.end method
