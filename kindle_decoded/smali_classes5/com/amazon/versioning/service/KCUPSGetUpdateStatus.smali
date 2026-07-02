.class public Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;
.super Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;
.source "KCUPSGetUpdateStatus.java"


# static fields
.field private static final API_PATH:Ljava/lang/String; = "updateStatus/"

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final LAST_EVALUATED_KEY:Ljava/lang/String; = "lastEvaluatedKey"

.field private static final PAGE_LIMIT_COUNT:Ljava/lang/String; = "15"

.field private static final PAGE_LIMIT_COUNT_KEY:Ljava/lang/String; = "pageLimitCount"

.field private static final REST_API_VERSION_KEY:Ljava/lang/String; = "1"

.field private static final REST_PREFERRED_MARKETPLACE:Ljava/lang/String;


# instance fields
.field private final lastEvaluatedKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->CLASS_TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "Lcom/amazon/versioning/data/UpdatedContentItemLibrary;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V

    .line 34
    iput-object p2, p0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->lastEvaluatedKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getAPIPath()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "updateStatus/"

    return-object v0
.end method

.method protected getAPIVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1"

    return-object v0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "GET"

    return-object v0
.end method

.method protected getAdditionalHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pageLimitCount"

    const-string v2, "15"

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    iget-object v1, p0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->lastEvaluatedKey:Ljava/lang/String;

    const-string v2, "lastEvaluatedKey"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    invoke-super {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getHeaders()Ljava/util/Map;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->getAPIVersion()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 90
    sget-object v0, Lcom/amazon/versioning/service/KCUPSGetUpdateStatus;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 0

    return-object p0
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getResponseCode()I

    move-result v0

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    invoke-virtual {v1}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 70
    invoke-static {p1}, Lcom/amazon/versioning/data/UpdatedContentItemLibrary;->extractValue(Ljava/io/InputStream;)Lcom/amazon/versioning/data/UpdatedContentItemLibrary;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setReturnObjectFromService(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
