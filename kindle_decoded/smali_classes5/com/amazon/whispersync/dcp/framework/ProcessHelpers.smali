.class public final Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;
.super Ljava/lang/Object;
.source "ProcessHelpers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.whispersync.dcp.framework.ProcessHelpers"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProcessId(Ljava/lang/Process;)I
    .locals 3

    const-string v0, ".*id=(\\d+).*"

    .line 100
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to find the process id in string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 p0, 0x1

    .line 107
    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRunningProcesses()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 112
    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->getRunningProcesses(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getRunningProcesses(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;",
            ">;"
        }
    .end annotation

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 121
    :try_start_0
    new-instance v2, Ljava/lang/ProcessBuilder;

    const-string/jumbo v3, "ps"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v3, 0x1

    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    .line 123
    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    .line 124
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 127
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 128
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 130
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->parsePSLine(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;

    move-result-object v1

    if-nez v1, :cond_1

    .line 133
    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->TAG:Ljava/lang/String;

    const-string v2, "Unrecognized ps output, skipping"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_2

    .line 135
    iget-object v2, v1, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    :cond_2
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {v3}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeReader(Ljava/io/Reader;)V

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto :goto_3

    :catch_0
    move-object v1, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 143
    :catch_1
    :goto_1
    :try_start_2
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->TAG:Ljava/lang/String;

    const-string v2, "IOException getting process list"

    invoke-static {p0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 147
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeReader(Ljava/io/Reader;)V

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/StreamHelpers;->closeReader(Ljava/io/Reader;)V

    throw p0
.end method

.method public static isProcessRunning(Ljava/lang/Process;)Z
    .locals 2

    .line 83
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->getProcessId(Ljava/lang/Process;)I

    move-result p0

    .line 84
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->getRunningProcesses()Ljava/util/List;

    move-result-object v0

    .line 86
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;

    .line 88
    iget v1, v1, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;->pid:I

    if-ne v1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parsePSLine(Ljava/lang/String;)Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;
    .locals 4

    const-string v0, "\\s+"

    .line 158
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 160
    array-length v0, p0

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    .line 165
    aget-object v0, p0, v0

    const/4 v2, 0x1

    .line 166
    aget-object v2, p0, v2

    const/16 v3, 0x8

    .line 167
    aget-object p0, p0, v3

    .line 170
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 171
    new-instance v3, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;

    invoke-direct {v3, p0, v0, v2}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$ProcessInfo;-><init>(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    return-object v1
.end method

.method public static waitForProcessComplete(Ljava/lang/Process;I)I
    .locals 4

    .line 43
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 44
    new-instance v1, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;

    invoke-direct {v1, p0, v0}, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers$1;-><init>(Ljava/lang/Process;Ljava/util/concurrent/CountDownLatch;)V

    .line 60
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    int-to-long v1, p1

    const/4 p1, -0x1

    .line 63
    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Ljava/lang/Process;->exitValue()I

    move-result p0

    return p0

    .line 69
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->TAG:Ljava/lang/String;

    const-string v1, "Timeout waiting for process to complete."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    invoke-virtual {p0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 76
    :catch_0
    sget-object p0, Lcom/amazon/whispersync/dcp/framework/ProcessHelpers;->TAG:Ljava/lang/String;

    const-string v0, "InterruptedException waiting for command completion"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method
