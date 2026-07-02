.class public final Lcom/amazon/kcp/home/feeds/HomeFeedRequest;
.super Lcom/amazon/kindle/webservices/BaseWebRequest;
.source "HomeFeedRequest.kt"


# instance fields
.field private final GSON:Lcom/google/gson/Gson;

.field private final completion:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/amazon/kcp/home/models/voltron/SidekickResponse;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final marketplace:Lcom/amazon/kcp/application/Marketplace;

.field private final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private final recentAsins:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private response:Lcom/amazon/kcp/home/database/HomeFeedData;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kcp/application/Marketplace;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/amazon/kcp/home/models/voltron/SidekickResponse;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "marketplace"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "completion"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-direct {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>()V

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    iput-object p2, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->recentAsins:Ljava/util/Collection;

    iput-object p4, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->completion:Lkotlin/jvm/functions/Function1;

    .line 87
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object p1

    const-class p2, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 88
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 89
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    .line 90
    const-class p2, Lcom/amazon/kcp/home/models/voltron/VoltronBlock;

    new-instance p4, Lcom/amazon/kcp/home/models/voltron/SidekickBlockDeserializer;

    invoke-direct {p4}, Lcom/amazon/kcp/home/models/voltron/SidekickBlockDeserializer;-><init>()V

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 91
    const-class p2, Lcom/amazon/kcp/home/models/voltron/MainWidget;

    new-instance p4, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;

    invoke-direct {p4}, Lcom/amazon/kcp/home/models/voltron/MainWidgetDeserializer;-><init>()V

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 92
    const-class p2, Lcom/amazon/kcp/home/models/voltron/SidekickCard;

    new-instance p4, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer;

    invoke-direct {p4}, Lcom/amazon/kcp/home/models/voltron/SidekickCardDeserializer;-><init>()V

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 93
    const-class p2, Lcom/amazon/kcp/home/models/voltron/VoltronAction;

    new-instance p4, Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer;

    invoke-direct {p4}, Lcom/amazon/kcp/home/models/voltron/VoltronActionDeserializer;-><init>()V

    invoke-virtual {p1, p2, p4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->GSON:Lcom/google/gson/Gson;

    .line 97
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    const-string p2, "com.amazon.kcp.home.feeds.HomeFeedRequest"

    const-string p4, "VoltronHomeRequestCount"

    invoke-virtual {p1, p2, p4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->buildUrl(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setUrl(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 99
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Voltron Homefeed url: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    invoke-virtual {p0, p3}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    const/4 p1, 0x5

    .line 101
    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 102
    sget-object p1, Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;->BLOCKING:Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setPriority(Lcom/amazon/kindle/webservices/IWebRequest$RequestPriority;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 103
    new-instance p1, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;

    invoke-direct {p1, p0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$2;-><init>(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)V

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    .line 82
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    const-string p6, "Utils.getFactory()"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object p3

    const-string p6, "Utils.getFactory().authenticationManager"

    invoke-static {p3, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result p3

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    .line 83
    sget-object p4, Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;->INSTANCE:Lcom/amazon/kcp/home/feeds/HomeFeedRequest$1;

    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;-><init>(Lcom/amazon/kcp/application/Marketplace;Ljava/util/Collection;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static final synthetic access$getCompletion$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->completion:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public static final synthetic access$getGSON$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/google/gson/Gson;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->GSON:Lcom/google/gson/Gson;

    return-object p0
.end method

.method public static final synthetic access$getMarketplace$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/amazon/kcp/application/Marketplace;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    return-object p0
.end method

.method public static final synthetic access$getMessageQueue$p(Lcom/amazon/kcp/home/feeds/HomeFeedRequest;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method private final buildUrl(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;
    .locals 13

    .line 143
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    .line 144
    sget-object v1, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->PROD:Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    .line 146
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isEarlyAccessBuild()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "beta"

    goto :goto_0

    .line 147
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isDebugBuild()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "dev"

    goto :goto_0

    :cond_1
    move-object v2, v3

    .line 151
    :goto_0
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v4

    if-ne v1, v4, :cond_2

    goto :goto_1

    .line 152
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getEndpoint()Lcom/amazon/kcp/home/debug/SidekickEndpoint;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object v3

    .line 155
    :goto_1
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    .line 156
    invoke-virtual {v1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    .line 157
    invoke-virtual {v1, p1}, Lcom/amazon/kcp/home/debug/SidekickEndpoint;->getAuthority(Lcom/amazon/kcp/application/Marketplace;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "/kindle-dbs/homepage"

    .line 158
    invoke-virtual {p1, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "format"

    const-string v4, "json"

    .line 159
    invoke-virtual {p1, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 160
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    const-string v4, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    const-string v4, "deviceType"

    invoke-virtual {p1, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string/jumbo v1, "useDeviceLocale"

    const-string/jumbo v4, "true"

    .line 161
    invoke-virtual {p1, v1, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 162
    iget-object v4, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->recentAsins:Ljava/util/Collection;

    if-eqz v4, :cond_3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x3e

    const/4 v12, 0x0

    const-string v5, ","

    invoke-static/range {v4 .. v12}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    const-string v1, ""

    :goto_2
    const-string/jumbo v4, "sourceAsins"

    invoke-virtual {p1, v4, v1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string v1, "Uri.Builder()\n          \u2026.joinToString(\",\") ?: \"\")"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "buildVariant"

    .line 163
    invoke-static {p1, v1, v2}, Lcom/amazon/kcp/home/feeds/HomeFeedRequestKt;->access$appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    const-string/jumbo v1, "pagehostOverride"

    .line 164
    invoke-static {p1, v1, v3}, Lcom/amazon/kcp/home/feeds/HomeFeedRequestKt;->access$appendOptionalQueryParameter(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 166
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->getPageIdOverride()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "pageIdOverride"

    .line 167
    invoke-virtual {p1, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 170
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "builder.build().toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public final getCookieString$LibraryModule_release()Ljava/lang/String;
    .locals 4

    .line 242
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    const-string v1, "Utils.getFactory()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "Utils.getFactory().kindl\u2026 StringUtils.EMPTY_STRING"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v0

    const-string/jumbo v1, "sdk.applicationManager.deviceInformation"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "^(x-[a-z]+)=\"([^;]+)\";.*domain=([a-z\\.]+);.*"

    .line 244
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 245
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getXmainXacbCookieForDevicePfm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 247
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "x-access-token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .line 249
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    .line 250
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "com.amazon.kcp.home.feeds.HomeFeedRequest"

    const-string v2, "Couldn\'t find x-main or x-acb cookie"

    .line 253
    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method

.method public final getDramCompliantKStoreString$LibraryModule_release()Ljava/lang/String;
    .locals 4

    .line 276
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v0

    const-string v1, "DeviceInformationProviderFactory.getProvider()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deviceType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&appv="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v0

    const-string v2, "AndroidApplicationController.getInstance()"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 199
    sget v0, Lcom/amazon/kindle/librarymodule/R$attr;->app_full_name:I

    sget v1, Lcom/amazon/kindle/librarymodule/R$style;->Theme_Dynamic:I

    invoke-static {v0, v1}, Lcom/amazon/android/util/UIUtils;->getThemedResourceId(II)I

    move-result v0

    .line 200
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Utils.getFactory().conte\u2026String(appNameResourceId)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 201
    invoke-static {}, Lcom/amazon/kcp/application/DeviceInformationProviderFactory;->getProvider()Lcom/amazon/kcp/application/IDeviceInformationProvider;

    move-result-object v1

    const-string/jumbo v2, "provider"

    .line 202
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getOsVersion()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-interface {v1}, Lcom/amazon/kcp/application/IDeviceInformationProvider;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v1

    .line 204
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v3

    const-string v4, "AndroidApplicationController.getInstance()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getVersionString()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isFirstPartyBuild()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "kindle-fire-home"

    goto :goto_0

    :cond_0
    const-string v4, "KindleAppHome"

    :goto_0
    const/4 v5, 0x6

    new-array v5, v5, [Lkotlin/Pair;

    const/4 v6, 0x0

    const-string v7, "deviceTypeId"

    .line 207
    invoke-static {v1, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "androidVersion"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v7, "versionString"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->getUserAgentString$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "User-Agent"

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    const-string v1, "data-schema-format"

    const-string v2, "Sidekick"

    .line 208
    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    .line 209
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->getCookieString$LibraryModule_release()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Cookie"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    .line 210
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Accept-Language"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x4

    .line 211
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->getKStoreString$LibraryModule_release()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x-amzn-kstore"

    invoke-static {v2, v1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x5

    const-string/jumbo v1, "voltron-client-id"

    .line 212
    invoke-static {v1, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    aput-object v1, v5, v0

    .line 206
    invoke-static {v5}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getKStoreString$LibraryModule_release()Ljava/lang/String;
    .locals 3

    .line 263
    sget-object v0, Lcom/amazon/kcp/home/debug/SidekickSettings;->Companion:Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    const-string v2, "Utils.getFactory()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "Utils.getFactory().context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/home/debug/SidekickSettings$Companion;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/home/debug/SidekickSettings;

    move-result-object v0

    .line 264
    invoke-virtual {v0}, Lcom/amazon/kcp/home/debug/SidekickSettings;->isDramCompliantKStoreHeaderEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->getDramCompliantKStoreString$LibraryModule_release()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "appv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object v1

    const-string v2, "AndroidApplicationController.getInstance()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getAppVersionNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getResponse()Lcom/amazon/kcp/home/database/HomeFeedData;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->response:Lcom/amazon/kcp/home/database/HomeFeedData;

    return-object v0
.end method

.method public final getUserAgentString$LibraryModule_release(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "deviceTypeId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "androidVersion"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appFullName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "versionString"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/amazon/kcp/application/AmazonDeviceType;->REDDING:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/kcp/application/AmazonDeviceType;->CHINA:Lcom/amazon/kcp/application/AmazonDeviceType;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/AmazonDeviceType;->getDeviceTypeId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Tablet"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "SmartPhone"

    .line 223
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "/Kindle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " AMZN("

    .line 225
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    .line 227
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",Android/"

    .line 229
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",eBookHome/"

    .line 231
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    .line 235
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "http.agent"

    invoke-static {p2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onBeforeExecute()V
    .locals 4

    .line 174
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "VoltronHomeRequestLatency"

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 175
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VoltronHomeRequestLatency."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->marketplace:Lcom/amazon/kcp/application/Marketplace;

    invoke-virtual {v3}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 176
    invoke-static {v1, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    return-void
.end method

.method public setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
    .locals 4

    .line 180
    const-class v0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;

    invoke-super {p0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setErrorState(Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V

    if-eqz p1, :cond_2

    .line 183
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "VoltronHomeRequestLatency"

    invoke-virtual {v1, v2, v3, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->SERVER_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eq p1, v1, :cond_1

    sget-object v1, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->APP_INTERNAL_ERROR:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 191
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoltronHomeDeviceOrNetworkError"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 189
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VoltronHomeRequestError"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_1
    iget-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/home/events/HomeFeedEvent;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/amazon/kcp/home/events/HomeFeedEvent;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_2
    return-void
.end method

.method public final setResponse(Lcom/amazon/kcp/home/database/HomeFeedData;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/amazon/kcp/home/feeds/HomeFeedRequest;->response:Lcom/amazon/kcp/home/database/HomeFeedData;

    return-void
.end method
