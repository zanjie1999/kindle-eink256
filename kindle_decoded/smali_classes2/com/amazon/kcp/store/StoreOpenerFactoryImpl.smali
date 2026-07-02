.class public final Lcom/amazon/kcp/store/StoreOpenerFactoryImpl;
.super Ljava/lang/Object;
.source "StoreOpenerFactoryImpl.java"

# interfaces
.implements Lcom/amazon/kindle/store/StoreOpenerFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createArticleOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 53
    new-instance v0, Lcom/amazon/kcp/store/ArticleOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/ArticleOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createAuthorPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 82
    new-instance v0, Lcom/amazon/kcp/store/AuthorPageOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/AuthorPageOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 28
    new-instance v0, Lcom/amazon/kcp/store/BookDetailsOpener;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/store/BookDetailsOpener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V

    return-object v0
.end method

.method public createBrowseNodeOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 71
    new-instance v0, Lcom/amazon/kcp/store/BrowseNodeOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/BrowseNodeOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;
    .locals 1

    .line 65
    new-instance v0, Lcom/amazon/kcp/store/BuyPageOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/BuyPageOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createFeatureDocOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;
    .locals 1

    .line 76
    new-instance v0, Lcom/amazon/kcp/store/FeatureDocOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/FeatureDocOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 59
    new-instance v0, Lcom/amazon/kcp/store/SearchResultsOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/SearchResultsOpener;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 35
    new-instance v0, Lcom/amazon/kcp/store/SeriesDetailsOpener;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/store/SeriesDetailsOpener;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)V

    return-object v0
.end method

.method public createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 21
    new-instance v0, Lcom/amazon/kcp/store/StorefrontOpener;

    invoke-direct {v0, p1, p2}, Lcom/amazon/kcp/store/StorefrontOpener;-><init>(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)V

    return-object v0
.end method

.method public createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 2

    .line 41
    new-instance v0, Lcom/amazon/kcp/store/UrlOpener;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/amazon/kcp/store/UrlOpener;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public createUrlOpener(Landroid/content/Context;Ljava/lang/String;Z)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 47
    new-instance v0, Lcom/amazon/kcp/store/UrlOpener;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/store/UrlOpener;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    return-object v0
.end method
