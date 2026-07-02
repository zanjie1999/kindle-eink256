.class public Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;
.super Ljava/lang/Object;
.source "DropBoxArtifactSource.java"

# interfaces
.implements Lcom/amazon/device/crashmanager/source/ArtifactSource;


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# instance fields
.field protected final mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

.field private mCurrentTagIdx:I

.field protected final mDropBoxManager:Landroid/os/DropBoxManager;

.field private final mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 59
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "CrashManager.DropBoxArtifactSource"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 96
    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mDropBoxManager:Landroid/os/DropBoxManager;

    .line 97
    iput-object p2, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    .line 98
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mTags:Ljava/util/List;

    .line 99
    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    return-void

    .line 94
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tags cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CrashTimestampUtil cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 88
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "DropBoxManager cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 104
    iget v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    const/4 v4, 0x0

    if-ltz v0, :cond_0

    iget-object v5, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lt v0, v5, :cond_1

    .line 105
    :cond_0
    iput v4, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    .line 108
    :cond_1
    :goto_0
    iget v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    iget-object v5, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mTags:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 109
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mTags:Ljava/util/List;

    iget v5, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    .line 110
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    const-string v6, "BUILD_MAP"

    invoke-virtual {v0, v5, v6}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getLastTimestamp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    .line 112
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    invoke-virtual {v0, v5, v3}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->getLastTimestamp(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 113
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mDropBoxManager:Landroid/os/DropBoxManager;

    invoke-virtual {v0, v5, v8, v9}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v0

    move-object v8, v0

    :goto_1
    const/4 v9, 0x1

    if-eqz v8, :cond_5

    .line 115
    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v10

    const-string v0, "ARTIFACT_UPLOAD"

    .line 116
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v12, "getNextArtifact"

    if-eqz v0, :cond_2

    cmp-long v0, v10, v6

    if-lez v0, :cond_2

    .line 117
    sget-object v0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Crash file for tag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " added to dropbox after the dedupe iteration. No further crashes will be processed for this tag. Continuing with next tag."

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v12, v5, v6}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->close()V

    goto/16 :goto_7

    .line 125
    :cond_2
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    invoke-virtual {v0, v5, v3, v10, v11}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->updateLastTimestamp(Ljava/lang/String;Ljava/lang/String;J)V

    .line 127
    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->getFlags()I

    move-result v0

    and-int/2addr v0, v9

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    .line 130
    :try_start_0
    new-instance v0, Lcom/amazon/device/crashmanager/Artifact;

    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->getTag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->getInputStream()Ljava/io/InputStream;

    move-result-object v14
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v15, v5

    :try_start_1
    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->getTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v13, v14, v4, v5}, Lcom/amazon/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    move-object v15, v5

    .line 134
    :goto_3
    sget-object v4, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v0, v5, v9

    const-string v0, "Error retrieving data from DropBox"

    invoke-virtual {v4, v12, v0, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v0, "dropBoxIOException"

    .line 135
    invoke-interface {v2, v0, v4, v5}, Lcom/amazon/client/metrics/common/MetricEvent;->addCounter(Ljava/lang/String;D)V

    const-string v0, "dropBoxIOExceptionMessage"

    const-string v4, "IOException while fetching DropBox entry InputStream"

    .line 136
    invoke-interface {v2, v0, v4}, Lcom/amazon/client/metrics/common/MetricEvent;->addString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v15, v5

    .line 132
    :goto_4
    sget-object v4, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v5, v9, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v0, v5, v13

    const-string v0, "Unable to fetch entry from DropBox"

    invoke-virtual {v4, v12, v0, v5}, Lcom/amazon/dp/logger/DPLoggerBase;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_4
    move-object v15, v5

    :goto_5
    const/4 v13, 0x0

    .line 139
    :goto_6
    invoke-virtual {v8}, Landroid/os/DropBoxManager$Entry;->close()V

    .line 141
    iget-object v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mDropBoxManager:Landroid/os/DropBoxManager;

    move-object v4, v15

    invoke-virtual {v0, v4, v10, v11}, Landroid/os/DropBoxManager;->getNextEntry(Ljava/lang/String;J)Landroid/os/DropBoxManager$Entry;

    move-result-object v8

    move-object v5, v4

    const/4 v4, 0x0

    goto/16 :goto_1

    :cond_5
    :goto_7
    const/4 v13, 0x0

    .line 108
    iget v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    add-int/2addr v0, v9

    iput v0, v1, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCurrentTagIdx:I

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method

.method public saveBuildMapIndex()V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    invoke-virtual {v0}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->saveBuildMapIndex()V

    return-void
.end method

.method public saveCurrentIndex()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->mCrashTimestampUtil:Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;

    invoke-virtual {v0}, Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;->saveCurrentIndex()V

    return-void
.end method
