.class public Lcom/amazon/kcp/font/DynamicFontDownloadHelper;
.super Ljava/lang/Object;
.source "DynamicFontDownloadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;,
        Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    }
.end annotation


# static fields
.field private static final ATTRIBUTE_DYNAMIC_FONT_DOWNLOAD_RESOURCE_NAME:Ljava/lang/String; = "DynamicFontDownloadResourceName"

.field private static final ATTRIBUTE_DYNAMIC_FONT_DOWNLOAD_RESOURCE_STATE:Ljava/lang/String; = "DynamicFontDownloadResourceState"

.field private static final DOWNLOAD_TIMER_SUFFIX:Ljava/lang/String; = "FontDownloadTimer"

.field private static final EVENT_DYNAMIC_FONT_DOWNLOAD:Ljava/lang/String; = "DynamicFontDownload"

.field private static final INSTANCE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

.field private static final LEGACY_DOWNLOADED_FONT_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METRIC_FAILURE:Ljava/lang/String; = "Failure"

.field private static final METRIC_SUCCESS:Ljava/lang/String; = "Success"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private appExpanClient:Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

.field private checkedFonts:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;",
            ">;"
        }
    .end annotation
.end field

.field private fontInfoMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/mobipocket/android/drawing/FontFamily;",
            "Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fontUpdateStatus:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected final messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private numDownloadedFonts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private numInvalidFonts:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    .line 74
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$1;

    invoke-direct {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$1;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->LEGACY_DOWNLOADED_FONT_MAP:Ljava/util/Map;

    .line 83
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    .line 91
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numDownloadedFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numInvalidFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    invoke-interface {v0, v2}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 96
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    .line 100
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v0, v3

    .line 101
    iget-object v5, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-static {v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 64
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->LEGACY_DOWNLOADED_FONT_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontDownloadTimer(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadSuccess(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    return-void
.end method

.method private copyFontToInternalFileSystem(Ljava/io/File;)Z
    .locals 8

    const-string v0, "Error in closing streams"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 473
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 474
    :try_start_1
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 477
    invoke-static {v3, v1}, Lcom/amazon/kcp/util/IOUtils;->writeInToOut(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 482
    new-instance v4, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInternalFontDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 484
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 485
    sget-object v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Copied file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "doesnt exist"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 494
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_0

    .line 497
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 500
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return v2

    .line 494
    :cond_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    if-eqz v1, :cond_2

    .line 497
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 500
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_6

    :catch_2
    move-exception p1

    move-object v7, v3

    move-object v3, v1

    move-object v1, v7

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v3, v1

    goto :goto_6

    :catch_3
    move-exception p1

    move-object v3, v1

    .line 489
    :goto_2
    :try_start_4
    sget-object v4, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    const-string v5, "Exception in copyAndDeleteFontFiles"

    invoke-static {v4, v5, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v1, :cond_3

    .line 494
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_3

    :catch_4
    move-exception p1

    goto :goto_4

    :cond_3
    :goto_3
    if-eqz v3, :cond_4

    .line 497
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 500
    :goto_4
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return v2

    :catchall_2
    move-exception p1

    :goto_6
    if-eqz v1, :cond_5

    .line 494
    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    goto :goto_7

    :catch_5
    move-exception v1

    goto :goto_8

    :cond_5
    :goto_7
    if-eqz v3, :cond_6

    .line 497
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_9

    .line 500
    :goto_8
    sget-object v2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    invoke-static {v2, v0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    :cond_6
    :goto_9
    throw p1
.end method

.method private createSymlinkAtInternalFileSystem(Ljava/io/File;)Z
    .locals 4

    .line 513
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 518
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 521
    array-length v0, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 522
    invoke-direct {p0, v3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->createSymlinkForFontFile(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    .line 514
    :cond_3
    :goto_1
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " The file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory or doesnt exist"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private createSymlinkForFontFile(Ljava/io/File;)Z
    .locals 4

    .line 965
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 967
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 969
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 973
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 975
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 976
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 979
    :cond_1
    invoke-static {v0, p1}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v2
.end method

.method private doesFontFileExist(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3

    .line 595
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getInternalFontDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Font file "

    if-eqz v0, :cond_0

    .line 599
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exist in internal dir"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    .line 603
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getLegacyFontDownloadDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 607
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " already exist in legacy dir"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->appExpanClient:Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    if-nez v0, :cond_0

    .line 350
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->appExpanClient:Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->appExpanClient:Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    return-object v0
.end method

.method private getFontDownloadTimer(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;
    .locals 1

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "FontDownloadTimer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z
    .locals 8

    if-nez p2, :cond_0

    .line 368
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p2

    invoke-virtual {p2}, Lcom/mobipocket/android/drawing/LanguageSet;->getLanguages()Ljava/util/HashSet;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 369
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 374
    :cond_0
    monitor-enter p1

    .line 375
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v0

    .line 376
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Acquired lock for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 384
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->getResourceSet(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_2

    .line 385
    invoke-interface {v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;->getResourceSet()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;

    move-result-object v3

    :cond_2
    const/4 v4, 0x1

    if-eqz v3, :cond_a

    .line 388
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v5, v6}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->retrieveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;)I

    move-result v1

    .line 389
    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v5

    if-le v5, v1, :cond_8

    .line 390
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We got a new resourceSet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceNames()Ljava/util/Set;

    move-result-object v1

    .line 393
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 394
    invoke-interface {v3, v6}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getResourceByName(Ljava/lang/String;)Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;

    move-result-object v6

    if-eqz v6, :cond_5

    .line 396
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 397
    invoke-interface {v6}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->createSymlinkAtInternalFileSystem(Ljava/io/File;)Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 400
    :cond_4
    invoke-interface {v6}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getFile()Ljava/io/File;

    move-result-object v7

    invoke-interface {v6}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResource;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v7, v6, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->moveFontsToInternalFileSystem(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    .line 410
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object p2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v5

    invoke-interface {p2, v1, v2, v5}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 411
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    sget-object p2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Move succeeded for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_3

    .line 415
    :cond_7
    sget-object p2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Move failed for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "version "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSet;->getVersion()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 418
    sget-object p2, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_GENERAL_ERROR:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadFailure(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;Z)V

    goto :goto_3

    .line 424
    :cond_8
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_9
    :goto_3
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numDownloadedFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    goto :goto_4

    :cond_a
    if-eqz v1, :cond_b

    .line 427
    sget-object p2, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;->RESOURCE_SET_INVALID:Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    .line 428
    invoke-interface {v1}, Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse;->getFailureReason()Lcom/amazon/kindle/krx/appexpan/IAppExpanResourceSetResponse$FailureReason;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 431
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numInvalidFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 432
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 433
    sget-object p2, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_GENERAL_ERROR:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-direct {p0, p1, p2, v1, v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadFailure(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;Z)V

    .line 438
    :cond_b
    :goto_4
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    monitor-enter p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 439
    :try_start_1
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 440
    monitor-exit p2

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 442
    :cond_c
    :goto_5
    sget-object p2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Releasing lock for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    monitor-exit p1

    return v2

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2
.end method

.method public static getInstance()Lcom/amazon/kcp/font/DynamicFontDownloadHelper;
    .locals 1

    .line 109
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->INSTANCE:Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    return-object v0
.end method

.method public static getInternalFontDir()Ljava/io/File;
    .locals 1
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    .line 117
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private static getLegacyFontDownloadDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 125
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private handleDownloadFailure(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;Z)V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    if-eqz v0, :cond_3

    if-eqz p4, :cond_0

    const-string p4, "DownloadFontOnDemandFail_"

    .line 903
    invoke-direct {p0, v0, p4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportFontDownloadOnDemandMetrics(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    .line 906
    :cond_0
    sget-object p4, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    invoke-static {v0, p4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$1002(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/font/DownloadStatus;)Lcom/amazon/kcp/font/DownloadStatus;

    .line 907
    iget-object p4, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;)V

    invoke-interface {p4, v0}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 908
    sget-object p1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$4;->$SwitchMap$com$amazon$kcp$font$DownloadOnDemandFontEvent$ErrorType:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eq p1, p2, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 913
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string p2, "ConnectionError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 910
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p1

    const-string p2, "FontDownloadError"

    invoke-interface {p1, p2, p3}, Lcom/amazon/kcp/application/IUIMessaging;->showAlert(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleDownloadSuccess(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V
    .locals 5

    .line 860
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDownload()V

    .line 862
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->populateSupportedFonts()V

    .line 864
    invoke-static {}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->clearFontFamilyInfoMap()V

    .line 867
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    if-eqz v0, :cond_0

    const-string v1, "DownloadFontOnDemandSuccess_"

    .line 869
    invoke-direct {p0, v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportFontDownloadOnDemandMetrics(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    .line 870
    invoke-virtual {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->setDownloaded()V

    .line 871
    new-instance v1, Lcom/amazon/kcp/font/AESFontNotification;

    sget-object v2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mobipocket/android/drawing/FontFamily;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/font/AESFontNotification;-><init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 872
    invoke-virtual {v1, v2}, Lcom/amazon/kcp/font/AESFontNotification;->popFontNotification(I)V

    .line 874
    :cond_0
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getLanguages()Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 876
    sget-object v1, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->Companion:Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager$Companion;->getFontInfoFromDownloadableFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/amazon/ksdk/presets/FontInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 878
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v2

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    .line 882
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    sget-object v2, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v3, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->NONE:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-direct {v1, p1, v2, v3}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    .line 885
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$1200(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 886
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->setDefaultFont(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    :cond_3
    return-void
.end method

.method private moveFontsToInternalFileSystem(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 539
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_5

    .line 544
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 549
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    aget-object v5, p1, v1

    .line 553
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, p3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->doesFontFileExist(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 555
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 562
    :cond_1
    invoke-direct {p0, v5}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->copyFontToInternalFileSystem(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 564
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    :goto_1
    const/4 v4, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    if-eqz v1, :cond_6

    if-eqz v3, :cond_5

    const-string p1, "Failure"

    .line 578
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string p1, "Success"

    .line 581
    invoke-direct {p0, p2, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportAnalytics(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    xor-int/lit8 p1, v3, 0x1

    return p1

    .line 540
    :cond_7
    :goto_5
    sget-object p2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " The file "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not a directory or doesnt exist"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private reportAnalytics(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 456
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "DynamicFontDownloadResourceName"

    .line 457
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "DynamicFontDownloadResourceState"

    .line 458
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    const-string v1, "DynamicFontDownload"

    invoke-virtual {p1, p2, v1, v0}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private reportFontDownloadOnDemandMetrics(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V
    .locals 6

    .line 922
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getTypeFaceName()Ljava/lang/String;

    move-result-object v0

    .line 923
    invoke-direct {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontDownloadTimer(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;

    move-result-object p1

    .line 924
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "ClickFontDeleteButton_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "DownloadFontOnDemandSuccess_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v1, "DownloadFontOnDemandFail_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v1, "ClickFontCancelButton_"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    const-string v5, "DownloadFontOnDemand"

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_4

    return-void

    .line 933
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_2

    .line 930
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->cancelMetricTimer(Ljava/lang/String;)V

    goto :goto_2

    .line 926
    :cond_3
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v1

    invoke-virtual {v1, v5, p1, p1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->stopMetricTimerIfExists(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    :cond_4
    :goto_2
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v5, p2}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x68e17104 -> :sswitch_3
        -0x4eb5b9c0 -> :sswitch_2
        -0x2fe674e3 -> :sswitch_1
        0x3c0beeab -> :sswitch_0
    .end sparse-switch
.end method

.method private setDefaultFont(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V
    .locals 3

    .line 643
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting default font for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getLanguages()Ljava/util/HashSet;

    move-result-object p1

    .line 646
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 647
    sget-object v1, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 648
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 650
    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->MYINGHEI:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/mobipocket/android/drawing/FontFamily;->STSYSTEMSC:Lcom/mobipocket/android/drawing/FontFamily;

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 654
    :cond_0
    invoke-static {v0}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    .line 655
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public areDownloadsCompleted()Z
    .locals 4

    .line 448
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    monitor-enter v0

    .line 450
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numDownloadedFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 451
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget-object v2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numInvalidFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 452
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public cancelDownloadFontOnDemand(Lcom/amazon/kcp/font/IFontInfo;)V
    .locals 2

    .line 950
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-interface {p1}, Lcom/amazon/kcp/font/IFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    if-eqz p1, :cond_0

    .line 951
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 952
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->releaseResourceSet(Ljava/lang/String;)V

    .line 953
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    invoke-static {p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$1002(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/font/DownloadStatus;)Lcom/amazon/kcp/font/DownloadStatus;

    const-string v0, "ClickFontCancelButton_"

    .line 954
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportFontDownloadOnDemandMetrics(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public deleteFontOnDemand(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)V
    .locals 5

    .line 713
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 714
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 716
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v1

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->releaseResourceSet(Ljava/lang/String;)V

    .line 718
    :cond_0
    sget-object v1, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    invoke-static {p1, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$1002(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Lcom/amazon/kcp/font/DownloadStatus;)Lcom/amazon/kcp/font/DownloadStatus;

    .line 719
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDelete()V

    if-eqz v0, :cond_1

    .line 721
    invoke-direct {p0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getAppExpanClient()Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/krx/appexpan/IKRXAppExpanClient;->saveCurrentUsedVersion(Ljava/lang/Class;Ljava/lang/String;I)V

    .line 724
    :cond_1
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$000(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 725
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->numDownloadedFonts:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 726
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->checkedFonts:Ljava/util/Set;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 731
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getLanguages()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 732
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/amazon/kcp/application/UserSettingsController;->getFontFamily(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v3

    .line 733
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    invoke-static {v1}, Lcom/mobipocket/android/drawing/FontFamily;->getDefaultFont(Ljava/lang/String;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/amazon/kcp/application/UserSettingsController;->setFontFamily(Lcom/mobipocket/android/drawing/FontFamily;Ljava/lang/String;)V

    goto :goto_0

    .line 738
    :cond_3
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/font/DownloadableFontsManager;->getFontInfoFromDownloadableFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/amazon/ksdk/presets/FontInfo;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 740
    invoke-static {}, Lcom/amazon/kindle/viewoptions/AaSettingManager;->getInstance()Lcom/amazon/kcp/debug/IAaSettingsUtil;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/debug/IAaSettingsUtil;->readingPresetManager()Lcom/amazon/ksdk/presets/ReadingPresetsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/ksdk/presets/ReadingPresetsManager;->aaSettings()Lcom/amazon/ksdk/presets/AaSettingsConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lcom/amazon/ksdk/presets/FontInfo;->getId()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4, v2}, Lcom/amazon/ksdk/presets/AaSettingsConfiguration;->markFontDownloaded(JZ)Z

    .line 742
    invoke-static {}, Lcom/amazon/kindle/viewoptions/font/FontFamilyUtils;->clearFontFamilyInfoMap()V

    .line 743
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getDownloadableFont()Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v2

    sget-object v3, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DELETE_SUCCESS:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v4, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->NONE:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_4
    const-string v0, "ClickFontDeleteButton_"

    .line 747
    invoke-direct {p0, p1, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->reportFontDownloadOnDemandMetrics(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    .line 750
    sget-object v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->LEGACY_DOWNLOADED_FONT_MAP:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 751
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/LanguageSet;->getLanguages()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFileSystem()Lcom/amazon/kindle/io/IFileConnectionFactory;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/amazon/kcp/font/FontUtils;->getFontDir(Lcom/amazon/kindle/io/IFileConnectionFactory;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->LEGACY_DOWNLOADED_FONT_MAP:Ljava/util/Map;

    .line 753
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->getFontFamily()Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 754
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 755
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 758
    :cond_6
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_5

    .line 759
    sget-object v2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to delete legacy font "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 728
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_7
    return-void
.end method

.method public downloadFontManuallyIfNeeds(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V
    .locals 2

    .line 681
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 685
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 686
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 687
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 690
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$3;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 699
    invoke-virtual {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->setDownloading()V

    .line 700
    iget-object p2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 702
    :cond_2
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->access$800(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    sget-object p2, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_NETWORK:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadFailure(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;Z)V

    :goto_1
    return-void
.end method

.method public downloadOnDemandFontsIfNeeded(Ljava/lang/String;)V
    .locals 4

    .line 312
    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getOnDemandFonts(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 318
    :cond_0
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    new-instance v2, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$2;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Ljava/util/List;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 329
    invoke-static {p1}, Lcom/mobipocket/android/drawing/LanguageSet;->getSet(Ljava/lang/String;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 330
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    .line 331
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    if-nez v1, :cond_1

    .line 333
    new-instance v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    .line 336
    :cond_1
    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloaded()Z

    move-result v2

    if-nez v2, :cond_2

    .line 337
    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->isDownloading()Z

    move-result v2

    if-nez v2, :cond_2

    .line 338
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v2

    invoke-direct {p0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFontDownloadTimer(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->startMetricTimer(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;->setDownloading()V

    .line 342
    :cond_2
    iget-object v2, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v0

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public getDownloadableFonts(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;
    .locals 5

    .line 849
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 850
    invoke-static {v3}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$400(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/FontFamily;

    move-result-object v4

    if-ne v4, p1, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getFontInfo(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 836
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    if-nez v0, :cond_1

    .line 838
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getDownloadableFonts(Lcom/mobipocket/android/drawing/FontFamily;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 840
    new-instance v0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;

    invoke-direct {v0, p0, v1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$OnDemandFontInfo;-><init>(Lcom/amazon/kcp/font/DynamicFontDownloadHelper;Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    .line 841
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontInfoMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getFontsAndMoveIfNeeded()V
    .locals 6

    .line 267
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 268
    invoke-static {v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$200(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    invoke-direct {p0, v4, v5}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontConfigInitializer()Lcom/amazon/kcp/font/FontConfigInitializer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/font/FontConfigInitializer;->onFontDownload()V

    .line 278
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getFontFactory()Lcom/mobipocket/android/drawing/AndroidFontFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mobipocket/android/drawing/AndroidFontFactory;->populateSupportedFonts()V

    :cond_2
    return-void
.end method

.method public onResourceSetDownload(Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;)V
    .locals 4
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 619
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;->getResourceSetName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontResourceSet(Ljava/lang/String;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 621
    sget-object v1, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got ResourceSetAvailableEvent callback for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;->getResourceSetName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    monitor-enter v0

    .line 623
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->fontUpdateStatus:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetAvailableEvent;->getResourceSetName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 626
    invoke-direct {p0, v0, p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->getFonts(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 627
    invoke-direct {p0, v0}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadSuccess(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 624
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void
.end method

.method public onResourceSetFailInDownload(Lcom/amazon/kindle/krx/appexpan/ResourceSetDownloadFailedEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 634
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/appexpan/ResourceSetDownloadFailedEvent;->getResourceSetName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->getFontResourceSet(Ljava/lang/String;)Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 636
    sget-object v0, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;->FONT_DOWNLOAD_FAIL:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;

    sget-object v1, Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;->FAIL_GENERAL_ERROR:Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper;->handleDownloadFailure(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$EventType;Lcom/amazon/kcp/font/DownloadOnDemandFontEvent$ErrorType;Z)V

    :cond_0
    return-void
.end method

.method public supportsFontsDownloadManually(Lcom/mobipocket/android/drawing/LanguageSet;)Z
    .locals 6

    .line 665
    invoke-static {}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->values()[Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 666
    invoke-static {v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$600(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-static {v4}, Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;->access$500(Lcom/amazon/kcp/font/DynamicFontDownloadHelper$DownloadableFonts;)Lcom/mobipocket/android/drawing/LanguageSet;

    move-result-object v4

    if-ne v4, p1, :cond_1

    .line 667
    sget-object v4, Lcom/mobipocket/android/drawing/LanguageSet;->CN:Lcom/mobipocket/android/drawing/LanguageSet;

    if-ne p1, v4, :cond_0

    invoke-static {}, Lcom/amazon/kcp/debug/SCNFontsDownloadingUtils;->shouldUseAES()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method
