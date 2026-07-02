.class final Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;
.super Ljava/lang/Object;
.source "LogFilePrintWriterFactory.java"

# interfaces
.implements Lcom/audible/mobile/framework/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/audible/mobile/framework/Factory<",
        "Ljava/io/PrintWriter;",
        ">;"
    }
.end annotation


# static fields
.field static final LOG_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field static final LOG_PATH:Ljava/lang/String;


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentDateFactory:Lcom/audible/mobile/framework/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/util/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field private currentLogDate:Ljava/util/Calendar;

.field private final executor:Ljava/util/concurrent/ExecutorService;

.field private logWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "audible"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hushpuppy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_PATH:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$1;

    invoke-direct {v1}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$1;-><init>()V

    invoke-direct {p0, p1, v0, v1}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/framework/Factory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;Lcom/audible/mobile/framework/Factory;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/util/Calendar;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context must not be null!"

    .line 106
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor must not be null!"

    .line 107
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "currentDateFactory must not be null!"

    .line 108
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 110
    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->context:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->executor:Ljava/util/concurrent/ExecutorService;

    .line 112
    iput-object p3, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentDateFactory:Lcom/audible/mobile/framework/Factory;

    const/4 p1, 0x7

    .line 114
    invoke-direct {p0, p1}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->deleteOldLogFile(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)Lcom/audible/mobile/framework/Factory;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentDateFactory:Lcom/audible/mobile/framework/Factory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->context:Landroid/content/Context;

    return-object p0
.end method

.method private deleteOldLogFile(I)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->executor:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;

    invoke-direct {v0, p0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory$2;-><init>(Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getLogDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 203
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_PATH:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :cond_1
    :goto_0
    return-object v0
.end method

.method private getLogFile(Ljava/io/File;Ljava/util/Calendar;)Ljava/io/File;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 220
    sget-object v1, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_FILE_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "%s_hp.log"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 221
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private isToday(Ljava/util/Calendar;)Z
    .locals 4

    .line 234
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentDateFactory:Lcom/audible/mobile/framework/Factory;

    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/4 v1, 0x1

    .line 236
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    const/4 v2, 0x5

    .line 237
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public declared-synchronized get()Ljava/io/PrintWriter;
    .locals 6

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentLogDate:Ljava/util/Calendar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentLogDate:Ljava/util/Calendar;

    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->isToday(Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 128
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 130
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmazonKindle."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Can\'t get the getExternalFilesDir(). Please restart your device!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    monitor-exit p0

    return-object v1

    .line 139
    :cond_2
    :try_start_2
    invoke-direct {p0, v0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->getLogDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_3

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AmazonKindle."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get create log directory at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->LOG_PATH:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". Please restart your device!"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return-object v1

    .line 148
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentDateFactory:Lcom/audible/mobile/framework/Factory;

    invoke-interface {v0}, Lcom/audible/mobile/framework/Factory;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentLogDate:Ljava/util/Calendar;

    .line 149
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    iget-object v5, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->currentLogDate:Ljava/util/Calendar;

    invoke-direct {p0, v2, v5}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->getLogFile(Ljava/io/File;Ljava/util/Calendar;)Ljava/io/File;

    move-result-object v2

    const/4 v5, 0x1

    invoke-direct {v4, v2, v5}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    invoke-direct {v0, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmazonKindle."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->logWriter:Ljava/io/PrintWriter;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v0

    .line 154
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]: Failed to open log file!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AmazonKindle."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;->get()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method
