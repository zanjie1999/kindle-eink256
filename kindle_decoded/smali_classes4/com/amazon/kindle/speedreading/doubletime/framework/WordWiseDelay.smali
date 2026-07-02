.class public Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;
.super Ljava/lang/Object;
.source "WordWiseDelay.java"


# static fields
.field private static final GLOSS_LOAD_RANGE:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "com.amazon.kindle.speedreading.doubletime.framework.WordWiseDelay"


# instance fields
.field private firstGlossEntry:I

.field private glossEntries:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private lastGlossEntry:I

.field private final logger:Lcom/amazon/kindle/krx/logging/ILogger;

.field private final sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntries:Ljava/util/HashSet;

    const/4 v0, 0x0

    .line 41
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->firstGlossEntry:I

    .line 46
    iput v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->lastGlossEntry:I

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    .line 57
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/logging/ILogger;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Ljava/util/HashSet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntries:Ljava/util/HashSet;

    return-object p0
.end method

.method static synthetic access$400(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)Lcom/amazon/kindle/krx/IKindleReaderSDK;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-object p0
.end method

.method static synthetic access$502(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->firstGlossEntry:I

    return p1
.end method

.method static synthetic access$602(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;I)I
    .locals 0

    .line 19
    iput p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->lastGlossEntry:I

    return p1
.end method

.method private loadGlossEntries(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    .locals 3

    .line 119
    new-instance v0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay$1;-><init>(Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/amazon/kindle/krx/reader/IPosition;

    .line 186
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public isDifficultWord(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v2, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_5

    .line 78
    :try_start_1
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    iget v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->firstGlossEntry:I

    if-lt v2, v3, :cond_3

    .line 79
    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v2

    iget v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->lastGlossEntry:I

    if-le v2, v3, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntries:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getStartPosition()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v3, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v4, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/Word;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is marked as difficult"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, v4, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    if-eqz v1, :cond_2

    .line 105
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_2
    return v2

    .line 83
    :cond_3
    :goto_0
    :try_start_2
    invoke-direct {p0, p1}, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->loadGlossEntries(Lcom/amazon/kindle/speedreading/doubletime/framework/Word;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    .line 105
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    :cond_4
    return v0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_7

    :goto_1
    iget-object p1, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    const/4 v1, 0x0

    .line 100
    :goto_2
    :try_start_3
    iget-object v2, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->logger:Lcom/amazon/kindle/krx/logging/ILogger;

    sget-object v3, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->TAG:Ljava/lang/String;

    const-string v4, "Error obtaining word wise difficulty"

    invoke-interface {v2, v3, v4, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_7

    goto :goto_1

    :catchall_1
    move-exception p1

    move v0, v1

    :goto_3
    if-eqz v0, :cond_6

    .line 105
    iget-object v0, p0, Lcom/amazon/kindle/speedreading/doubletime/framework/WordWiseDelay;->glossEntriesLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 107
    :cond_6
    throw p1

    :cond_7
    :goto_4
    return v0
.end method
