.class Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;
.super Ljava/lang/Object;
.source "RamDumpArtifactSource.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$RamDumpDirectoryFilter;,
        Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$LastModifiedFileComparator;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAST_RAMDUMP_TIME_INDEX:J = 0x0L

.field static final KMSG_LOG_FILE:Ljava/lang/String; = "kmsg.log"

.field static final KMSG_LOG_TAG:Ljava/lang/String; = "RAMDUMP_KMSG_LOG"

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

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mAvailableRamDumpDirectories:[Ljava/io/File;

.field private mLastRamDumpTimeIndex:J

.field private final mRamDumpPartition:Ljava/io/File;

.field private final mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "RamDumpArtifactSource"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 55
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

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

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->RAMDUMP_FOLDER_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/SettingsStore;)V
    .locals 1

    const-string v0, "/ramdump"

    .line 85
    invoke-direct {p0, v0, p1}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;-><init>(Ljava/lang/String;Lcom/amazon/whispersync/device/crashmanager/SettingsStore;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/whispersync/device/crashmanager/SettingsStore;)V
    .locals 3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 95
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    .line 96
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const-wide/16 v1, 0x0

    invoke-interface {p2, v0, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore;->getLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    .line 98
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mRamDumpPartition:Ljava/io/File;

    .line 99
    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 100
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "RamDumpArtifactSource"

    const-string v1, "RamDump partition is missing"

    invoke-virtual {p1, v0, v1, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mRamDumpPartition:Ljava/io/File;

    new-instance p2, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$RamDumpDirectoryFilter;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$RamDumpDirectoryFilter;-><init>(Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$1;)V

    invoke-virtual {p1, p2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    if-eqz p1, :cond_1

    .line 104
    new-instance p2, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$LastModifiedFileComparator;

    invoke-direct {p2, v0}, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$LastModifiedFileComparator;-><init>(Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource$1;)V

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    :cond_1
    return-void

    .line 93
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "ramdumpPartition cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 90
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SettingsStore cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNextArtifact(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lcom/amazon/whispersync/device/crashmanager/Artifact;
    .locals 10

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    const-string v1, "getNextArtifact"

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 112
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "no ramdumps exist"

    invoke-virtual {p1, v1, v3, v0}, Lcom/amazon/whispersync/dp/logger/DPLogger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_0
    const/4 v0, 0x0

    .line 117
    :goto_0
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    array-length v5, v4

    if-ge v0, v5, :cond_2

    .line 118
    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    cmp-long v8, v4, v6

    if-lez v8, :cond_1

    .line 119
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    aget-object v4, v4, v0

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    .line 121
    :try_start_0
    new-instance v4, Lcom/amazon/whispersync/device/crashmanager/Artifact;

    const-string v5, "RAMDUMP_KMSG_LOG"

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    aget-object v8, v8, v0

    const-string v9, "kmsg.log"

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iget-object v7, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amazon/whispersync/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v4

    goto :goto_1

    .line 131
    :catch_0
    sget-object v4, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No kernel message log file exists in ramdump directory"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mAvailableRamDumpDirectories:[Ljava/io/File;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string/jumbo v6, "ramdumpIOException"

    .line 133
    invoke-interface {p1, v6, v4, v5}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v2
.end method

.method public saveCurrentIndex()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->RAMDUMP_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    iget-wide v2, p0, Lcom/amazon/whispersync/device/crashmanager/RamDumpArtifactSource;->mLastRamDumpTimeIndex:J

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore;->saveLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)V

    return-void
.end method
