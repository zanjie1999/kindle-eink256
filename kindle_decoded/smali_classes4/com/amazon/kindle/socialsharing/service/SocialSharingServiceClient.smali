.class public Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;
.super Ljava/lang/Object;
.source "SocialSharingServiceClient.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/service/ISocialSharingServiceClient;


# static fields
.field private static final CLASS_TAG:Ljava/lang/String; = "com.amazon.kindle.socialsharing.service.SocialSharingServiceClient"

.field private static final HEADER_LOCATION:Ljava/lang/String; = "location"

.field private static final LOG_FORMAT:Ljava/lang/String; = "%s:%s"

.field private static final LOG_TAG:Ljava/lang/String; = "SocialSharing"

.field private static final REQUEST_BACKOFF_MULT:I = 0x1

.field private static final REQUEST_MAX_RETRIES:I = 0x0

.field private static final REQUEST_TIMEOUT_MSEC:I = 0x4e20

.field private static final RESOURCE_PATH:Ljava/lang/String; = "kca/share_backlink"

.field private static final SERVICE_AUTHORITY_GAMMA:Ljava/lang/String; = "kca-preprod.amazon.com"

.field private static final SERVICE_AUTHORITY_PROD:Ljava/lang/String; = "kca.amazon.com"

.field private static final SERVICE_SCHEMA:Ljava/lang/String; = "https"


# instance fields
.field private final deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

.field private final gson:Lcom/google/gson/Gson;

.field private final isDebugBuild:Z

.field private final metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

.field private final plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

.field private final rasMetadata:Lcom/amazon/kindle/socialsharing/service/RasMetadata;

.field private final requestQueue:Lcom/android/volley/RequestQueue;

.field private final resourceBaseUri:Landroid/net/Uri;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private final softwareVersion:Ljava/lang/String;

.field private final userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Lcom/android/volley/toolbox/HttpStack;)V
    .locals 4

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Need the Kindle Reader SDK"

    .line 98
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Need the social sharing plugin"

    .line 99
    invoke-static {p2, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 101
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    .line 102
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->isReleaseBuild()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iput-boolean v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->isDebugBuild:Z

    .line 103
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getMetricsManager()Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->metricsManager:Lcom/amazon/kindle/socialsharing/metrics/ISocialSharingPerfMetricsManager;

    .line 104
    new-instance v1, Lcom/amazon/kindle/socialsharing/service/RasMetadata;

    invoke-direct {v1}, Lcom/amazon/kindle/socialsharing/service/RasMetadata;-><init>()V

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->rasMetadata:Lcom/amazon/kindle/socialsharing/service/RasMetadata;

    .line 105
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v3, "ApplicationManager must not be null"

    .line 106
    invoke-static {p1, v3, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    .line 109
    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    .line 110
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;->getSoftwareVersion()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->softwareVersion:Ljava/lang/String;

    .line 111
    new-instance p1, Lcom/google/gson/GsonBuilder;

    invoke-direct {p1}, Lcom/google/gson/GsonBuilder;-><init>()V

    sget-object p2, Lcom/google/gson/FieldNamingPolicy;->LOWER_CASE_WITH_UNDERSCORES:Lcom/google/gson/FieldNamingPolicy;

    invoke-virtual {p1, p2}, Lcom/google/gson/GsonBuilder;->setFieldNamingPolicy(Lcom/google/gson/FieldNamingPolicy;)Lcom/google/gson/GsonBuilder;

    invoke-virtual {p1}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->gson:Lcom/google/gson/Gson;

    const-string p1, "kca.amazon.com"

    .line 114
    :try_start_0
    new-instance p2, Landroid/net/Uri$Builder;

    invoke-direct {p2}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "https"

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    const-string p2, "kca/share_backlink"

    invoke-virtual {p1, p2}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->resourceBaseUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    new-instance p1, Lcom/android/volley/toolbox/BasicNetwork;

    invoke-direct {p1, p3}, Lcom/android/volley/toolbox/BasicNetwork;-><init>(Lcom/android/volley/toolbox/HttpStack;)V

    .line 120
    new-instance p2, Lcom/android/volley/toolbox/NoCache;

    invoke-direct {p2}, Lcom/android/volley/toolbox/NoCache;-><init>()V

    .line 121
    new-instance p3, Lcom/android/volley/RequestQueue;

    invoke-direct {p3, p2, p1, v2}, Lcom/android/volley/RequestQueue;-><init>(Lcom/android/volley/Cache;Lcom/android/volley/Network;I)V

    iput-object p3, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->requestQueue:Lcom/android/volley/RequestQueue;

    .line 122
    invoke-virtual {p3}, Lcom/android/volley/RequestQueue;->start()V

    return-void

    :catch_0
    move-exception p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .line 116
    sget-object p3, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->CLASS_TAG:Ljava/lang/String;

    aput-object p3, p2, v0

    const-string p3, "Invalid base URI"

    aput-object p3, p2, v2

    const-string p3, "%s:%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "SocialSharing"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method static synthetic access$000(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;)Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->isDebugBuild:Z

    return p0
.end method

.method static synthetic access$100(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;)Lcom/google/gson/Gson;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method

.method private constructResourceUrl(Lcom/amazon/kindle/socialsharing/service/Share;)Ljava/lang/String;
    .locals 4

    .line 438
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->resourceBaseUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 440
    sget-object v2, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->CLASS_TAG:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot construct the resource URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->resourceBaseUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s:%s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SocialSharing"

    .line 440
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private constructShare(Lcom/amazon/kindle/socialsharing/service/protocol/State;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/Share;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;
        }
    .end annotation

    .line 201
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/Share;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/service/Share;-><init>()V

    .line 202
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getShareBacklinkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/Share;->setId(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setAsin(Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0, p4}, Lcom/amazon/kindle/socialsharing/service/Share;->setLandingPageUrl(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setImageUrl(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getPhysicalId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setPhysicalId(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getAuthors()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setAuthors(Ljava/util/List;)V

    .line 208
    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getBookTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setTitle(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p3}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getProductDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setDescription(Ljava/lang/String;)V

    .line 210
    sget-object p1, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$7;->$SwitchMap$com$amazon$kindle$socialsharing$service$protocol$ShareType:[I

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getShareType()Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p1, p1, p3

    const/4 p3, 0x1

    if-eq p1, p3, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-ne p1, p3, :cond_1

    .line 220
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getQuoteData()Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 221
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->getQuote()Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->getQuote()Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->getText()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuote(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->getStartLocation()I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuoteStart(I)V

    .line 226
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->getEndLocation()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setQuoteEnd(I)V

    const-string p1, "QUOTE"

    .line 227
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setShareType(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_0
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "Invalid quote information in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 231
    :cond_1
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unexpected share type is in the response: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getShareType()Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 216
    :cond_2
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setReadingProgress(I)V

    const-string p1, "BOOK"

    .line 217
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setShareType(Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_3
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setReadingProgress(I)V

    const-string p1, "PROGRESS"

    .line 213
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/Share;->setShareType(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method private constructState(Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/protocol/State;
    .locals 2

    .line 307
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/protocol/State;

    invoke-direct {v0}, Lcom/amazon/kindle/socialsharing/service/protocol/State;-><init>()V

    .line 308
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setAsin(Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0, p3}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setReftag(Ljava/lang/String;)V

    .line 310
    const-class p3, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getContentType()Lcom/amazon/kindle/krx/content/ContentType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p3

    check-cast p3, Lcom/amazon/kindle/socialsharing/service/protocol/BookType;

    invoke-virtual {v0, p3}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setBookType(Lcom/amazon/kindle/socialsharing/service/protocol/BookType;)V

    .line 311
    invoke-interface {p2}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setAcr(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setShareData(Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;)V

    .line 313
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;

    invoke-direct {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;-><init>()V

    .line 314
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->deviceInformation:Lcom/amazon/kindle/krx/application/IDeviceInformation;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;->setDeviceType(Ljava/lang/String;)V

    .line 315
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->softwareVersion:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;->setSoftwareVersion(Ljava/lang/String;)V

    .line 316
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setDeviceData(Lcom/amazon/kindle/socialsharing/service/protocol/DeviceData;)V

    .line 317
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;

    invoke-direct {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;-><init>()V

    .line 318
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;->setCid(Ljava/lang/String;)V

    .line 319
    iget-object p2, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->userAccount:Lcom/amazon/kindle/krx/application/IUserAccount;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/UserData;->setMarketplace(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setUserData(Lcom/amazon/kindle/socialsharing/service/protocol/UserData;)V

    return-object v0
.end method

.method private createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 239
    invoke-direct {p0, p2, p1, p4}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->constructState(Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/protocol/State;

    move-result-object v3

    .line 240
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "reftag: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getReftag()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 241
    new-instance p1, Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;

    iget-object p4, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getShareType()Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p4, p2}, Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;)V

    .line 243
    new-instance p2, Lcom/amazon/kindle/socialsharing/service/GsonRequest;

    iget-object p4, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->resourceBaseUri:Landroid/net/Uri;

    .line 244
    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v4, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;

    iget-object p4, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->rasMetadata:Lcom/amazon/kindle/socialsharing/service/RasMetadata;

    .line 245
    invoke-virtual {p4, p5}, Lcom/amazon/kindle/socialsharing/service/RasMetadata;->getRasMetaDataHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;

    invoke-direct {v6, p0, p1, p6, p3}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$1;-><init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;Ljava/lang/String;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;)V

    new-instance v7, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;

    invoke-direct {v7, p0, p1, p3}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$2;-><init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/CreateShareMetrics;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;)V

    iget-boolean v8, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->isDebugBuild:Z

    const/4 v1, 0x1

    move-object v0, p2

    invoke-direct/range {v0 .. v8}, Lcom/amazon/kindle/socialsharing/service/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)V

    .line 285
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->start()V

    .line 287
    invoke-direct {p0, p2}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->issueRequest(Lcom/android/volley/Request;)V

    return-void
.end method

.method private issueRequest(Lcom/android/volley/Request;)V
    .locals 4

    .line 291
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/16 v1, 0x4e20

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p1, v0}, Lcom/android/volley/Request;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)Lcom/android/volley/Request;

    .line 294
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->requestQueue:Lcom/android/volley/RequestQueue;

    invoke-virtual {v0, p1}, Lcom/android/volley/RequestQueue;->add(Lcom/android/volley/Request;)Lcom/android/volley/Request;

    return-void
.end method


# virtual methods
.method public createBookShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 330
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot create a share for a null ASIN"

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    new-instance v0, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    sget-object v2, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;)V

    .line 332
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->start()V

    .line 333
    new-instance v5, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    invoke-direct {v5}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;-><init>()V

    .line 334
    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->BOOK:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setShareType(Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;)V

    .line 335
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setProgress(I)V

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 336
    invoke-direct/range {v3 .. v9}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->stop()V

    return-void
.end method

.method public createProgressShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 355
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Cannot create a share for a null ASIN"

    invoke-static {v0, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    new-instance v0, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    sget-object v2, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->PROG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;)V

    .line 357
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->start()V

    .line 358
    new-instance v5, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    invoke-direct {v5}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;-><init>()V

    .line 359
    sget-object v1, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->PROG:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setShareType(Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;)V

    .line 360
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getReadingProgress()I

    move-result v1

    invoke-virtual {v5, v1}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setProgress(I)V

    const/4 v9, 0x0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 361
    invoke-direct/range {v3 .. v9}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->stop()V

    return-void
.end method

.method public createQuoteShare(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;IILjava/lang/String;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    move-object v0, p2

    .line 129
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "Cannot create a share from a null ASIN"

    invoke-static {v1, v4, v3}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "Cannot create a quote share with a null quote"

    .line 130
    invoke-static {p2, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    new-instance v1, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;

    move-object v9, p0

    iget-object v2, v9, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    sget-object v3, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->ATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v3}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kindle/socialsharing/metrics/PrepareShareMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;Ljava/lang/String;)V

    .line 132
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->start()V

    .line 133
    new-instance v4, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    invoke-direct {v4}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;-><init>()V

    .line 134
    sget-object v2, Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;->ATT:Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    invoke-virtual {v4, v2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setShareType(Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;)V

    .line 135
    new-instance v2, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;

    invoke-direct {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;-><init>()V

    move v3, p3

    .line 136
    invoke-virtual {v2, p3}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->setStartLocation(I)V

    move v3, p4

    .line 137
    invoke-virtual {v2, p4}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->setEndLocation(I)V

    .line 138
    new-instance v3, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;

    invoke-direct {v3}, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;-><init>()V

    move-object v5, p5

    .line 139
    invoke-virtual {v3, p5}, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->setLanguage(Ljava/lang/String;)V

    .line 140
    invoke-virtual {v3, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;->setText(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v2, v3}, Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;->setQuote(Lcom/amazon/kindle/socialsharing/service/protocol/GlobalizedString;)V

    .line 142
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->setQuoteData(Lcom/amazon/kindle/socialsharing/service/protocol/QuoteData;)V

    const/4 v8, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    .line 143
    invoke-direct/range {v2 .. v8}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->createShare(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/ISharingServiceResponseListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->stop()V

    return-void
.end method

.method protected getShareFromResponse(Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/Share;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;
        }
    .end annotation

    .line 155
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->getState()Lcom/amazon/kindle/socialsharing/service/protocol/State;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 156
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getAsin()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 159
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getShareData()Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 162
    invoke-virtual {v0}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->getShareData()Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;

    move-result-object v1

    .line 163
    invoke-virtual {v1}, Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;->getShareType()Lcom/amazon/kindle/socialsharing/service/protocol/ShareType;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 166
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->getMetadata()Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 167
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getAuthors()Ljava/util/LinkedList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getBookTitle()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 168
    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getPhysicalId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;->getProductDescription()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 171
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/protocol/CreateShareResponse;->getHeaders()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v3, "location"

    .line 175
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_1

    .line 183
    invoke-direct {p0, v0, v1, v2, p2}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->constructShare(Lcom/amazon/kindle/socialsharing/service/protocol/State;Lcom/amazon/kindle/socialsharing/service/protocol/ShareData;Lcom/amazon/kindle/socialsharing/service/protocol/Metadata;Ljava/lang/String;)Lcom/amazon/kindle/socialsharing/service/Share;

    move-result-object p1

    return-object p1

    .line 180
    :cond_1
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "No location header in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 173
    :cond_2
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "No headers in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 169
    :cond_3
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "Missing metadata field in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 164
    :cond_4
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "Share type information is not in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 160
    :cond_5
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "Share information is not in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 157
    :cond_6
    new-instance p1, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;

    const-string p2, "Missing state field in the response"

    invoke-direct {p1, p2}, Lcom/amazon/kindle/socialsharing/service/InvalidSharingServiceResponseException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateShare(Lcom/amazon/kindle/socialsharing/service/Share;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Cannot update a null share"

    .line 380
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Cannot update a share with null social network"

    .line 381
    invoke-static {p2, v1, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->constructResourceUrl(Lcom/amazon/kindle/socialsharing/service/Share;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    return-void

    .line 388
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource base URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->resourceBaseUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SocialSharing"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource URL: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 391
    new-instance v5, Lcom/amazon/kindle/socialsharing/service/protocol/State;

    invoke-direct {v5}, Lcom/amazon/kindle/socialsharing/service/protocol/State;-><init>()V

    .line 392
    invoke-virtual {p1}, Lcom/amazon/kindle/socialsharing/service/Share;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setShareBacklinkId(Ljava/lang/String;)V

    .line 393
    invoke-virtual {v5, p2}, Lcom/amazon/kindle/socialsharing/service/protocol/State;->setSocialNetworks(Ljava/lang/String;)V

    .line 395
    new-instance p2, Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;

    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->plugin:Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;

    invoke-direct {p2, v0}, Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;-><init>(Lcom/amazon/kindle/socialsharing/SocialSharingPlugin;)V

    .line 397
    new-instance v0, Lcom/amazon/kindle/socialsharing/service/GsonRequest;

    const/4 v3, 0x2

    const-class v6, Lcom/amazon/kindle/socialsharing/service/protocol/State;

    iget-object v1, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->rasMetadata:Lcom/amazon/kindle/socialsharing/service/RasMetadata;

    .line 398
    invoke-virtual {v1, p3}, Lcom/amazon/kindle/socialsharing/service/RasMetadata;->getRasMetaDataHeaders(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v7

    new-instance v8, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;

    invoke-direct {v8, p0, p2, p1}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$3;-><init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;Lcom/amazon/kindle/socialsharing/service/Share;)V

    new-instance v9, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$4;

    invoke-direct {v9, p0, p2}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient$4;-><init>(Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;Lcom/amazon/kindle/socialsharing/metrics/UpdateShareMetrics;)V

    iget-boolean v10, p0, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->isDebugBuild:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Lcom/amazon/kindle/socialsharing/service/GsonRequest;-><init>(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Ljava/util/Map;Lcom/android/volley/Response$Listener;Lcom/android/volley/Response$ErrorListener;Z)V

    .line 425
    invoke-virtual {p2}, Lcom/amazon/kindle/socialsharing/metrics/AbstractLatencyMetrics;->start()V

    .line 427
    invoke-direct {p0, v0}, Lcom/amazon/kindle/socialsharing/service/SocialSharingServiceClient;->issueRequest(Lcom/android/volley/Request;)V

    return-void
.end method
