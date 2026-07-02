.class public final Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;
.super Ljava/lang/Object;
.source "ManifestDownloader.kt"

# interfaces
.implements Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJobFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$Companion;
    }
.end annotation


# instance fields
.field private final krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

.field private final lazyWebRequestExecutor:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private final webRequestManager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ldagger/Lazy;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;",
            "Ldagger/Lazy<",
            "Lcom/amazon/kindle/webservices/IWebRequestExecutor;",
            ">;)V"
        }
    .end annotation

    const-string v0, "krlForDownloadFacade"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "lazyWebRequestExecutor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    iput-object p2, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->lazyWebRequestExecutor:Ldagger/Lazy;

    .line 98
    new-instance p1, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$webRequestManager$2;-><init>(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->webRequestManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$createManifestRequest(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Lcom/amazon/kindle/webservices/IManifestWebRequest;
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->createManifestRequest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Lcom/amazon/kindle/webservices/IManifestWebRequest;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getLazyWebRequestExecutor$p(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;)Ldagger/Lazy;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->lazyWebRequestExecutor:Ldagger/Lazy;

    return-object p0
.end method

.method private final createManifestRequest(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)Lcom/amazon/kindle/webservices/IManifestWebRequest;
    .locals 9

    .line 108
    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getAuthenticationToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "krlForDownloadFacade.get\u2026cationToken(TokenKey.PFM)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getBookId()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v2

    invoke-static {}, Lcom/amazon/kindle/webservices/DynamicConfigManager;->getInstance()Lcom/amazon/kindle/webservices/IDynamicConfigManager;

    move-result-object v4

    const-string v0, "DynamicConfigManager.getInstance()"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->getRequestURL$default(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;Lcom/amazon/kindle/webservices/IDynamicConfigManager;JILjava/lang/Object;)Lcom/amazon/kindle/webservices/WebserviceURL;

    move-result-object v0

    .line 110
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getTodoProperties()Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/amazon/kindle/download/manifest/TodoDownloadProperties;->getUrl()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 111
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_2

    goto :goto_2

    .line 114
    :cond_2
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getFullURL()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_2
    iget-object v3, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-static {p1, v3}, Lcom/amazon/kindle/download/manifest/ManifestUtilsKt;->getManifestRequestHeaders(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;)Ljava/util/Map;

    move-result-object v3

    .line 118
    new-instance v4, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;

    iget-object v5, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-direct {v4, v5, v1, p1}, Lcom/amazon/kindle/download/manifest/ManifestWebRequest;-><init>(Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;Ljava/lang/String;Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;)V

    .line 121
    invoke-virtual {p1}, Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;->getAsin()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setId(Ljava/lang/String;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 122
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setRetries(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 123
    invoke-virtual {v0}, Lcom/amazon/kindle/webservices/WebserviceURL;->getTimeout()J

    move-result-wide v0

    long-to-int p1, v0

    invoke-virtual {v4, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setTimeout(I)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 124
    invoke-virtual {v4, v2}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setAuthenticationRequired(Z)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 125
    invoke-virtual {v4}, Lcom/amazon/kindle/webservices/BaseWebRequest;->getHeaders()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object v4
.end method

.method private final getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;
    .locals 1

    iget-object v0, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->webRequestManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/webservices/IWebRequestManager;

    return-object v0
.end method


# virtual methods
.method public createJob(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;)Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob;
    .locals 10

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delegate"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    new-instance v0, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;

    new-instance v3, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$createJob$1;

    invoke-direct {v3, p0}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory$createJob$1;-><init>(Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;)V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v4

    iget-object v1, p0, Lcom/amazon/kindle/download/manifest/internal/DefaultJobFactory;->krlForDownloadFacade:Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;

    invoke-interface {v1}, Lcom/amazon/kindle/services/download/IKRLForDownloadFacade;->getNetworkService()Lcom/amazon/kindle/network/INetworkService;

    move-result-object v5

    const-string v1, "krlForDownloadFacade.networkService"

    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/16 v8, 0x20

    const/4 v9, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v6, p2

    .line 103
    invoke-direct/range {v1 .. v9}, Lcom/amazon/kindle/download/manifest/internal/ManifestDownloadJob;-><init>(Lcom/amazon/kindle/download/manifest/ManifestDownloadRequestParams;Lkotlin/jvm/functions/Function1;Lcom/amazon/kindle/webservices/IWebRequestManager;Lcom/amazon/kindle/network/INetworkService;Lcom/amazon/kindle/download/manifest/internal/IManifestDownloadJob$Delegate;Lcom/amazon/foundation/internal/IThreadPoolManager;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v0
.end method
