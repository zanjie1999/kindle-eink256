.class final Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;
.super Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;
.source "OpenStoreUrlActionProvider.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOpenStoreUrlActionProvider.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OpenStoreUrlActionProvider.kt\ncom/amazon/kcp/home/actions/FalkorStoreOpenerHandler\n+ 2 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,148:1\n181#2,2:149\n*E\n*S KotlinDebug\n*F\n+ 1 OpenStoreUrlActionProvider.kt\ncom/amazon/kcp/home/actions/FalkorStoreOpenerHandler\n*L\n136#1,2:149\n*E\n"
.end annotation


# instance fields
.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "sdk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "urlArg"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;-><init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 5

    .line 122
    invoke-super {p0}, Lcom/amazon/kcp/home/actions/DefaultStoreOpenerHandler;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    const-string/jumbo v2, "sdk.applicationManager"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    const-string/jumbo v2, "sdk.applicationManager.deviceInformation"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Lkotlin/Pair;

    .line 126
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDSN()Ljava/lang/String;

    move-result-object v3

    const-string v4, "eid"

    invoke-static {v4, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 127
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceType"

    invoke-static {v3, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 125
    invoke-static {v2}, Lkotlin/collections/MapsKt;->mutableMapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v1

    .line 129
    invoke-static {}, Lcom/amazon/kcp/store/StoreForceDarkModeUtils;->isForceDarkModeSupported()Z

    move-result v2

    if-nez v2, :cond_1

    .line 130
    iget-object v2, p0, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {v2, v3}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v2

    sget-object v3, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne v2, v3, :cond_0

    const-string v2, "dark"

    goto :goto_0

    :cond_0
    const-string v2, "light"

    :goto_0
    const-string/jumbo v3, "theme"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    :cond_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "title"

    invoke-virtual {v2, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 133
    iget-object v2, p0, Lcom/amazon/kcp/home/actions/FalkorStoreOpenerHandler;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v4, "sdk.context"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/amazon/kindle/librarymodule/R$string;->falkor_store_default_header:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_2
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 149
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 137
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 139
    :cond_3
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appendedURL.build().toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
