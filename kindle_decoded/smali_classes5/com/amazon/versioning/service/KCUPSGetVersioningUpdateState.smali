.class public Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;
.super Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;
.source "KCUPSGetVersioningUpdateState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amazon/versioning/service/ContentUpdateDownloadRequest<",
        "Lcom/amazon/versioning/data/UpdateSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final API_PATH:Ljava/lang/String; = "automaticVersioningUpdateState"

.field private static final CLASS_TAG:Ljava/lang/String;

.field private static final REST_API_VERSION_KEY:Ljava/lang/String; = "1"

.field private static final REST_PREFERRED_MARKETPLACE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;->CLASS_TAG:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener<",
            "Lcom/amazon/versioning/data/UpdateSetting;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V

    return-void
.end method


# virtual methods
.method protected getAPIPath()Ljava/lang/String;
    .locals 1

    const-string v0, "automaticVersioningUpdateState"

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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/versioning/service/KCUPSGetVersioningUpdateState;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 0

    return-object p0
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 50
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->getResponseCode()I

    move-result v0

    sget-object v1, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->OK:Lcom/amazon/versioning/data/enums/KCUPSResponseCode;

    invoke-virtual {v1}, Lcom/amazon/versioning/data/enums/KCUPSResponseCode;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 51
    invoke-static {p1}, Lcom/amazon/versioning/data/UpdateSetting;->extractValue(Ljava/io/InputStream;)Lcom/amazon/versioning/data/UpdateSetting;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setReturnObjectFromService(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 54
    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setException(Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method
