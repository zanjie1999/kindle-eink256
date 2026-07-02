.class public Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;
.super Ljava/lang/Object;
.source "DefaultArtifactProcessorFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessorFactory;


# instance fields
.field private final mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

.field private final mDeviceSerialNumber:Ljava/lang/String;

.field private final mDeviceType:Ljava/lang/String;

.field private final mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

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

.field private final mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;


# direct methods
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

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    if-eqz p3, :cond_2

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 38
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    .line 39
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    .line 42
    iput-object p5, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    .line 43
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DuplicateCrashCounts must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "MetricsHeaderProcessorFactory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 30
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceSerialNumber must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DeviceType must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DetUtil must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constructArtifactProcessors()Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/device/crashmanager/ArtifactProcessor;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 47
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 48
    new-instance v9, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v4, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v7, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    iget-object v8, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/amazon/whispersync/device/crashmanager/JavaCrashArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;

    iget-object v11, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v12, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v13, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v14, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v15, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    move-object v10, v2

    move-object/from16 v16, v3

    invoke-direct/range {v10 .. v16}, Lcom/amazon/whispersync/device/crashmanager/AnrArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;

    iget-object v5, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v6, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v7, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v8, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v9, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    iget-object v10, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    move-object v4, v2

    invoke-direct/range {v4 .. v10}, Lcom/amazon/whispersync/device/crashmanager/SmvArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;

    iget-object v12, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v13, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v14, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v15, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mMetricsHeaderProcessorFactory:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;

    iget-object v4, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDuplicateCrashCounts:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    move-object v11, v2

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    invoke-direct/range {v11 .. v17}, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v4, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v4, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    new-instance v2, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessor;

    iget-object v3, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v4, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceType:Ljava/lang/String;

    iget-object v5, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mDeviceSerialNumber:Ljava/lang/String;

    iget-object v6, v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessorFactory;->mExtraInfo:Ljava/util/Map;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method
