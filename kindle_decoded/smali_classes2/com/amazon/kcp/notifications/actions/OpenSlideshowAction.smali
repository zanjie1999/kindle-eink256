.class public Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;
.super Ljava/lang/Object;
.source "OpenSlideshowAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationTapAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$ShareBrochureListener;
    }
.end annotation


# static fields
.field public static final CUSTOM_DATA_KEY:Ljava/lang/String; = "customActionData"

.field public static final DOWNLOAD_TIMEOUT_MINUTES:I = 0x5

.field private static final METRICS_NAME:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-class v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->writeBrochureToFile(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 58
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method private hasBrochureFile(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 246
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method

.method private initializeBrochureOptions(Landroid/content/Context;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;
    .locals 2

    .line 112
    new-instance v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    invoke-direct {v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;-><init>()V

    const-string v1, "Notification"

    .line 113
    iput-object v1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->contextName:Ljava/lang/String;

    .line 114
    sget-object v1, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;->PORTRAIT:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    iput-object v1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->orientationLock:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$OrientationLock;

    .line 116
    sget-object v1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$2;->$SwitchMap$com$amazon$kcp$info$brochure$BrochureType:[I

    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->getBrochureType()Lcom/amazon/kcp/info/brochure/BrochureType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v1, p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/krl/R$string;->brochure_share_button_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->actionButtonString:Ljava/lang/String;

    .line 120
    new-instance p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$ShareBrochureListener;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$ShareBrochureListener;-><init>(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;)V

    iput-object p1, v0, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;->listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    :goto_0
    return-object v0
.end method

.method private readBrochureFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 252
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 257
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reading brochure from file - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 259
    :try_start_1
    new-instance v0, Ljava/io/ObjectInputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    .line 266
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    move-object p2, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 266
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V

    .line 268
    :cond_1
    throw p1
.end method

.method private writeBrochureToFile(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 278
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Writing brochure to file - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    new-instance p2, Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 280
    :try_start_1
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p2}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 281
    :try_start_2
    invoke-virtual {v0, p3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 284
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    .line 287
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p3

    move-object v0, p1

    move-object p1, p3

    goto :goto_0

    :catchall_2
    move-exception p2

    move-object v0, p1

    move-object p1, p2

    move-object p2, v0

    :goto_0
    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V

    :cond_0
    if-eqz p2, :cond_1

    .line 287
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 289
    :cond_1
    throw p1
.end method


# virtual methods
.method public isTapActionValid(Lcom/amazon/reader/notifications/message/NotificationAction;)Z
    .locals 9

    .line 151
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    const-string v1, "BrochureNotificationReceived"

    invoke-static {v0, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTapActionValid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IAuthenticationManager;->isAuthenticated()Z

    move-result v0

    const-string v1, "BrochureAssetPreparationFailure"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 155
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not authenticated, cannot handle action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationAction;->getData()Ljava/util/Map;

    move-result-object p1

    const-string v0, "customActionData"

    .line 161
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_1

    .line 163
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid notification message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 168
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 169
    new-instance v3, Ljava/util/concurrent/CountDownLatch;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 171
    new-instance v5, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;

    new-instance v6, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;

    invoke-direct {v6, p0, p1, v3}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction$1;-><init>(Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;Landroid/content/Context;Ljava/util/concurrent/CountDownLatch;)V

    .line 190
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v7

    invoke-interface {v7}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v5, p1, v6, v7, v8}, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;-><init>(Landroid/content/Context;Lcom/amazon/kcp/info/brochure/IBrochureAssetDownloadListener;Lcom/amazon/kindle/webservices/IWebRequestManager;Ljava/lang/String;)V

    .line 193
    invoke-interface {v5}, Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;->getFeatureId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->hasBrochureFile(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    :try_start_0
    invoke-interface {v5}, Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;->getFeatureId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->readBrochureFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 198
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 205
    :goto_0
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Brochure asset for feature ID "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;->getFeatureId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not prepared. Ignoring the tap action"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    .line 211
    :cond_2
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    .line 217
    :cond_3
    :try_start_1
    invoke-static {}, Lcom/amazon/kindle/log/Log;->isDebugLogEnabled()Z

    move-result p1

    .line 220
    invoke-interface {v5}, Lcom/amazon/kcp/info/brochure/IBrochureAssetBuilder;->downloadAsset()V
    :try_end_1
    .catch Lcom/amazon/kcp/info/brochure/BrochureAssetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    const-wide/16 v5, 0x5

    .line 231
    :try_start_2
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v5, v6, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz p1, :cond_4

    .line 239
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    const-string v0, "Brochure assets are ready"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    const-string v0, "BrochureAssetReady"

    invoke-static {p1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    .line 232
    :cond_4
    :try_start_3
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-exception p1

    .line 235
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    const-string v3, "Failed to download the assets"

    invoke-static {v0, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_3
    move-exception p1

    .line 226
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    const-string v3, "downloadAsset failed"

    invoke-static {v0, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 227
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :catch_4
    move-exception p1

    .line 222
    sget-object v0, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    const-string v3, "Error in the asset info"

    invoke-static {v0, v3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public performTapAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "BrochureAssetPreparationFailure"

    const-string v1, " is not prepared. Ignoring the tap action"

    const-string v2, "Brochure asset for feature ID "

    .line 68
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v3

    const-string v4, "BrochureTapToOpen"

    invoke-virtual {v3, v4}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 70
    sget-object v3, Lcom/amazon/kcp/notifications/ActionKey;->ACTION_DATA:Lcom/amazon/kcp/notifications/ActionKey;

    invoke-virtual {v3}, Lcom/amazon/kcp/notifications/ActionKey;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    .line 71
    new-instance v3, Ljava/lang/String;

    const-string v4, "customActionData"

    invoke-interface {p2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/com/amazonaws/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    .line 73
    invoke-static {v3}, Lcom/amazon/kcp/info/brochure/BrochureAssetBuilder;->deserializeBrochureAssetNotification(Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;

    move-result-object p2

    .line 76
    :try_start_0
    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->readBrochureFromFile(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 89
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 94
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {p2, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 95
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x20000

    .line 96
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x4000000

    .line 97
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    .line 98
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    .line 99
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->initializeBrochureOptions(Landroid/content/Context;Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;)Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions;

    move-result-object v1

    .line 104
    invoke-virtual {v0}, Lcom/amazon/kcp/info/brochure/SerializableBrochureAsset;->getSlides()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const-string v2, "brochure_assets"

    .line 103
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v0, "brochure_options"

    .line 105
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 106
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catch_0
    move-exception p1

    .line 83
    sget-object v3, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception p1

    .line 78
    sget-object v3, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/amazon/kcp/info/brochure/BrochureAssetNotification;->getFeatureID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 80
    sget-object p1, Lcom/amazon/kcp/notifications/actions/OpenSlideshowAction;->METRICS_NAME:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/amazon/kcp/info/brochure/BrochureAssetMetricsManager;->recordCount(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
