.class public final Lcom/amazon/kcp/application/DeeplinkSonarUtils;
.super Ljava/lang/Object;
.source "DeeplinkSonarUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/amazon/kcp/application/DeeplinkSonarUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    invoke-direct {v0}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->INSTANCE:Lcom/amazon/kcp/application/DeeplinkSonarUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final makeSonarRequest(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;)V
    .locals 4

    .line 83
    new-instance v0, Lcom/amazon/kindle/webservices/BaseWebRequest;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/webservices/BaseWebRequest;-><init>(Ljava/lang/String;)V

    .line 85
    new-instance v1, Lcom/amazon/kcp/application/DeeplinkSonarUtils$makeSonarRequest$1;

    invoke-direct {v1}, Lcom/amazon/kcp/application/DeeplinkSonarUtils$makeSonarRequest$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/webservices/BaseWebRequest;->setResponseHandler(Lcom/amazon/kindle/webservices/IResponseHandler;)Lcom/amazon/kindle/webservices/IWebRequest;

    .line 102
    invoke-static {}, Lcom/amazon/kcp/application/DeeplinkSonarUtilsKt;->access$getTAG$p()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Making a request to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for Sonar metrics"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-interface {p2, v0}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    return-void
.end method

.method public static synthetic unwrapDeeplink$default(Lcom/amazon/kcp/application/DeeplinkSonarUtils;Landroid/net/Uri;Landroid/net/Uri;Lcom/amazon/kindle/webservices/IWebRequestManager;ILjava/lang/Object;)Landroid/net/Uri;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "U"

    .line 68
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string p5, "Uri.parse(Uri.decode(uri\u2026NAR_DEEPLINK_PARAM_KEY)))"

    invoke-static {p2, p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 69
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p3

    const-string p4, "Utils.getFactory()"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object p3

    const-string p4, "Utils.getFactory().webRequestManager"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->unwrapDeeplink(Landroid/net/Uri;Landroid/net/Uri;Lcom/amazon/kindle/webservices/IWebRequestManager;)Landroid/net/Uri;

    return-object p2
.end method


# virtual methods
.method public final isSonarDeeplink(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string/jumbo v0, "pathSegments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 53
    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "gp"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string/jumbo v1, "r.html"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final unwrapDeeplink(Landroid/net/Uri;Landroid/net/Uri;Lcom/amazon/kindle/webservices/IWebRequestManager;)Landroid/net/Uri;
    .locals 1

    const-string/jumbo v0, "uri"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deeplinkUri"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "webRequestManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "uri.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p3}, Lcom/amazon/kcp/application/DeeplinkSonarUtils;->makeSonarRequest(Ljava/lang/String;Lcom/amazon/kindle/webservices/IWebRequestManager;)V

    return-object p2
.end method
