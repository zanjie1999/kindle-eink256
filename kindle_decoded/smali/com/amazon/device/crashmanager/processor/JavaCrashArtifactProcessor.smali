.class public Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;
.super Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;
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

.field public static final JAVA_CRASH_ARTIFACT_WHITELIST_TAGS:Ljava/util/Set;
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

.field public static final MAX_LINES_TO_CHECK_FOR_NATIVE_CRASH:I = 0x32

.field public static REGEX_GROUP_ID:I = 0x0

.field public static final REGEX_STACK_TRACE_DATA:Ljava/lang/String; = "([a-zA-Z0-9_\\.\\$]+(Exception|Error|TerribleFailure))|(at\\s.*\\(.*\\))|#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+\\r\\n]+)"

.field public static final REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

.field private final mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "([a-zA-Z0-9_\\.\\$]+(Exception|Error|TerribleFailure))|(at\\s.*\\(.*\\))|#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+\\r\\n]+)"

    .line 34
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_STACK_TRACE_PATTERN:Ljava/util/regex/Pattern;

    const/4 v0, 0x0

    .line 36
    sput v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->REGEX_GROUP_ID:I

    .line 43
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string/jumbo v1, "system_app_crash"

    .line 44
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v2, "data_app_crash"

    .line 45
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "data_app_exception"

    .line 46
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v3, "system_app_wtf"

    .line 47
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v4, "system_server_crash"

    .line 48
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "system_server_watchdog"

    .line 49
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v5, "system_server_wtf"

    .line 50
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v6, "data_app_native_crash"

    .line 52
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v6, "system_app_native_crash"

    .line 53
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    const/4 v6, 0x2

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    const-string v6, "data_app_wtf"

    .line 59
    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_WHITELIST_TAGS:Ljava/util/Set;

    .line 63
    new-instance v0, Ljava/util/HashSet;

    const/4 v6, 0x4

    invoke-direct {v0, v6}, Ljava/util/HashSet;-><init>(I)V

    .line 64
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 67
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 69
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_STACK_TRACE_TAGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/utils/det/DetUtil;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;",
            "Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;",
            ")V"
        }
    .end annotation

    .line 75
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 85
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-virtual {p4, p1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    .line 87
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 90
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance p2, Lcom/amazon/device/crashmanager/processor/ExtractJavaVersionHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-direct {p2, p3}, Lcom/amazon/device/crashmanager/processor/ExtractJavaVersionHeaderProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    const-string p3, "Package"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    new-instance p2, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    .line 98
    iput-object p5, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CrashDedupeUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metrics header processor factory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    invoke-virtual {v0, p4}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->setAction(Ljava/lang/String;)V

    .line 113
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "ContentType"

    const-string v1, "JavaCrash"

    invoke-interface {p4, v0, v1, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 119
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-virtual {p4, p2, p3, v0}, Lcom/amazon/device/utils/det/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p4

    .line 121
    sget-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_STACK_TRACE_TAGS:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    .line 124
    invoke-virtual {p4}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mBuffer:[C

    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const/4 v8, 0x0

    const-string v5, "JAVA_CRASH"

    move-object v1, p2

    move-object v2, p3

    .line 123
    invoke-static/range {v1 .. v8}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->calculateCrashDescriptorFromTrace(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/lang/String;[CLcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/String;

    move-result-object p4

    .line 130
    :cond_0
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "CrashDescriptor"

    invoke-interface {p2, v0, p4, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 131
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mJavaHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-static {p2, p4, v0, p3, v1}, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->addCrashDuplicateHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    .line 132
    invoke-virtual {p1, p4}, Lcom/amazon/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    .line 133
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    invoke-virtual {p2}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->getProcessName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "appName"

    invoke-virtual {p1, p3, p2}, Lcom/amazon/device/crashmanager/Artifact;->addMetadata(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 103
    sget-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;->JAVA_CRASH_ARTIFACT_WHITELIST_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public bridge synthetic processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1, p2}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
