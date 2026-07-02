.class public Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;
.super Ljava/lang/Object;
.source "CrashlyticsReportPersistence.java"


# static fields
.field private static final APP_EXIT_INFO_FILE_NAME:Ljava/lang/String; = "app-exit-info"

.field private static final EVENT_COUNTER_FORMAT:Ljava/lang/String; = "%010d"

.field private static final EVENT_COUNTER_WIDTH:I = 0xa

.field private static final EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final EVENT_FILE_NAME_PREFIX:Ljava/lang/String; = "event"

.field private static final EVENT_NAME_LENGTH:I

.field private static final EVENT_TYPE_ANR:Ljava/lang/String; = "anr"

.field private static final LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_OPEN_SESSIONS:I = 0x8

.field private static final NATIVE_REPORTS_DIRECTORY:Ljava/lang/String; = "native-reports"

.field private static final NORMAL_EVENT_SUFFIX:Ljava/lang/String; = ""

.field private static final OPEN_SESSIONS_DIRECTORY_NAME:Ljava/lang/String; = "sessions"

.field private static final PRIORITY_EVENT_SUFFIX:Ljava/lang/String; = "_"

.field private static final PRIORITY_REPORTS_DIRECTORY:Ljava/lang/String; = "priority-reports"

.field private static final REPORTS_DIRECTORY:Ljava/lang/String; = "reports"

.field private static final REPORT_FILE_NAME:Ljava/lang/String; = "report"

.field private static final SESSION_START_TIMESTAMP_FILE_NAME:Ljava/lang/String; = "start-time"

.field private static final TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

.field private static final USER_FILE_NAME:Ljava/lang/String; = "user"

.field private static final UTF_8:Ljava/nio/charset/Charset;

.field private static final WORKING_DIRECTORY_NAME:Ljava/lang/String; = "report-persistence"


# instance fields
.field private final eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final nativeReportsDirectory:Ljava/io/File;

.field private final openSessionsDirectory:Ljava/io/File;

.field private final priorityReportsDirectory:Ljava/io/File;

.field private final reportsDirectory:Ljava/io/File;

.field private final settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 51
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v0, 0xf

    .line 71
    sput v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_NAME_LENGTH:I

    .line 76
    new-instance v0, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-direct {v0}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;-><init>()V

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 78
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$cus4xBFpk-zHLsoBdoVy1SdmpDs;->INSTANCE:Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$cus4xBFpk-zHLsoBdoVy1SdmpDs;

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    .line 80
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$yrLDYcvA2rHplfuqiXhfFmNn2UQ;->INSTANCE:Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$yrLDYcvA2rHplfuqiXhfFmNn2UQ;

    sput-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    new-instance v0, Ljava/io/File;

    const-string v1, "report-persistence"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    new-instance p1, Ljava/io/File;

    const-string v1, "sessions"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 101
    new-instance p1, Ljava/io/File;

    const-string v1, "priority-reports"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 102
    new-instance p1, Ljava/io/File;

    const-string v1, "reports"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 103
    new-instance p1, Ljava/io/File;

    const-string v1, "native-reports"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 104
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    return-void
.end method

.method private capAndGetOpenSessions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$Wtl6nS_DwzMYjZWqPOq5CDR-xlc;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$Wtl6nS_DwzMYjZWqPOq5CDR-xlc;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    .line 275
    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object p1

    .line 276
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 277
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x8

    if-gt v0, v1, :cond_0

    return-object p1

    .line 283
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 285
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 287
    invoke-interface {p1, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private static capFilesCount(Ljava/util/List;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;I)I"
        }
    .end annotation

    .line 544
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 545
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    if-gt v0, p1, :cond_0

    return v0

    .line 549
    :cond_0
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private capFinalizedReports()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 292
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v0

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCompleteSessionsCount:I

    .line 293
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    move-result-object v1

    .line 295
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v0, :cond_0

    return-void

    .line 301
    :cond_0
    invoke-interface {v1, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 302
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 303
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static varargs combineReportFiles([Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 428
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, p0, v3

    .line 429
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 431
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 432
    array-length v1, p0

    :goto_1
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 433
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static convertTimestampFromSecondsToMs(J)J
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static generateEventFilename(IZ)Ljava/lang/String;
    .locals 3

    .line 448
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%010d"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_0

    const-string p1, "_"

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 450
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 474
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private getAllFinalizedReportFiles()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/util/List;

    new-array v0, v0, [Ljava/util/List;

    .line 313
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 315
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 316
    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v0, v4

    .line 314
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 317
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    aput-object v0, v1, v4

    .line 313
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->sortAndCombineReportFiles([Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 463
    sget v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_NAME_LENGTH:I

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getFilesInDirectory(Ljava/io/File;Ljava/io/FileFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FileFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 490
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 491
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 493
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 494
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private static getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            ")",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 480
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    .line 481
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    if-nez p1, :cond_1

    .line 483
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 484
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 322
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private static isHighPriorityEventFile(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "event"

    .line 439
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "_"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNormalPriorityEventFile(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "event"

    .line 443
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "_"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$01Lorz603_-5ziNugbvmzIHT6dw(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->oldestEventFileFirst(Ljava/io/File;Ljava/io/File;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$5ewmHYO883ri5BmwN_Gn2GLWEFU(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->isNormalPriorityEventFile(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$capAndGetOpenSessions$3(Ljava/lang/String;Ljava/io/File;)Z
    .locals 1

    .line 273
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic lambda$deleteFinalizedReport$2(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 214
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$0(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$static$1(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p0, "event"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static makeDirectory(Ljava/io/File;)Z
    .locals 1

    .line 506
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static oldestEventFileFirst(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 467
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 468
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getEventNameWithoutPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 469
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static prepareDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->makeDirectory(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 500
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readTextFile(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 526
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 527
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 529
    :goto_0
    :try_start_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result p0

    if-lez p0, :cond_0

    const/4 v3, 0x0

    .line 530
    invoke-virtual {v1, v0, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 532
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    sget-object v1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 527
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw p0
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 559
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 560
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 561
    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private static varargs sortAndCombineReportFiles([Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 417
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 418
    sget-object v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static synthesizeNativeReportFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;Ljava/lang/String;)V
    .locals 2

    .line 376
    :try_start_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 377
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withNdkPayload(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    .line 379
    new-instance v0, Ljava/io/File;

    .line 380
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    invoke-direct {v0, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 381
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p1

    .line 379
    invoke-static {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 383
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not synthesize final native report file for "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private synthesizeReport(Ljava/io/File;J)V
    .locals 9

    .line 326
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->EVENT_FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-static {p1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    .line 329
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has no events."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    return-void

    .line 334
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 335
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 338
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 340
    :try_start_0
    sget-object v4, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-static {v3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->eventFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object v4

    .line 341
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v5, :cond_2

    .line 342
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->isHighPriorityEventFile(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    :cond_2
    const/4 v3, 0x1

    const/4 v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    .line 344
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not add event to report for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3, v4}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 349
    :cond_3
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not parse event files for session "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    .line 355
    new-instance v1, Ljava/io/File;

    const-string v3, "user"

    invoke-direct {v1, p1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 356
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 358
    :try_start_1
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 360
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not read user ID file in "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    move-object v6, v0

    .line 364
    new-instance v0, Ljava/io/File;

    const-string v1, "report"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v5, :cond_6

    .line 365
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    :goto_2
    move-object v1, p1

    move-wide v3, p2

    .line 366
    invoke-static/range {v0 .. v6}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeReportFile(Ljava/io/File;Ljava/io/File;Ljava/util/List;JZLjava/lang/String;)V

    return-void
.end method

.method private static synthesizeReportFile(Ljava/io/File;Ljava/io/File;Ljava/util/List;JZLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;",
            ">;JZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 395
    :try_start_0
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 397
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v0

    .line 398
    invoke-virtual {v0, p3, p4, p5, p6}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withSessionEndFields(JZLjava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p3

    .line 399
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    move-result-object p2

    invoke-virtual {p3, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->withEvents(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p2

    .line 400
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    move-result-object p3

    if-nez p3, :cond_0

    return-void

    .line 407
    :cond_0
    new-instance p4, Ljava/io/File;

    .line 408
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifier()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p4, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sget-object p1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    .line 409
    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p1

    .line 407
    invoke-static {p4, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 411
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Could not synthesize final report file for "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private static trimEvents(Ljava/io/File;I)I
    .locals 1

    .line 454
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$5ewmHYO883ri5BmwN_Gn2GLWEFU;->INSTANCE:Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$5ewmHYO883ri5BmwN_Gn2GLWEFU;

    .line 455
    invoke-static {p0, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object p0

    .line 457
    sget-object v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$01Lorz603_-5ziNugbvmzIHT6dw;->INSTANCE:Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$01Lorz603_-5ziNugbvmzIHT6dw;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 458
    invoke-static {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capFilesCount(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method private static writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 510
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, p0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 511
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 510
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method

.method private static writeTextFile(Ljava/io/File;Ljava/lang/String;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 517
    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 518
    :try_start_0
    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 519
    invoke-static {p2, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->convertTimestampFromSecondsToMs(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V

    return-void

    :catchall_0
    move-exception p0

    .line 517
    :try_start_1
    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw p0
.end method


# virtual methods
.method public deleteAllReports()V
    .locals 2

    .line 208
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 209
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteFinalizedReport(Ljava/lang/String;)V
    .locals 3

    .line 214
    new-instance v0, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$HQEC8vhswXMGNCPEJGBQkG37DZM;

    invoke-direct {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/-$$Lambda$CrashlyticsReportPersistence$HQEC8vhswXMGNCPEJGBQkG37DZM;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/util/List;

    .line 215
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->priorityReportsDirectory:Ljava/io/File;

    .line 217
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    .line 218
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->reportsDirectory:Ljava/io/File;

    .line 219
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getFilesInDirectory(Ljava/io/File;Ljava/io/FilenameFilter;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 216
    invoke-static {p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->combineReportFiles([Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 220
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 221
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public finalizeReports(Ljava/lang/String;J)V
    .locals 4

    .line 233
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capAndGetOpenSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 235
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finalizing report for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 236
    invoke-direct {p0, v0, p2, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeReport(Ljava/io/File;J)V

    .line 237
    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->recursiveDelete(Ljava/io/File;)V

    goto :goto_0

    .line 240
    :cond_0
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->capFinalizedReports()V

    return-void
.end method

.method public finalizeSessionWithNativeEvent(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)V
    .locals 3

    .line 245
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v2, "report"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->nativeReportsDirectory:Ljava/io/File;

    invoke-static {v0, v1, p2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->synthesizeNativeReportFile(Ljava/io/File;Ljava/io/File;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;Ljava/lang/String;)V

    return-void
.end method

.method public getStartTimestampMillis(Ljava/lang/String;)J
    .locals 2

    .line 197
    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 198
    new-instance v0, Ljava/io/File;

    const-string v1, "start-time"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasFinalizedReports()Z
    .locals 1

    .line 204
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public listSortedOpenSessionIds()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->openSessionsDirectory:Ljava/io/File;

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFilesInDirectory(Ljava/io/File;)Ljava/util/List;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->LATEST_SESSION_ID_FIRST_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 184
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public loadFinalizedReports()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;",
            ">;"
        }
    .end annotation

    .line 255
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 257
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 258
    invoke-direct {p0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getAllFinalizedReportFiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 260
    :try_start_0
    sget-object v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->readTextFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportFromJson(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object v3

    .line 261
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;->create(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 263
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load report file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; deleting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 264
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V
    .locals 4

    .line 156
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->settingsDataProvider:Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;

    .line 157
    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;->getSettings()Lcom/google/firebase/crashlytics/internal/settings/model/Settings;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/firebase/crashlytics/internal/settings/model/Settings;->getSessionData()Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;

    move-result-object v0

    iget v0, v0, Lcom/google/firebase/crashlytics/internal/settings/model/SessionSettingsData;->maxCustomExceptionEvents:I

    .line 158
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 159
    sget-object v2, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-virtual {v2, p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->eventToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;)Ljava/lang/String;

    move-result-object p1

    .line 160
    iget-object v2, p0, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->eventCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-static {v2, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->generateEventFilename(IZ)Ljava/lang/String;

    move-result-object p3

    .line 162
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not persist event for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 166
    :goto_0
    invoke-static {v1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->trimEvents(Ljava/io/File;I)I

    return-void
.end method

.method public persistReport(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V
    .locals 5

    .line 108
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;->getSession()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;

    move-result-object v0

    if-nez v0, :cond_0

    .line 110
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v0, "Could not get session for report"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    return-void

    .line 114
    :cond_0
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 116
    :try_start_0
    invoke-direct {p0, v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    .line 117
    sget-object v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->TRANSFORM:Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;

    invoke-virtual {v3, p1}, Lcom/google/firebase/crashlytics/internal/model/serialization/CrashlyticsReportJsonTransform;->reportToJson(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v3, Ljava/io/File;

    const-string v4, "report"

    invoke-direct {v3, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V

    .line 119
    new-instance p1, Ljava/io/File;

    const-string v3, "start-time"

    invoke-direct {p1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string v2, ""

    .line 122
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session;->getStartedAt()J

    move-result-wide v3

    .line 119
    invoke-static {p1, v2, v3, v4}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 124
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not persist report for session "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public persistUserIdForSession(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 170
    invoke-direct {p0, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getSessionDirectoryById(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 172
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "user"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->writeTextFile(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 175
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not persist user ID for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
