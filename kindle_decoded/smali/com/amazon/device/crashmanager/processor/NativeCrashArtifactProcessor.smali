.class public Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;
.super Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;
.source "NativeCrashArtifactProcessor.java"


# static fields
.field public static final NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

.field public static final NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;


# instance fields
.field private final mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

.field private final mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "^pid: .+>>> (.+?) <<<.*$"

    .line 35
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+^\\r\\n]+)"

    .line 45
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    .line 53
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "SYSTEM_TOMBSTONE"

    .line 54
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "data_native_crash"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "data_native_exception"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

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

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 74
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-virtual {p4, p1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    .line 76
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 77
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance p2, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/device/utils/det/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/device/utils/det/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    .line 83
    iput-object p5, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    return-void

    .line 70
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CrashDedupeUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 67
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

    .line 98
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    invoke-virtual {v0, p4}, Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;->setAction(Ljava/lang/String;)V

    .line 101
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "ContentType"

    const-string v1, "NativeCrash"

    invoke-interface {p4, v0, v1, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 107
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-virtual {p4, p2, p3, v0}, Lcom/amazon/device/utils/det/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p4

    .line 108
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const/4 v4, 0x0

    iget-object v6, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mBuffer:[C

    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;

    const/4 v8, 0x0

    const-string v5, "NATIVE_CRASH"

    move-object v1, p2

    move-object v2, p3

    .line 110
    invoke-static/range {v1 .. v8}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->calculateCrashDescriptorFromTrace(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/lang/String;[CLcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/String;

    move-result-object p4

    goto :goto_0

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mBuffer:[C

    invoke-static {p2, v0}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->fetchBodyFromReader(Ljava/io/BufferedReader;[C)Ljava/io/BufferedReader;

    move-result-object p2

    .line 114
    invoke-static {p2}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->extractProcessNameFromNativeCrash(Ljava/io/BufferedReader;)Ljava/lang/String;

    move-result-object p2

    .line 115
    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v1, "Process"

    invoke-interface {v0, v1, p2, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 118
    :goto_0
    iget-object p2, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "CrashDescriptor"

    invoke-interface {p2, v0, p4, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 119
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-static {p2, p4, v0, p3, v1}, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->addCrashDuplicateHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    .line 120
    invoke-virtual {p1, p4}, Lcom/amazon/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 88
    sget-object v0, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;->NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
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

    .line 28
    invoke-super {p0, p1, p2}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
