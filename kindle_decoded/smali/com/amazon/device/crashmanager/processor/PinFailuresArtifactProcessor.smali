.class public Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;
.super Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;
.source "PinFailuresArtifactProcessor.java"


# static fields
.field public static final PIN_FAILURE_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

.field private final mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "exp_det_cert_pin_failure"

    .line 42
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 43
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->PIN_FAILURE_ARTIFACT_TAGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V
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
            "Lcom/amazon/client/metrics/common/MetricEvent;",
            "Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;",
            ")V"
        }
    .end annotation

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    .line 49
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    .line 51
    iput-object p5, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    .line 52
    iput-object p4, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-void
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 63
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "ContentType"

    const-string v1, "PinFailure"

    invoke-interface {p4, v0, v1, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 67
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const-string v1, "OsBuildNumber"

    invoke-interface {p4, v1, v0, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 68
    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mBuffer:[C

    iget-object v9, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    const/4 v5, 0x0

    const-string v6, "PIN_FAILURE"

    const/4 v8, 0x0

    move-object v2, p2

    move-object v3, p3

    .line 69
    invoke-static/range {v2 .. v9}, Lcom/amazon/device/crashmanager/utils/CrashDescriptorUtil;->calculateCrashDescriptorFromTrace(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;Ljava/lang/String;Ljava/lang/String;[CLcom/amazon/device/crashmanager/processor/MetricsHeaderProcessor;Lcom/amazon/client/metrics/common/MetricEvent;)Ljava/lang/String;

    move-result-object p2

    .line 71
    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string v0, "CrashDescriptor"

    invoke-interface {p4, v0, p2, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 72
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object p4

    iget-object v0, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    iget-object v1, p0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->mCertificatePinFailureHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-static {p4, p2, v0, p3, v1}, Lcom/amazon/device/crashmanager/utils/CrashReportUtil;->addCrashDuplicateHeader(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)V

    .line 73
    invoke-virtual {p1, p2}, Lcom/amazon/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 57
    sget-object v0, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;->PIN_FAILURE_ARTIFACT_TAGS:Ljava/util/Set;

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

    .line 33
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

    .line 33
    invoke-super {p0, p1, p2}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
