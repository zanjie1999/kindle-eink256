.class public interface abstract Lcom/amazon/kindle/store/StoreOpenerFactory;
.super Ljava/lang/Object;
.source "StoreOpenerFactory.java"


# virtual methods
.method public abstract createArticleOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createAuthorPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createBrowseNodeOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;
.end method

.method public abstract createFeatureDocOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;
.end method

.method public abstract createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
.end method

.method public abstract createUrlOpener(Landroid/content/Context;Ljava/lang/String;Z)Lcom/amazon/kindle/store/StoreOpener;
.end method
