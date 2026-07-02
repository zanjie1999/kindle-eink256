.class Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "JavaCrashArtifactProcessor.java"


# static fields
.field public static final JAVA_CRASH_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final JAVA_STACK_TRACE_TAGS:Ljava/util/Set;
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

.field private final mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

.field private final mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "JavaCrashArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 39
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string/jumbo v1, "system_app_crash"

    .line 40
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "data_app_crash"

    .line 41
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "system_app_wtf"

    .line 42
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "system_server_crash"

    .line 43
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "system_server_watchdog"

    .line 44
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    .line 48
    new-instance v0, Ljava/util/HashSet;

    const/4 v5, 0x4

    invoke-direct {v0, v5}, Ljava/util/HashSet;-><init>(I)V

    .line 49
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->JAVA_STACK_TRACE_TAGS:Ljava/util/Set;

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

    .line 63
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 73
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-virtual {p5, p1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    .line 75
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 78
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance p2, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p3}, Lcom/amazon/whispersync/device/crashmanager/ExtractJavaVersionHeaderProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    const-string p3, "Package"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance p2, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    .line 86
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    return-void

    .line 69
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate count must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 66
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

    .line 149
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v1, "ContentType"

    const-string v2, "JavaCrash"

    invoke-interface {v0, v1, v2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 155
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/whispersync/device/utils/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    .line 160
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->JAVA_STACK_TRACE_TAGS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p0, p2, p3, v0}, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->extractJavaCrashInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 166
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0, p2}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->getCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 173
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CrashDuplicateCount"

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 178
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 91
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected extractJavaCrashInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashDescriptor"

    .line 141
    invoke-interface {p3, v0, p1, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    return-object p1
.end method
