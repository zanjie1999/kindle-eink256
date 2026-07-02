.class public Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;
.super Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;
.source "KCUPSPostVersioningUpdateState.java"


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

.field private static final IS_ENABLED:Ljava/lang/String; = "isEnabled"

.field private static final REST_API_VERSION_KEY:Ljava/lang/String; = "1"

.field private static final REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

.field private static final UTF_8:Ljava/lang/String; = "UTF-8"


# instance fields
.field private final currentUpdateSetting:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

.field private updateSetting:Lcom/amazon/versioning/data/UpdateSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->CLASS_TAG:Ljava/lang/String;

    .line 24
    invoke-static {}, Lcom/amazon/versioning/ContentUpdatePlugin;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;-><init>(Lcom/amazon/versioning/interfaces/KCUPSResponseReceivedListener;)V

    .line 33
    iput-object p2, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->currentUpdateSetting:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    return-void
.end method

.method private getDataString(Ljava/util/HashMap;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v3, "&"

    .line 76
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    :goto_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "UTF-8"

    invoke-static {v3, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 79
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v4}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 82
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
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

    const-string v0, "POST"

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

.method public getBody()[B
    .locals 5

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    sget-object v1, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState$1;->$SwitchMap$com$amazon$versioning$data$enums$UpdateSettingRequestValue:[I

    iget-object v2, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->currentUpdateSetting:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const-string v3, "isEnabled"

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 45
    :cond_0
    sget-object v1, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_OFF:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    .line 46
    invoke-virtual {v1}, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 41
    :cond_1
    sget-object v1, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->TURN_ON:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    .line 42
    invoke-virtual {v1}, Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;->toString()Ljava/lang/String;

    move-result-object v1

    .line 41
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const/4 v1, 0x0

    .line 53
    :try_start_0
    invoke-direct {p0, v0}, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->getDataString(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string v2, "UTF-8"

    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-object v0, v1

    .line 57
    :catch_1
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get binary for JSON request: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setException(Ljava/lang/Exception;)V

    return-object v1
.end method

.method protected getPreferredMarketplace()Ljava/lang/String;
    .locals 1

    .line 135
    sget-object v0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->REST_PREFERRED_MARKETPLACE:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseHandler()Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
    .locals 0

    return-object p0
.end method

.method public onInputStream(Ljava/io/InputStream;)V
    .locals 2

    .line 106
    sget-object p1, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState$1;->$SwitchMap$com$amazon$versioning$data$enums$UpdateSettingRequestValue:[I

    iget-object v0, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->currentUpdateSetting:Lcom/amazon/versioning/data/enums/UpdateSettingRequestValue;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const-string v0, "KCUPA_SETTINGS"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    new-instance p1, Lcom/amazon/versioning/data/UpdateSetting;

    invoke-direct {p1}, Lcom/amazon/versioning/data/UpdateSetting;-><init>()V

    iput-object p1, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->updateSetting:Lcom/amazon/versioning/data/UpdateSetting;

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v1}, Lcom/amazon/versioning/data/UpdateSetting;->setEnabled(Z)V

    const-string p1, "SETTINGS.TURN_OFF_ABU_SUCCESS"

    .line 115
    invoke-virtual {p0, v0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lcom/amazon/versioning/data/UpdateSetting;

    invoke-direct {p1}, Lcom/amazon/versioning/data/UpdateSetting;-><init>()V

    iput-object p1, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->updateSetting:Lcom/amazon/versioning/data/UpdateSetting;

    .line 109
    invoke-virtual {p1, v1}, Lcom/amazon/versioning/data/UpdateSetting;->setEnabled(Z)V

    const-string p1, "SETTINGS.TURN_ON_ABU_SUCCESS"

    .line 110
    invoke-virtual {p0, v0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->reportPMETandMetadata(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    :goto_0
    iget-object p1, p0, Lcom/amazon/versioning/service/KCUPSPostVersioningUpdateState;->updateSetting:Lcom/amazon/versioning/data/UpdateSetting;

    invoke-virtual {p0, p1}, Lcom/amazon/versioning/service/ContentUpdateDownloadRequest;->setReturnObjectFromService(Ljava/lang/Object;)V

    return-void
.end method
