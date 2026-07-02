.class public final Lcom/amazon/kcp/RedirectUrlBuilder;
.super Ljava/lang/Object;
.source "RedirectUrlBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;,
        Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
    }
.end annotation


# static fields
.field private static final DEVICE_TYPE_PARAMETER_KEY:Ljava/lang/String; = "deviceType"

.field private static final EID_KEY:Ljava/lang/String; = "eid"

.field public static final INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder;

.field private static final MARKETPLACE_KEY:Ljava/lang/String; = "marketplace"

.field private static final METHOD_PARAMETER_KEY:Ljava/lang/String; = "method"

.field private static final QUERY_KEY:Ljava/lang/String; = "q"

.field private static final REDIRECT_URI_PATH:Ljava/lang/String; = "gp/kindle/kcp/links"

.field private static final REDIRECT_URI_SCHEME:Ljava/lang/String; = "https"

.field private static final TAG:Ljava/lang/String;

.field private static final allowlistedKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final currentMarketplaceDetectionStrategy$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lcom/amazon/kcp/RedirectUrlBuilder;

    invoke-direct {v0}, Lcom/amazon/kcp/RedirectUrlBuilder;-><init>()V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder;

    .line 21
    const-class v0, Lcom/amazon/kcp/RedirectUrlBuilder;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getTag(RedirectUrlBuilder::class.java)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "q"

    .line 62
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->allowlistedKeys:Ljava/util/List;

    .line 68
    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder$currentMarketplaceDetectionStrategy$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->currentMarketplaceDetectionStrategy$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$addEid(Lcom/amazon/kcp/RedirectUrlBuilder;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/RedirectUrlBuilder;->addEid(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    return-object p1
.end method

.method public static final synthetic access$addMarketplace(Lcom/amazon/kcp/RedirectUrlBuilder;Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/amazon/kcp/RedirectUrlBuilder;->addMarketplace(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;

    return-object p1
.end method

.method private final addEid(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2

    .line 164
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 165
    invoke-static {v0, v1}, Lcom/amazon/kindle/services/authentication/TokenEncryptor;->getEncryptedDSN(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eid"

    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p1
.end method

.method private final addMarketplace(Landroid/net/Uri$Builder;)Landroid/net/Uri$Builder;
    .locals 2

    .line 155
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    const-string v1, "Marketplace.getInstance(\u2026tplace(), Marketplace.US)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getId()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "marketplace"

    .line 156
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p1
.end method

.method private final getCurrentMarketplaceDetectionStrategy()Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;
    .locals 1

    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder;->currentMarketplaceDetectionStrategy$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    return-object v0
.end method

.method public static final getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string/jumbo v0, "redirectTarget"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    .line 85
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v1

    const-string/jumbo v2, "url.redirect"

    invoke-interface {v1, v2}, Lcom/amazon/kindle/webservices/IDynamicConfigManager;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "gp/kindle/kcp/links"

    .line 87
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->getParameterValue()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 90
    sget-object v1, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->TROUBLESHOOTING:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const-string v2, "builder.build().toString()"

    if-ne v1, p0, :cond_0

    .line 91
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 95
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    const-string v1, "Utils.getFactory()"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAssociateInformationProvider()Lcom/amazon/kcp/application/IAssociateInformationProvider;

    move-result-object p0

    const-string v1, "Utils.getFactory().associateInformationProvider"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/amazon/kcp/application/IAssociateInformationProvider;->getAssociateTag()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v1, "tag"

    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 96
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    const-string v3, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    const-string v3, "deviceType"

    invoke-virtual {p0, v3, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 98
    sget-object p0, Lcom/amazon/kcp/RedirectUrlBuilder;->INSTANCE:Lcom/amazon/kcp/RedirectUrlBuilder;

    invoke-direct {p0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getCurrentMarketplaceDetectionStrategy()Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amazon/kcp/RedirectUrlBuilder$MarketplaceDetectionStrategy;->getAddParams()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    const-string v1, "builder"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object p0, Lcom/amazon/kcp/RedirectUrlBuilder;->allowlistedKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p0, v1}, Lkotlin/collections/CollectionsKt;->intersect(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 102
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Created redirect URL: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getRedirectUrl$default(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 83
    invoke-static {}, Lkotlin/collections/MapsKt;->emptyMap()Ljava/util/Map;

    move-result-object p1

    :cond_0
    invoke-static {p0, p1}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getWikiRedirectUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 117
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p0, "URLEncoder.encode(searchText, UTF_8.name())"

    invoke-static {v1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "+"

    const-string v3, "%20"

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 118
    sget-object v0, Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;->WIKI:Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;

    const-string/jumbo v1, "q"

    invoke-static {v1, p0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/amazon/kcp/RedirectUrlBuilder;->getRedirectUrl(Lcom/amazon/kcp/RedirectUrlBuilder$RedirectTarget;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
