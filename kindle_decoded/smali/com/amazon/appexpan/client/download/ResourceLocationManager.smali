.class public Lcom/amazon/appexpan/client/download/ResourceLocationManager;
.super Ljava/lang/Object;
.source "ResourceLocationManager.java"


# static fields
.field private static final APP_EXPAN_DIR:Ljava/lang/String; = "appexpan"

.field private static final TAG:Ljava/lang/String; = "com.amazon.appexpan.client.download.ResourceLocationManager"

.field private static final TEMP_FILE_EXTENSION:Ljava/lang/String; = ".temp"

.field private static resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->context:Landroid/content/Context;

    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const-string v1, "appexpan"

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->mkdirs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    .line 42
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->mkdirs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    return-void
.end method

.method private static getDestinationFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 95
    invoke-static {p1}, Lcom/amazon/appexpan/client/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 97
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/amazon/appexpan/client/io/FileSystemHelper;->mkdirs(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 100
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1

    :cond_0
    return-object v0

    .line 104
    :cond_1
    new-instance p1, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1

    :cond_2
    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/amazon/appexpan/client/download/ResourceLocationManager;
    .locals 2

    const-class v0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    monitor-enter v0

    .line 47
    :try_start_0
    sget-object v1, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    if-nez v1, :cond_0

    .line 49
    new-instance v1, Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    invoke-direct {v1, p0}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;

    .line 51
    :cond_0
    sget-object p0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->resourceLocationManager:Lcom/amazon/appexpan/client/download/ResourceLocationManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public getDestinationResourceFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 66
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getLocalLocationType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ANDROID_INTERNAL"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    .line 71
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appexpan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v0, v1, p1}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getDestinationFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method getResourceDownloadFile(Lcom/amazon/appexpan/client/model/ResourceModel;)Ljava/io/File;
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appexpan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel;->getLocation()Lcom/amazon/appexpan/client/model/ResourceModel$Location;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/model/ResourceModel$Location;->getFileName()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-static {v0, v1, p1}, Lcom/amazon/appexpan/client/download/ResourceLocationManager;->getDestinationFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method
