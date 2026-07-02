.class public Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;
.super Ljava/lang/Object;
.source "RamDumpArtifactSource.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/source/ArtifactSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;,
        Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$LastModifiedFileComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_RAMDUMP_TIME_INDEX:J = 0x0L

.field static final KMSG_LOG_FILE:Ljava/lang/String; = "kmsg.log"

.field public static final KMSG_LOG_TAG:Ljava/lang/String; = "RAMDUMP_KMSG_LOG"

.field static final RAMDUMP_FOLDER_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final RAMDUMP_PARTITION:Ljava/lang/String; = "/ramdump"

.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field private final mAvailableRamDumpDirectories:[Ljava/io/File;

.field private mLastRamDumpTimeIndex:J

.field private final mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "RamDumpArtifactSource"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string/jumbo v1, "rd1"

    .line 56
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "rd2"

    .line 57
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "rd3"

    .line 58
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->RAMDUMP_FOLDER_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/crashmanager/source/SettingsStore;)V
    .locals 1

    const-string v0, "/ramdump"

    .line 82
    invoke-direct {p0, v0, p1}, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;-><init>(Ljava/lang/String;Lcom/amazon/device/crashmanager/source/SettingsStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/device/crashmanager/source/SettingsStore;)V
    .locals 3

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 92
    iput-object p2, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    .line 93
    sget-object v0, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/amazon/device/crashmanager/source/SettingsStore;->getLong(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    .line 95
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 97
    sget-object p1, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "RamDumpArtifactSource"

    const-string v2, "RamDump partition is missing"

    invoke-virtual {p1, v1, v2, v0}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    :cond_0
    new-instance p1, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$RamDumpDirectoryFilter;-><init>(Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$1;)V

    invoke-virtual {p2, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    if-eqz p1, :cond_1

    .line 101
    new-instance p2, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$LastModifiedFileComparator;

    invoke-direct {p2, v0}, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$LastModifiedFileComparator;-><init>(Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource$1;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    return-void

    .line 90
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ramdumpPartition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SettingsStore cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;
    .locals 11

    .line 108
    iget-object p2, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    const-string v0, "getNextArtifact"

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez p2, :cond_0

    .line 109
    sget-object p1, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string/jumbo v2, "no ramdumps exist"

    invoke-virtual {p1, v0, v2, p2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 114
    :cond_0
    array-length v3, p2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    aget-object v5, p2, v4

    .line 115
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    cmp-long v10, v6, v8

    if-lez v10, :cond_1

    .line 116
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    .line 118
    :try_start_0
    new-instance v6, Lcom/amazon/device/crashmanager/Artifact;

    const-string v7, "RAMDUMP_KMSG_LOG"

    new-instance v8, Ljava/io/FileInputStream;

    new-instance v9, Ljava/io/File;

    const-string v10, "kmsg.log"

    invoke-direct {v9, v5, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v8, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 119
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Lcom/amazon/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v6

    goto :goto_1

    .line 127
    :catch_0
    sget-object v6, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No kernel message log file exists in ramdump directory"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v7, v2, [Ljava/lang/Object;

    invoke-virtual {v6, v0, v5, v7}, Lcom/amazon/dp/logger/DPLoggerBase;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v7, "ramdumpIOException"

    .line 128
    invoke-interface {p1, v7, v5, v6}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1
.end method

.method public saveCurrentIndex()V
    .locals 4

    .line 137
    iget-object v0, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mSettingsStore:Lcom/amazon/device/crashmanager/source/SettingsStore;

    sget-object v1, Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;

    iget-wide v2, p0, Lcom/amazon/device/crashmanager/source/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/device/crashmanager/source/SettingsStore;->saveLong(Lcom/amazon/device/crashmanager/source/SettingsStore$SettingsKey;J)V

    return-void
.end method
