.class public final Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;
.super Ljava/lang/Object;
.source "DebugFileLogWriter.java"

# interfaces
.implements Lcom/audible/hushpuppy/common/logging/ILogWriter;


# instance fields
.field private final context:Landroid/content/Context;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final logWriterFactory:Lcom/audible/mobile/framework/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/io/PrintWriter;",
            ">;"
        }
    .end annotation
.end field

.field private processId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 79
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;

    invoke-direct {v1, p1}, Lcom/audible/hushpuppy/common/logging/LogFilePrintWriterFactory;-><init>(Landroid/content/Context;)V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/audible/mobile/framework/Factory;I)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/audible/mobile/framework/Factory;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/audible/mobile/framework/Factory<",
            "Ljava/io/PrintWriter;",
            ">;I)V"
        }
    .end annotation

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "context can\'t be null."

    .line 94
    invoke-static {p1, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "executor can\'t be null."

    .line 95
    invoke-static {p2, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "logWriterFactory can\'t be null."

    .line 96
    invoke-static {p3, v0}, Lcom/audible/mobile/util/Assert;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    iput-object p1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->context:Landroid/content/Context;

    .line 99
    iput-object p2, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->executor:Ljava/util/concurrent/Executor;

    .line 100
    iput-object p3, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->logWriterFactory:Lcom/audible/mobile/framework/Factory;

    .line 101
    iput p4, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->processId:I

    return-void
.end method

.method static synthetic access$000(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;)Lcom/audible/mobile/framework/Factory;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->logWriterFactory:Lcom/audible/mobile/framework/Factory;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->isValidToLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->printLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->isValidToLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result p0

    return p0
.end method

.method private getDateTimeString()Ljava/lang/String;
    .locals 1

    .line 253
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getLogLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->getDateTimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->processId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " - ["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->getThreadName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getThreadName()Ljava/lang/String;
    .locals 1

    .line 263
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isLogMessageNotBlank(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 302
    invoke-static {p1}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p2}, Lcom/audible/mobile/util/StringUtils;->isNotBlank(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidToLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 290
    invoke-direct {p0, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->isLogMessageNotBlank(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isValidToLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 0

    .line 277
    invoke-direct {p0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->isValidToLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->executor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$1;-><init>(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 216
    iget-object v0, p0, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->executor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter$2;-><init>(Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private printLog(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 315
    invoke-direct {p0, p2, p3, p4}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->getLogLine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 316
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public debug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "D"

    .line 120
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "E"

    .line 156
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "E"

    .line 162
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "I"

    .line 132
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "I"

    .line 138
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public verbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "V"

    .line 114
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "W"

    .line 144
    invoke-direct {p0, v0, p1, p2}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "W"

    .line 150
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/audible/hushpuppy/common/logging/DebugFileLogWriter;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
