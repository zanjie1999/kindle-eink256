.class public final Lcom/amazon/kindle/utils/StoreOpeners;
.super Ljava/lang/Object;
.source "StoreOpeners.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/utils/StoreOpeners$NullFeatureDocOpener;,
        Lcom/amazon/kindle/utils/StoreOpeners$NullBuyPageStoreOpener;,
        Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;
    }
.end annotation


# direct methods
.method public static createAuthorPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 195
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createAuthorPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 199
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 64
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBookDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 68
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createBrowseNodeOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 163
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBrowseNodeOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 167
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;
    .locals 1

    .line 147
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createBuyPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/BuyPageStoreOpener;

    move-result-object p0

    return-object p0

    .line 151
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullBuyPageStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullBuyPageStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createFalkorProductPageOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 4

    .line 211
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 215
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v2

    .line 217
    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v1, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v1

    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v1, v3, :cond_0

    const-string v1, "dark"

    goto :goto_0

    :cond_0
    const-string v1, "light"

    .line 218
    :goto_0
    invoke-static {p0, p1, v2, v0, v1}, Lcom/amazon/kindle/utils/StoreOpeners;->createFalkorProductPageOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kindle/store/StoreOpenerFactory;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createFalkorProductPageOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/application/IDeviceInformation;Lcom/amazon/kindle/store/StoreOpenerFactory;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 239
    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p2

    .line 238
    invoke-static {p0, p1, v0, p2, p4}, Lcom/amazon/kcp/util/FalkorUtils;->createFalkorProductPageUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p3, p0, p1, p2}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;Z)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0
.end method

.method public static createFeatureDocOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;
    .locals 1

    .line 179
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createFeatureDocOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/FeatureDocStoreOpener;

    move-result-object p0

    return-object p0

    .line 183
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullFeatureDocOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullFeatureDocOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 132
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createSearchResultsOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 136
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 84
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 86
    invoke-interface {v0, p0, p1, p2}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createSeriesDetailsOpener(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kindle/krx/content/ContentType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 44
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createStorefrontOpener(Landroid/content/Context;Lcom/amazon/kindle/store/StoreType;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 48
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method public static createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;
    .locals 1

    .line 100
    invoke-static {}, Lcom/amazon/kindle/utils/StoreOpeners;->discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-interface {v0, p0, p1}, Lcom/amazon/kindle/store/StoreOpenerFactory;->createUrlOpener(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kindle/store/StoreOpener;

    move-result-object p0

    return-object p0

    .line 104
    :cond_0
    new-instance p0, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amazon/kindle/utils/StoreOpeners$NullStoreOpener;-><init>(Lcom/amazon/kindle/utils/StoreOpeners$1;)V

    return-object p0
.end method

.method private static discoverFactory()Lcom/amazon/kindle/store/StoreOpenerFactory;
    .locals 1

    .line 244
    const-class v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    invoke-static {v0}, Lcom/amazon/discovery/UniqueDiscovery;->of(Ljava/lang/Class;)Lcom/amazon/discovery/UniqueDiscovery;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/discovery/UniqueDiscovery;->value()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/store/StoreOpenerFactory;

    return-object v0
.end method
