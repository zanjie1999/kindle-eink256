.class public Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "WordWiseSynchronizationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;,
        Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;
    }
.end annotation


# static fields
.field private static final AFTER_NLN_WAITING_TIME:J = 0x3e8L

.field private static final CHINA_COR:Ljava/lang/String; = "CN"

.field private static final CHINA_PFM:Ljava/lang/String; = "AAHKV2X7AFYLW"

.field private static final KEY_CDE_KEY:Ljava/lang/String; = "cdeKey"

.field private static final KEY_GUID:Ljava/lang/String; = "guid"

.field private static final KEY_URL:Ljava/lang/String; = "url"

.field private static final ODOT_TOPIC:Ljava/lang/String; = "LanguageLayer.Sidecar.Acknowledge"

.field private static final SIDECAR_DOWNLOAD_EVENT:Ljava/lang/String; = "SidecarDownload"

.field private static final SIDECAR_DOWNLOAD_SUCCESS_RATE:Ljava/lang/String; = "WordWiseSidecarDownloadSuccessRate"

.field private static final SIDECAR_DOWNLOAD_TIME:Ljava/lang/String; = "WordWiseSidecarDownloadTime"

.field private static final SYNC_DICTIONARY_THROTTLE_TIME_DAYS:J = 0x7L

.field private static final TAG:Ljava/lang/String; = "com.amazon.kcp.wordwise.download.WordWiseSynchronizationManager"

.field private static final WORD_WISE_DICTIONARY_SERVICE_URL_PATH:Ljava/lang/String; = "/gp/kindle/kcp/redding/dictionary-config.html"

.field private static instance:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;


# instance fields
.field private volatile listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private sidecarAsin:Ljava/lang/String;

.field private sidecarGuid:Ljava/lang/String;

.field private sidecarUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 143
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 144
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    .line 145
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    .line 146
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarGuid:Ljava/lang/String;

    .line 147
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)Z
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->isChinaUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;)Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    return-object p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->gunzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sendSidecarOdotAck(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$602(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->publishDownloadEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 62
    invoke-static {p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->getSidecarAckPayload(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized downloadDictionary(ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 6

    monitor-enter p0

    .line 289
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v1, :cond_5

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 295
    :cond_0
    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 299
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 300
    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 301
    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getLastPollTimeKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 302
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 305
    :cond_1
    invoke-virtual {p2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getLastPollTimeKey()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/Date;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 306
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->shouldPollForNewDictionary(JJ)Z

    move-result v0

    if-eqz v1, :cond_2

    if-nez p1, :cond_2

    .line 310
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v4, "Requesting for download of dictionary, dictionary exists and not forced"

    invoke-interface {p1, v1, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 313
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sync for dictionary throttled, last sync time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 314
    monitor-exit p0

    return-void

    .line 318
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "Syncing for dictionary"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object p1

    .line 322
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 328
    :cond_3
    invoke-direct {p0, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->enqueueDictionaryDownloadRequest(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 329
    monitor-exit p0

    return-void

    .line 323
    :cond_4
    :goto_0
    :try_start_2
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v0, "Skipped gloss dictionary sync - word wise not enabled / user not authenticated."

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 292
    :cond_5
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private enqueueDictionaryDownloadRequest(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 10

    .line 606
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isWifiConnected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 608
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "Could not sync dictionary because Wifi is off"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    sget-object p1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    sget-object v0, Lcom/amazon/kindle/krx/download/KRXRequestErrorState;->NO_CONNECTION:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->publishDownloadEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPFMDomain()Ljava/lang/String;

    move-result-object v0

    .line 615
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDeviceInformation()Lcom/amazon/kindle/krx/application/IDeviceInformation;

    move-result-object v1

    .line 616
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v4, "Enqueuing gloss dictionary url download request"

    invoke-interface {v2, v3, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v2

    .line 618
    new-instance v9, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/gp/kindle/kcp/redding/dictionary-config.html"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 619
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getEncryptedDeviceSerialNumber()Ljava/lang/String;

    move-result-object v6

    .line 620
    invoke-interface {v1}, Lcom/amazon/kindle/krx/application/IDeviceInformation;->getDeviceType()Ljava/lang/String;

    move-result-object v7

    move-object v3, v9

    move-object v4, p0

    move-object v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$GlossDictionaryUrlDownloadRequest;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    .line 618
    invoke-interface {v2, v9}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;
    .locals 2

    const-class v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    monitor-enter v0

    .line 136
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    if-nez v1, :cond_0

    .line 137
    new-instance v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-direct {v1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    .line 139
    :cond_0
    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->instance:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getSidecarAckPayload(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 580
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "acr"

    .line 581
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    const-string v1, "asin"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    const-string p1, "guid"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "sidecarRevision"

    .line 584
    invoke-virtual {v0, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private gunzip(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const-string v0, "Could not delete gzip file"

    const-string v1, "Could not close file"

    .line 632
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".temp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 638
    :try_start_0
    new-instance v6, Ljava/util/zip/GZIPInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 639
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v4, 0x2000

    :try_start_2
    new-array v4, v4, [B

    .line 642
    :goto_0
    invoke-virtual {v6, v4}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_0

    .line 643
    invoke-virtual {v7, v4, v5, v8}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 646
    :cond_0
    iget-object v4, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v4

    sget-object v8, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unzipped file at "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v4, v8, v9}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 652
    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 657
    :try_start_4
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 660
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 663
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 664
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 667
    :cond_1
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 668
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_4

    :catch_0
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_5

    :catch_1
    move-exception v7

    move-object v11, v7

    move-object v7, v4

    move-object v4, v11

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object v6, v4

    goto :goto_5

    :catch_2
    move-exception v6

    move-object v7, v4

    move-object v4, v6

    move-object v6, v7

    .line 648
    :goto_1
    :try_start_5
    iget-object v8, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v8}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v8

    sget-object v9, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v10, "Could not unzip file"

    invoke-interface {v8, v9, v10, v4}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v7, :cond_2

    .line 652
    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    const/4 v3, 0x0

    goto :goto_3

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 657
    :try_start_7
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 660
    :cond_3
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 663
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 664
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 667
    :cond_4
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_5

    .line 668
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 671
    :goto_3
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return v3

    :catchall_2
    move-exception v3

    move-object v4, v7

    :goto_5
    if-eqz v4, :cond_6

    .line 652
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_7

    :cond_6
    :goto_6
    if-eqz v6, :cond_7

    .line 657
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 660
    :cond_7
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 663
    invoke-static {}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->getInstance()Lcom/amazon/kcp/wordwise/gloss/GlossFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/gloss/GlossFactory;->cleanUp()V

    .line 664
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 667
    :cond_8
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_9

    .line 668
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    .line 671
    :goto_7
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    invoke-interface {p2, v0, v1, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 673
    :cond_9
    :goto_8
    throw v3
.end method

.method private isChinaUser()Z
    .locals 4

    .line 591
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 592
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    .line 593
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getCountryOfResidence()Ljava/lang/String;

    move-result-object v2

    .line 594
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getPreferredMarketplace()Ljava/lang/String;

    move-result-object v0

    const-string v3, "CN"

    .line 595
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "AAHKV2X7AFYLW"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private parseMessagePayload(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 389
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    .line 390
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    .line 391
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarGuid:Ljava/lang/String;

    .line 394
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "cdeKey"

    .line 395
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    const-string/jumbo p1, "url"

    .line 396
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    const-string p1, "guid"

    .line 397
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarGuid:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 402
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v3, "Cannot parse JSON payload"

    invoke-interface {v1, v2, v3, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 403
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    .line 404
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    .line 407
    :goto_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 408
    iget-object v2, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarGuid:Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadWordWiseSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V

    :cond_0
    return-void
.end method

.method private publishDownloadEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    if-nez v0, :cond_0

    .line 717
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 720
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;

    invoke-direct {v1, p1, p2, p3}, Lcom/amazon/kcp/wordwise/download/WordWiseDownloadStatusEvent;-><init>(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    return-void
.end method

.method private declared-synchronized retryDownload(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 376
    :try_start_0
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 378
    sget-object v0, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 379
    sget-object p1, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->ZH_PN:Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    monitor-exit p0

    throw p1

    .line 381
    :cond_1
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private sendSidecarOdotAck(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V
    .locals 1

    .line 546
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$2;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static shouldPollForNewDictionary(JJ)Z
    .locals 2

    const-wide/32 v0, 0x240c8400

    add-long/2addr p0, v0

    cmp-long v0, p0, p2

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public declared-synchronized cleanUp()V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 265
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->cleanUp(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized cleanUp(Ljava/lang/String;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    const-string v0, ""

    .line 223
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "en"

    goto :goto_0

    .line 225
    :cond_0
    sget-object v1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string/jumbo v0, "zh.pn"

    .line 229
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryDirectory()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_2

    .line 231
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "Missing gloss dictionary directory"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 232
    monitor-exit p0

    return-void

    .line 234
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v3, "Dictionary Directory: %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 236
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v3, "Deleting gloss dictionary"

    invoke-interface {v1, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 239
    array-length v1, p1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 241
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 242
    iget-object v5, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v5

    sget-object v6, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v8, "File: %s"

    new-array v9, v4, [Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v7

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_3

    .line 244
    iget-object v3, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v3

    sget-object v5, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete gloss dictionary"

    invoke-interface {v3, v5, v6}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 251
    :cond_4
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 253
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "isChinaUser"

    .line 254
    invoke-interface {p1, v0, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    const-string/jumbo v0, "userId"

    const-string v1, ""

    .line 255
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 256
    invoke-static {}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->values()[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    array-length v1, v0

    :goto_2
    if-ge v7, v1, :cond_5

    aget-object v2, v0, v7

    .line 257
    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 258
    invoke-virtual {v2}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getLastPollTimeKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 260
    :cond_5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 262
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized downloadWordWiseSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V
    .locals 10

    monitor-enter p0

    .line 423
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryManager()Lcom/amazon/kindle/krx/library/ILibraryManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/amazon/kindle/krx/library/ILibraryManager;->getContentFromAsin(Ljava/lang/String;Z)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-nez v0, :cond_0

    .line 428
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string p3, "Could not find the book in library"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    monitor-exit p0

    return-void

    :cond_0
    move-object v5, v0

    .line 434
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object v0

    invoke-virtual {v0, v5, p3}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    .line 436
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string p3, "Could not find the sidecar file for the book"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 437
    monitor-exit p0

    return-void

    .line 440
    :cond_1
    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".gz"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 441
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->publishDownloadEvent(Lcom/amazon/kcp/wordwise/download/DownloadStatusType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDownloadManager()Lcom/amazon/kindle/krx/download/IKRXDownloadManager;

    move-result-object v8

    new-instance v9, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move-object v6, p3

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$1;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v9}, Lcom/amazon/kindle/krx/download/IKRXDownloadManager;->enqueueDownloadRequest(Lcom/amazon/kindle/krx/download/IKRXDownloadRequest;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 538
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 151
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 153
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryDirectory()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 154
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v1, "Failed to create directory for Word Wise data"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 161
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getActiveUserAccount()Lcom/amazon/kindle/krx/application/IUserAccount;

    move-result-object v0

    const-string/jumbo v1, "userId"

    const-string v2, ""

    .line 162
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/amazon/kindle/krx/application/IUserAccount;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 164
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->cleanUp()V

    :cond_3
    return-void
.end method

.method public declared-synchronized onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    monitor-enter p0

    .line 211
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    sget-object p1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->WORDWISE_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload(Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isPinyinSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 214
    sget-object p1, Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;->PINYIN_ENABLED:Lcom/amazon/kcp/wordwise/plugin/WordWisePreferences;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onAuthenticationEvent(Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;)V
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 201
    :try_start_0
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent;->getType()Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;->LOGOUT:Lcom/amazon/kindle/krx/events/KRXAuthenticationEvent$EventType;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->cleanUp()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onCORPFMChanged(Lcom/amazon/kindle/krx/events/PFMCORChangedEvent;)V
    .locals 5
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    monitor-enter p0

    .line 172
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 175
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "isChinaUser"

    const/4 v1, 0x0

    .line 177
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 178
    invoke-direct {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->isChinaUser()Z

    move-result v0

    if-eq v0, p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    const-string v2, "onCORPFMChanged: re-sync gloss dictionary"

    invoke-interface {p1, v0, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p1

    .line 182
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isWordWiseSupported(Lcom/amazon/kindle/krx/content/IBook;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 184
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 185
    invoke-static {}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->values()[Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 186
    invoke-virtual {v3}, Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;->getVersionKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0.0"

    invoke-interface {p1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 189
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadDictionary(ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    goto :goto_1

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->cleanUp()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onReceivedDownloadMessage(Lcom/amazon/dcp/messaging/Message;)V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz v0, :cond_0

    .line 337
    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received s2dm message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/amazon/dcp/messaging/Message;->getPayload()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 342
    invoke-direct {p0, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->parseMessagePayload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedDownloadTodo(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 353
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->parseMessagePayload(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public refreshLineSpacingIfPossible()V
    .locals 2

    .line 684
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBookNavigator()Lcom/amazon/kindle/krx/reader/IBookNavigator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 689
    :cond_0
    sget-object v1, Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;->FULL_PAGE:Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IBookNavigator;->getCurrentReaderNavigationMode()Lcom/amazon/kindle/krx/reader/IBookNavigator$BookNavigationMode;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 692
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    if-nez v0, :cond_1

    .line 693
    new-instance v0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;-><init>(Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;)V

    iput-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    .line 694
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getPubSubEventManager()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->listener:Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager$NlnModeChangeListener;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    :cond_1
    return-void

    .line 699
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->dictionaryExists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 700
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 701
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->isCurrentBookSidecarLoaded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->pinyinExists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 702
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/wordwise/plugin/WordWisePlugin;->refreshLineSpacingAndGlosses()V

    .line 703
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-static {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->getInstance(Lcom/amazon/kindle/krx/IKindleReaderSDK;)Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/WordWiseFtueDialogFactory;->checkAndShowFtueDialog()V

    :cond_4
    return-void
.end method

.method public declared-synchronized retryDownload()V
    .locals 1

    monitor-enter p0

    .line 372
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->retryDownload(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 373
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized retryDownload(Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V
    .locals 3

    monitor-enter p0

    .line 363
    :try_start_0
    invoke-static {}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getInstance()Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getDictionaryErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, v1, p1}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadDictionary(ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    .line 366
    invoke-virtual {v0}, Lcom/amazon/kcp/wordwise/download/WordWiseContentStatus;->getSidecarErrorState()Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 367
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarAsin:Ljava/lang/String;

    iget-object v0, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->sidecarGuid:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadWordWiseSidecar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/download/IKRXResponseHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public syncGlossDictionary()V
    .locals 2

    .line 279
    invoke-static {}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getCurrentGlossDictionaryType()Lcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/amazon/kcp/wordwise/download/WordWiseSynchronizationManager;->downloadDictionary(ZLcom/amazon/kcp/wordwise/dictionary/GlossDictionaryType;)V

    return-void
.end method
