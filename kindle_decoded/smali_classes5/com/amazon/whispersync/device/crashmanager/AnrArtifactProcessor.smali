.class Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "AnrArtifactProcessor.java"


# static fields
.field public static final ANR_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CRASH_DESCRIPTOR:Ljava/lang/String; = ""

.field private static final LINES_FROM_PROCESS_ANR_TO_STACK_TRACE:I = 0x7

.field private static final MIN_NUM_LINES_TO_BE_READ:I = 0xa

.field private static final REGEX_STACK_TRACE_DATA:Ljava/lang/String; = "(at\\s.*\\(.*\\))"

.field private static final REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

.field private final mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

.field private final mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "AnrArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "(at\\s.*\\(.*\\))"

    .line 28
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string/jumbo v1, "system_app_anr"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "data_app_anr"

    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->ANR_ARTIFACT_TAGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V
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
            ">;",
            "Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;",
            "Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 64
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-virtual {p5, p1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    .line 66
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 69
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    new-instance p2, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p3}, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    const-string p3, "Package"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    new-instance p2, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    .line 77
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    return-void

    .line 60
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate count must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 57
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metrics header processor factory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v1, "ContentType"

    const-string v2, "JavaCrash"

    invoke-interface {v0, v1, v2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 280
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/whispersync/device/utils/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    .line 284
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p0, p2, p3, v0}, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->extractAnrInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 289
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0, p2}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->getCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 296
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mAnrHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CrashDuplicateCount"

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 301
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 82
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->ANR_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized extractAnrInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x6400

    .line 196
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 198
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 200
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 205
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "Cmd line: "

    .line 211
    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_9

    const-string v4, "DALVIK THREADS"

    .line 221
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 227
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 230
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {v4}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 231
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {v4}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    const/4 v4, 0x0

    .line 243
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    add-int/2addr v4, v1

    .line 246
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    const/16 v7, 0xa

    if-nez v6, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v7, :cond_4

    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v8, 0xd

    if-ne v6, v8, :cond_5

    :cond_4
    if-ge v4, v7, :cond_7

    .line 247
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {v7}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    goto :goto_1

    .line 251
    :cond_5
    sget-object v6, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 252
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_0

    .line 255
    :cond_6
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 259
    :cond_7
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_8

    .line 260
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p2, "extractAnrInfoFromCrashBody"

    const-string p3, "No stack trace."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 261
    monitor-exit p0

    return-object v3

    .line 263
    :cond_8
    :try_start_3
    invoke-static {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashDescriptor"

    .line 264
    invoke-interface {p3, v0, p1, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 265
    monitor-exit p0

    return-object p1

    :cond_9
    :goto_2
    :try_start_4
    const-string p1, "CrashDescriptor"

    const-string v0, ""

    .line 223
    invoke-interface {p3, p1, v0, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 224
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception p2

    .line 200
    :try_start_5
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
