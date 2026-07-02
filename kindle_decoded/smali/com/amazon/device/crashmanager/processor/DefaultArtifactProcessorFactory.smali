.class public Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;
.super Ljava/lang/Object;
.source "DefaultArtifactProcessorFactory.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/processor/ArtifactProcessorFactory;


# instance fields
.field private final mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

.field private final mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

.field private final mDeviceType:Ljava/lang/String;

.field private final mExtraInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

.field private final metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;


# direct methods
.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;Lcom/amazon/client/metrics/common/MetricEvent;)V
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
            "Lcom/amazon/client/metrics/common/MetricEvent;",
            ")V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 37
    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    .line 38
    iput-object p2, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    .line 40
    iput-object p4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    .line 41
    iput-object p5, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    .line 42
    iput-object p6, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DuplicateCrashCounts must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricsHeaderProcessorFactory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 29
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceType must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DetUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constructArtifactProcessors()Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/device/crashmanager/processor/ArtifactProcessor;",
            ">;"
        }
    .end annotation

    .line 47
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 48
    new-instance v7, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v5, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/amazon/device/crashmanager/processor/JavaCrashArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/amazon/device/crashmanager/processor/AnrArtifactProcessor;

    iget-object v9, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v10, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v12, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    iget-object v13, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/amazon/device/crashmanager/processor/AnrArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v1, Lcom/amazon/device/crashmanager/processor/SmvArtifactProcessor;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/device/crashmanager/processor/SmvArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v1, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;

    iget-object v9, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v10, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v11, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v12, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->metricsFactory:Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;

    iget-object v13, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v8, v1

    invoke-direct/range {v8 .. v13}, Lcom/amazon/device/crashmanager/processor/NativeCrashArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/device/crashmanager/processor/MetricsHeaderProcessorFactory;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v1, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v1, Lcom/amazon/device/crashmanager/processor/RamDumpArtifactProcessor;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/processor/RamDumpArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v1, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;

    iget-object v6, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v7, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v8, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v9, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mMetricEvent:Lcom/amazon/client/metrics/common/MetricEvent;

    iget-object v10, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mCrashDedupeUtil:Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/amazon/device/crashmanager/processor/PinFailuresArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/client/metrics/common/MetricEvent;Lcom/amazon/device/crashmanager/utils/CrashDescriptorDedupeUtil;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v1, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessor;

    iget-object v2, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object v3, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v1, v2, v3, v4}, Lcom/amazon/device/crashmanager/processor/DefaultArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
