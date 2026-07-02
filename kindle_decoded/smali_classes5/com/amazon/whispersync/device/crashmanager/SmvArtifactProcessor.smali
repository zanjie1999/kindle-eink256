.class Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "SmvArtifactProcessor.java"


# static fields
.field public static final SMV_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

.field private final mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

.field private final mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "SmvArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 28
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string/jumbo v1, "system_app_strictmode"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "data_app_strictmode"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->SMV_ARTIFACT_TAGS:Ljava/util/Set;

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

    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 51
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-virtual {p5, p1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    .line 53
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 56
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    new-instance p2, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p3}, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    const-string p3, "Package"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    new-instance p2, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    .line 64
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    return-void

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate count must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 44
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

    .line 196
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v1, "ContentType"

    const-string v2, "JavaCrash"

    invoke-interface {v0, v1, v2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 202
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/whispersync/device/utils/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    .line 206
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p0, p2, p3, v0}, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->extractSmvInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 211
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0, p2}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->getCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 218
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->mSmvHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CrashDuplicateCount"

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 223
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 69
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->SMV_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized extractSmvInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const/16 v0, 0x6400

    .line 152
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 154
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 161
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    :goto_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 173
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 176
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 181
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-gtz p1, :cond_2

    .line 182
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string p2, "extractSmvInfoFromCrashBody"

    const-string p3, "No stack trace."

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 183
    monitor-exit p0

    return-object p1

    .line 185
    :cond_2
    :try_start_3
    invoke-static {v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashDescriptor"

    .line 186
    invoke-interface {p3, v0, p1, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 187
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p2

    .line 156
    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    throw p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method
