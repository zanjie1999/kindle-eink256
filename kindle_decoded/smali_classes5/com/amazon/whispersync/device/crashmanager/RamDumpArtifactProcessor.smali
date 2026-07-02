.class Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "RamDumpArtifactProcessor.java"


# static fields
.field private static final KMSG_LOG_MAX_FILE_SIZE:I = 0x40000

.field private static final OOM_MESSAGE_GROUP:I = 0x1

.field private static final OOM_PROCESSNAME_GROUP:I = 0x2

.field private static final RESET_CAUSE_REGEX:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mRamDumpHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "RamDumpArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "Oops -.*|(Out of memory:).*\\(([\\w\\.]+)\\)|Kernel panic -.*"

    .line 18
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->RESET_CAUSE_REGEX:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/device/utils/DetUtil;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 30
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->mRamDumpHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    return-void
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 72
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->mRamDumpHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v0, "ContentType"

    const-string v1, "Diagnostic"

    invoke-interface {p1, v0, v1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 78
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->mRamDumpHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "Build"

    invoke-interface {p1, v1, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 80
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->mRamDumpHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p0, p2, p3, p1}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->extractResetCauseFromKmsgLog(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "RAMDUMP_KMSG_LOG"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected extractResetCauseFromKmsgLog(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/high16 v0, 0x40000

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 47
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    const-string v2, "extractResetCauseFromKmsgLog"

    if-eqz v0, :cond_2

    .line 48
    :try_start_1
    sget-object v3, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->RESET_CAUSE_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-eqz v4, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    .line 57
    :goto_0
    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v6, "kernel panic reset cause found"

    new-array v5, v5, [Ljava/lang/Object;

    const-string/jumbo v7, "reset cause"

    aput-object v7, v5, v1

    aput-object v0, v5, v3

    invoke-virtual {v4, v2, v6, v5}, Lcom/amazon/whispersync/dp/logger/DPLogger;->verbose(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "CrashDescriptor"

    .line 59
    invoke-interface {p3, v1, v0, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 66
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v1, [Ljava/lang/Object;

    const-string p3, "No reset cause found in log file."

    invoke-virtual {p1, v2, p3, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p2

    .line 64
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    throw p2
.end method
