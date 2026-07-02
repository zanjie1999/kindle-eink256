.class public final Lcom/amazon/kcp/store/StoreUtils;
.super Ljava/lang/Object;
.source "StoreUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStoreUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StoreUtils.kt\ncom/amazon/kcp/store/StoreUtils\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,201:1\n6486#2:202\n256#3,2:203\n*E\n*S KotlinDebug\n*F\n+ 1 StoreUtils.kt\ncom/amazon/kcp/store/StoreUtils\n*L\n140#1:202\n141#1,2:203\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

.field private static final validTldsForAlipay:[Ljava/lang/String;

.field private static final validTldsForAmazon:[Ljava/lang/String;

.field private static final validTldsForAmazonForum:[Ljava/lang/String;

.field private static final validTldsForSalesforce:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 41
    new-instance v0, Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    const-string v1, ".com.mx"

    const-string v2, ".com.au"

    const-string v3, ".com.br"

    const-string v4, ".com.uk"

    const-string v5, ".co.jp"

    const-string v6, ".co.uk"

    const-string v7, ".com"

    const-string v8, ".ca"

    const-string v9, ".de"

    const-string v10, ".fr"

    const-string v11, ".it"

    const-string v12, ".es"

    const-string v13, ".cn"

    const-string v14, ".in"

    const-string v15, ".ru"

    const-string v16, ".nl"

    .line 48
    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    .line 47
    sput-object v0, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAmazon:[Ljava/lang/String;

    const-string v0, ".com"

    .line 54
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAmazonForum:[Ljava/lang/String;

    .line 60
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/store/StoreUtils;->validTldsForSalesforce:[Ljava/lang/String;

    const-string v1, ".cn"

    .line 66
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAlipay:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getUserAgentSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0xe

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/amazon/kcp/store/StoreUtils;->getUserAgentSuffix$default(Ljava/lang/String;ZLcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final getUserAgentSuffix(Ljava/lang/String;ZLcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "versionString"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    invoke-interface {p2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    const-string p3, "TOS Store"

    goto :goto_0

    .line 170
    :cond_0
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->app_name_full:I

    invoke-virtual {p3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v2, "context.getString(R.string.app_name_full)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    :goto_0
    sget-object v2, Lcom/amazon/kcp/application/AmazonDeviceType;->REDDING:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/amazon/kcp/application/AmazonDeviceType;->CHINA:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v2}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    const-string v2, "Tablet"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "SmartPhone"

    :goto_2
    if-nez p1, :cond_3

    const-string v3, "/Kindle "

    .line 175
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v3, " "

    .line 178
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "AMZN"

    .line 179
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    .line 180
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    if-eqz p1, :cond_4

    const-string v3, "//"

    goto :goto_3

    :cond_4
    move-object v3, v2

    .line 182
    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Android"

    .line 185
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    invoke-interface {p2}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "eBookstore"

    .line 189
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_5

    .line 194
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    const-string p0, ")"

    .line 197
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "agentSuffix.toString()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static synthetic getUserAgentSuffix$default(Ljava/lang/String;ZLcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/content/Context;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    .line 164
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result p1

    :cond_0
    and-int/lit8 p5, p4, 0x4

    if-eqz p5, :cond_1

    .line 165
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object p2

    const-string p5, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    and-int/lit8 p4, p4, 0x8

    if-eqz p4, :cond_2

    .line 166
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    const-string p4, "Utils.getFactory()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string p4, "Utils.getFactory().context"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, p1, p2, p3}, Lcom/amazon/kcp/store/StoreUtils;->getUserAgentSuffix(Ljava/lang/String;ZLcom/amazon/kcp/application/IDeviceInformationProvider;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isAlipayUrl(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreUtils;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "Uri.parse(url)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "Uri.parse(url).host ?: return false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAlipay:[Ljava/lang/String;

    const-string v3, "alipay"

    invoke-virtual {v0, p0, v3, v2}, Lcom/amazon/kcp/store/StoreUtils;->validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static final isAmazonForumUrl(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreUtils;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "Uri.parse(url)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "Uri.parse(url).host ?: return false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAmazon:[Ljava/lang/String;

    const-string v3, "amazonforum"

    invoke-virtual {v0, p0, v3, v2}, Lcom/amazon/kcp/store/StoreUtils;->validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static final isAmazonMediaUrl(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreUtils;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "Uri.parse(url)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "Uri.parse(url).host ?: return false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAmazon:[Ljava/lang/String;

    const-string v3, "media-amazon"

    invoke-virtual {v0, p0, v3, v2}, Lcom/amazon/kcp/store/StoreUtils;->validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static final isAmazonUrl(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreUtils;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "Uri.parse(url)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "Uri.parse(url).host ?: return false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/store/StoreUtils;->validTldsForAmazon:[Ljava/lang/String;

    const-string v3, "amazon"

    invoke-virtual {v0, p0, v3, v2}, Lcom/amazon/kcp/store/StoreUtils;->validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static final isSalesforceUrl(Ljava/lang/String;)Z
    .locals 4

    const-string/jumbo v0, "url"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/store/StoreUtils;->validateScheme(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amazon/kcp/store/StoreUtils;->INSTANCE:Lcom/amazon/kcp/store/StoreUtils;

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    const-string v2, "Uri.parse(url)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "Uri.parse(url).host ?: return false"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lcom/amazon/kcp/store/StoreUtils;->validTldsForSalesforce:[Ljava/lang/String;

    const-string v3, "salesforce"

    invoke-virtual {v0, p0, v3, v2}, Lcom/amazon/kcp/store/StoreUtils;->validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private final validateScheme(Ljava/lang/String;)Z
    .locals 1

    .line 124
    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpsUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/webkit/URLUtil;->isHttpUrl(Ljava/lang/String;)Z

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


# virtual methods
.method public final validateHostname$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "domain"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "permissibleTlds"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    new-instance v0, Lcom/amazon/kcp/store/StoreUtils$validateHostname$$inlined$sortedByDescending$1;

    invoke-direct {v0}, Lcom/amazon/kcp/store/StoreUtils$validateHostname$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {p3, v0}, Lkotlin/collections/ArraysKt;->sortedWith([Ljava/lang/Object;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p3

    .line 203
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    .line 141
    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 204
    :goto_0
    check-cast v0, Ljava/lang/String;

    const/4 p3, 0x0

    if-eqz v0, :cond_4

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2, v1}, Lkotlin/text/StringsKt;->endsWith(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_1
    return v1

    :cond_4
    return p3
.end method
