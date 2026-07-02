.class Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;
.super Ljava/lang/Object;
.source "DropBoxArtifactSource.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/ArtifactSource;


# static fields
.field private static final DEFAULT_LAST_DROPBOX_TIME_INDEX:J

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field protected final mDropBoxManager:Landroid/os/DropBoxManager;

.field private mLastTimeIndexMillis:J

.field protected final mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

.field private final mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "CrashManager.DropBoxArtifactSource"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/os/DropBoxManager;Lcom/amazon/whispersync/device/crashmanager/SettingsStore;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Lcom/amazon/whispersync/device/crashmanager/SettingsStore;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 57
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 58
    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    .line 59
    iput-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mTags:Ljava/util/Set;

    .line 61
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    const-wide/16 v0, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore;->getLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mLastTimeIndexMillis:J

    return-void

    .line 55
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tags cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SettingsStore cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DropBoxManager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getNextCrashEntry(J)Landroid/os/DropBoxManager$Entry;
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mDropBoxManager:Landroid/os/DropBoxManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getNextArtifact(Lcom/amazon/whispersync/client/metrics/MetricEvent;)Lcom/amazon/whispersync/device/crashmanager/Artifact;
    .locals 9

    const-string v0, "getNextArtifact"

    .line 67
    :goto_0
    iget-wide v1, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mLastTimeIndexMillis:J

    invoke-direct {p0, v1, v2}, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->getNextCrashEntry(J)Landroid/os/DropBoxManager$Entry;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 69
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mLastTimeIndexMillis:J

    .line 70
    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mTags:Ljava/util/Set;

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v2

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_0

    const/4 v2, 0x0

    .line 73
    :try_start_0
    new-instance v4, Lcom/amazon/whispersync/device/crashmanager/Artifact;

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/amazon/whispersync/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception v4

    .line 79
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "IOException thrown when fetching entry from DropBox"

    invoke-virtual {v5, v0, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-string v4, "dropBoxIOException"

    .line 80
    invoke-interface {p1, v4, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addCounter(Ljava/lang/String;D)V

    const-string v2, "dropBoxIOExceptionMessage"

    const-string v3, "IOException while fetching DropBox entry InputStream"

    .line 81
    invoke-interface {p1, v2, v3}, Lcom/amazon/whispersync/client/metrics/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v4

    .line 77
    sget-object v5, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v4, v3, v2

    const-string v2, "IllegalArgumentException thrown when fetching entry from DropBox"

    invoke-virtual {v5, v0, v2, v3}, Lcom/amazon/whispersync/dp/logger/DPLogger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/os/DropBoxManager$Entry;->close()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public saveCurrentIndex()V
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mSettingsStore:Lcom/amazon/whispersync/device/crashmanager/SettingsStore;

    sget-object v1, Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;->DROPBOX_TIME_INDEX_KEY:Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;

    iget-wide v2, p0, Lcom/amazon/whispersync/device/crashmanager/DropBoxArtifactSource;->mLastTimeIndexMillis:J

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/whispersync/device/crashmanager/SettingsStore;->saveLong(Lcom/amazon/whispersync/device/crashmanager/SettingsStore$SettingsKey;J)V

    return-void
.end method
