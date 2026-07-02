.class public Lcom/amazon/kcp/search/widget/TopSearchDataManager;
.super Ljava/lang/Object;
.source "TopSearchDataManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
    }
.end annotation


# static fields
.field private static final EXPIRE_DATE_KEY:Ljava/lang/String; = "expire_date"

.field private static final KEYWORD_KEY:Ljava/lang/String; = "words"

.field private static final TAG:Ljava/lang/String;

.field private static volatile instance:Lcom/amazon/kcp/search/widget/TopSearchDataManager;


# instance fields
.field private isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

.field private topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

.field private topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

.field private wordNumPerSlide:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 64
    iput v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->wordNumPerSlide:I

    .line 83
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->subscribe(Ljava/lang/Object;)V

    .line 84
    invoke-static {}, Lcom/amazon/kindle/services/events/PubSubMessageService;->getInstance()Lcom/amazon/kindle/krx/events/IPubSubEventsManager;

    move-result-object v0

    const-class v1, Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IPubSubEventsManager;->createMessageQueue(Ljava/lang/Class;)Lcom/amazon/kindle/krx/events/IMessageQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    .line 85
    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    .line 86
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->makeDownloadTopSearchWordRequest()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->readTopSearchDataFromCacheFile()Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/search/widget/TopSearchDataManager;Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Z
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->isMemoryCacheUpdateNeeded(Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 31
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$402(Lcom/amazon/kcp/search/widget/TopSearchDataManager;Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    return-object p1
.end method

.method static synthetic access$500(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kindle/krx/events/IMessageQueue;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)Lcom/amazon/kcp/search/widget/TopSearchFileUtil;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    return-object p0
.end method

.method public static getInstance()Lcom/amazon/kcp/search/widget/TopSearchDataManager;
    .locals 2

    .line 72
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->instance:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->instance:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    invoke-direct {v1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;-><init>()V

    sput-object v1, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->instance:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    .line 77
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->instance:Lcom/amazon/kcp/search/widget/TopSearchDataManager;

    return-object v0
.end method

.method private isMemoryCacheUpdateNeeded(Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;)Z
    .locals 2

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "topSearchData expireDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " data expireDate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getExpireDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getExpireDate()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getExpireDate()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x1

    :goto_2
    return p1
.end method

.method private makeDownloadTopSearchWordRequest()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->getDownloadFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->getS3Url()Ljava/lang/String;

    move-result-object v1

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "makeDownloadTopSearchWordRequest url: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 153
    new-instance v2, Lcom/amazon/kcp/search/widget/TopSearchRequest;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kcp/search/widget/TopSearchRequest;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/IReaderServicesObjectFactory;->getWebRequestManager()Lcom/amazon/kindle/webservices/IWebRequestManager;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/amazon/kindle/webservices/IWebRequestManager;->addWebRequest(Lcom/amazon/kindle/webservices/IWebRequest;)Z

    goto :goto_0

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->messageQueue:Lcom/amazon/kindle/krx/events/IMessageQueue;

    new-instance v1, Lcom/amazon/kcp/search/widget/TopSearchEvent;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/amazon/kcp/search/widget/TopSearchEvent;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/events/IMessageQueue;->publish(Lcom/amazon/kindle/krx/events/IEvent;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private parseJsonStr(Ljava/lang/String;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
    .locals 3

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJsonStr jsonStr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p1, "words"

    .line 186
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const-string v1, "expire_date"

    .line 187
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    new-instance v1, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    invoke-direct {p0, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->toList(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iget v2, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->wordNumPerSlide:I

    invoke-direct {v1, p1, v0, v2}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;-><init>(Ljava/util/List;Ljava/lang/String;I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 190
    sget-object v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseAndUpdateData error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method private readTopSearchDataFromCacheFile()Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;
    .locals 5

    .line 164
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->getCacheFile()Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    :try_start_0
    new-instance v2, Ljava/io/InputStreamReader;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string/jumbo v0, "utf-8"

    invoke-direct {v2, v3, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x80

    new-array v3, v3, [C

    .line 169
    :goto_0
    invoke-virtual {v2, v3}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    if-lez v4, :cond_0

    .line 170
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append([C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-direct {p0, v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->parseJsonStr(Ljava/lang/String;)Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 166
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v3

    .line 174
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v2

    :try_start_5
    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v0

    .line 175
    sget-object v2, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateCache error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v1
.end method

.method private toList(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 235
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 237
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 239
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 241
    sget-object v3, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toList error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private updateTopSearchWords()V
    .locals 2

    .line 119
    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$1;-><init>(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V

    .line 142
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private updateTopSearchWordsCache()V
    .locals 2

    .line 216
    new-instance v0, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;

    invoke-direct {v0, p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$2;-><init>(Lcom/amazon/kcp/search/widget/TopSearchDataManager;)V

    .line 227
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/thread/IThreadPoolManager;->isRunningOnMainThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 230
    :cond_0
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkAndUpdateTopSearchWords()V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchS3Helper;->isNewVersionResourceSetRetrieved()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-static {}, Lcom/amazon/kcp/search/widget/TopSearchUtil;->isDownloadRetryNeeded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->updateTopSearchWords()V

    :cond_1
    return-void
.end method

.method public getTopSearchWords()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getNextSlideOfWords()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getWordRank(I)I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchData:Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0, p1}, Lcom/amazon/kcp/search/widget/TopSearchDataManager$TopSearchData;->getWordRank(I)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public onStop()V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->topSearchFileUtil:Lcom/amazon/kcp/search/widget/TopSearchFileUtil;

    invoke-virtual {v0}, Lcom/amazon/kcp/search/widget/TopSearchFileUtil;->savePreference()V

    return-void
.end method

.method public onTopSearchWordsDownloaded(Lcom/amazon/kcp/search/widget/TopSearchEvent;)V
    .locals 3
    .annotation runtime Lcom/amazon/kindle/krx/events/Subscriber;
    .end annotation

    .line 203
    invoke-virtual {p1}, Lcom/amazon/kcp/search/widget/TopSearchEvent;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 205
    invoke-direct {p0}, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->updateTopSearchWordsCache()V

    .line 206
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 207
    invoke-static {v2}, Lcom/amazon/kcp/search/widget/TopSearchUtil;->setDownloadRetryNeeded(Z)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/kcp/search/widget/TopSearchEvent;->getType()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 210
    iget-object p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->isDownloading:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 211
    invoke-static {v1}, Lcom/amazon/kcp/search/widget/TopSearchUtil;->setDownloadRetryNeeded(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setWordNumPerSlide(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 263
    iput p1, p0, Lcom/amazon/kcp/search/widget/TopSearchDataManager;->wordNumPerSlide:I

    :cond_0
    return-void
.end method
