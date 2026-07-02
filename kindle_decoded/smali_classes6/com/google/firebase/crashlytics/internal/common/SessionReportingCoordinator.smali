.class public Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
.super Ljava/lang/Object;
.source "SessionReportingCoordinator.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field private static final EVENT_THREAD_IMPORTANCE:I = 0x4

.field private static final EVENT_TYPE_CRASH:Ljava/lang/String; = "crash"

.field private static final EVENT_TYPE_LOGGED:Ljava/lang/String; = "error"

.field private static final MAX_CHAINED_EXCEPTION_DEPTH:I = 0x8


# instance fields
.field private final dataCapture:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

.field private final logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

.field private final reportMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

.field private final reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

.field private final reportsSender:Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;


# direct methods
.method constructor <init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 0

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

    .line 93
    iput-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    .line 94
    iput-object p3, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportsSender:Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;

    .line 95
    iput-object p4, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    .line 96
    iput-object p5, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    return-void
.end method

.method private addLogsAndCustomKeysToEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->logFileManager:Lcom/google/firebase/crashlytics/internal/log/LogFileManager;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-direct {p0, p1, v0, v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->addLogsAndCustomKeysToEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object p1

    return-object p1
.end method

.method private addLogsAndCustomKeysToEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;
    .locals 2

    .line 232
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;

    move-result-object v0

    .line 233
    invoke-virtual {p2}, Lcom/google/firebase/crashlytics/internal/log/LogFileManager;->getLogString()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 237
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder;->setContent(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log;

    move-result-object p2

    .line 236
    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;->setLog(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Log;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;

    goto :goto_0

    .line 239
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    const-string v1, "No log data to include with this event."

    invoke-virtual {p2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    .line 246
    :goto_0
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getCustomKeys()Ljava/util/Map;

    move-result-object p2

    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->getSortedCustomAttributes(Ljava/util/Map;)Ljava/util/List;

    move-result-object p2

    .line 248
    invoke-virtual {p3}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getInternalKeys()Ljava/util/Map;

    move-result-object p3

    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->getSortedCustomAttributes(Ljava/util/Map;)Ljava/util/List;

    move-result-object p3

    .line 250
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 252
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;->getApp()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application;->toBuilder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;

    move-result-object p1

    .line 253
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;->setCustomAttributes(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;

    .line 254
    invoke-static {p3}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;->setInternalKeys(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;

    .line 255
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application;

    move-result-object p1

    .line 251
    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;->setApp(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Application;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;

    .line 258
    :cond_1
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object p1

    return-object p1
.end method

.method private static convertApplicationExitInfo(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;
    .locals 5

    const/4 v0, 0x0

    .line 321
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTraceInputStream()Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 323
    invoke-static {v1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 326
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not get input trace in application exit info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 327
    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;)V

    .line 334
    :cond_0
    :goto_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    move-result-object v1

    .line 335
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getImportance()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setImportance(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 336
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getProcessName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setProcessName(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 337
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setReasonCode(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 338
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setTimestamp(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 339
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setPid(I)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 340
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getPss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setPss(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 341
    invoke-virtual {p0}, Landroid/app/ApplicationExitInfo;->getRss()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setRss(J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 342
    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->setTraceFile(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;

    .line 343
    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

    move-result-object p0

    return-object p0
.end method

.method public static convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 349
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 352
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 353
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 355
    :cond_0
    sget-object p0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/persistence/FileStore;Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;
    .locals 7

    .line 69
    new-instance v0, Ljava/io/File;

    invoke-interface {p2}, Lcom/google/firebase/crashlytics/internal/persistence/FileStore;->getFilesDirPath()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

    invoke-direct {v2, p0, p1, p3, p6}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;-><init>(Landroid/content/Context;Lcom/google/firebase/crashlytics/internal/common/IdManager;Lcom/google/firebase/crashlytics/internal/common/AppData;Lcom/google/firebase/crashlytics/internal/stacktrace/StackTraceTrimmingStrategy;)V

    .line 72
    new-instance v3, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-direct {v3, v0, p7}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;-><init>(Ljava/io/File;Lcom/google/firebase/crashlytics/internal/settings/SettingsDataProvider;)V

    .line 75
    invoke-static {p0}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->create(Landroid/content/Context;)Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;

    move-result-object v4

    .line 76
    new-instance p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;

    move-object v1, p0

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;-><init>(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V

    return-object p0
.end method

.method private findRelevantApplicationExitInfo(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;)",
            "Landroid/app/ApplicationExitInfo;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->getStartTimestampMillis(Ljava/lang/String;)J

    move-result-wide v0

    .line 366
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ApplicationExitInfo;

    .line 368
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getTimestamp()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    return-object v2

    .line 374
    :cond_0
    invoke-virtual {p2}, Landroid/app/ApplicationExitInfo;->getReason()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    return-object p2

    :cond_2
    return-object v2
.end method

.method private static getSortedCustomAttributes(Ljava/util/Map;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;",
            ">;"
        }
    .end annotation

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 302
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 303
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 305
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;->setKey(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;->setValue(Ljava/lang/String;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;

    invoke-virtual {v2}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;

    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 309
    :cond_0
    sget-object p0, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;->INSTANCE:Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$TX0lZug2FS1EXHwsWNz9vWcgWJw;

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static synthetic lambda$2TWemv_1VA0ASKWrGsWON-xeX8o(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;Lcom/google/android/gms/tasks/Task;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->onReportSendComplete(Lcom/google/android/gms/tasks/Task;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$getSortedCustomAttributes$0(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;)I
    .locals 0

    .line 311
    invoke-virtual {p0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$CustomAttribute;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private onReportSendComplete(Lcom/google/android/gms/tasks/Task;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;",
            ">;)Z"
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 287
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    .line 288
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Crashlytics report successfully enqueued to DataTransport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;->getSessionId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {p1}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->deleteFinalizedReport(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    .line 293
    :cond_0
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    .line 294
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getException()Ljava/lang/Exception;

    move-result-object p1

    const-string v1, "Crashlytics report could not be enqueued to DataTransport"

    invoke-virtual {v0, v1, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method private persistEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 11

    move-object v0, p0

    const-string v1, "crash"

    move-object v5, p4

    .line 269
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 271
    iget-object v2, v0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

    const/4 v8, 0x4

    const/16 v9, 0x8

    move-object v3, p1

    move-object v4, p2

    move-wide/from16 v6, p5

    move/from16 v10, p7

    .line 272
    invoke-virtual/range {v2 .. v10}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;->captureEventData(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;JIIZ)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object v2

    .line 281
    iget-object v3, v0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    .line 282
    invoke-direct {p0, v2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->addLogsAndCustomKeysToEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object v2

    move-object v4, p3

    .line 281
    invoke-virtual {v3, v2, p3, v1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public finalizeSessionWithNativeEvent(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;",
            ">;)V"
        }
    .end annotation

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 163
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;

    .line 164
    invoke-interface {v1}, Lcom/google/firebase/crashlytics/internal/common/NativeSessionFile;->asFilePayload()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 170
    :cond_1
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    .line 171
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;->builder()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder;

    move-result-object v1

    invoke-static {v0}, Lcom/google/firebase/crashlytics/internal/model/ImmutableList;->from(Ljava/util/List;)Lcom/google/firebase/crashlytics/internal/model/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder;->setFiles(Lcom/google/firebase/crashlytics/internal/model/ImmutableList;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder;

    invoke-virtual {v1}, Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload$Builder;->build()Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;

    move-result-object v0

    .line 170
    invoke-virtual {p2, p1, v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->finalizeSessionWithNativeEvent(Ljava/lang/String;Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$FilesPayload;)V

    return-void
.end method

.method public finalizeSessions(JLjava/lang/String;)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v0, p3, p1, p2}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->finalizeReports(Ljava/lang/String;J)V

    return-void
.end method

.method public hasReportsToSend()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->hasFinalizedReports()Z

    move-result v0

    return v0
.end method

.method public listSortedOpenSessionIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->listSortedOpenSessionIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBeginSession(Ljava/lang/String;J)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

    .line 102
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;->captureReportData(Ljava/lang/String;J)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;

    move-result-object p1

    .line 104
    iget-object p2, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->persistReport(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport;)V

    return-void
.end method

.method public persistFatalEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 124
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    const-string v6, "crash"

    const/4 v9, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 125
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public persistNonFatalEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;J)V
    .locals 10

    .line 130
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting non-fatal event for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    const-string v6, "error"

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v7, p4

    .line 131
    invoke-direct/range {v2 .. v9}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->persistEvent(Ljava/lang/Throwable;Ljava/lang/Thread;Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method public persistRelevantAppExitInfoEvent(Ljava/lang/String;Ljava/util/List;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/app/ApplicationExitInfo;",
            ">;",
            "Lcom/google/firebase/crashlytics/internal/log/LogFileManager;",
            "Lcom/google/firebase/crashlytics/internal/common/UserMetadata;",
            ")V"
        }
    .end annotation

    .line 142
    invoke-direct {p0, p1, p2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->findRelevantApplicationExitInfo(Ljava/lang/String;Ljava/util/List;)Landroid/app/ApplicationExitInfo;

    move-result-object p2

    if-nez p2, :cond_0

    .line 145
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "No relevant ApplicationExitInfo occurred during session: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    return-void

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->dataCapture:Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;

    .line 150
    invoke-static {p2}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->convertApplicationExitInfo(Landroid/app/ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportDataCapture;->captureAnrEventData(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$ApplicationExitInfo;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object p2

    .line 152
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Persisting anr for session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/internal/Logger;->d(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    .line 154
    invoke-direct {p0, p2, p3, p4}, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->addLogsAndCustomKeysToEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Lcom/google/firebase/crashlytics/internal/log/LogFileManager;Lcom/google/firebase/crashlytics/internal/common/UserMetadata;)Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;

    move-result-object p2

    const/4 p3, 0x1

    .line 153
    invoke-virtual {v0, p2, p1, p3}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->persistEvent(Lcom/google/firebase/crashlytics/internal/model/CrashlyticsReport$Session$Event;Ljava/lang/String;Z)V

    return-void
.end method

.method public persistUserId(Ljava/lang/String;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportMetadata:Lcom/google/firebase/crashlytics/internal/common/UserMetadata;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/common/UserMetadata;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 177
    invoke-static {}, Lcom/google/firebase/crashlytics/internal/Logger;->getLogger()Lcom/google/firebase/crashlytics/internal/Logger;

    move-result-object p1

    const-string v0, "Could not persist user ID; no user ID available"

    invoke-virtual {p1, v0}, Lcom/google/firebase/crashlytics/internal/Logger;->v(Ljava/lang/String;)V

    return-void

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v1, v0, p1}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->persistUserIdForSession(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeAllReports()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->deleteAllReports()V

    return-void
.end method

.method public sendReports(Ljava/util/concurrent/Executor;)Lcom/google/android/gms/tasks/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportPersistence:Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;

    .line 212
    invoke-virtual {v0}, Lcom/google/firebase/crashlytics/internal/persistence/CrashlyticsReportPersistence;->loadFinalizedReports()Ljava/util/List;

    move-result-object v0

    .line 213
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 214
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;

    .line 215
    iget-object v3, p0, Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;->reportsSender:Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;

    .line 217
    invoke-virtual {v3, v2}, Lcom/google/firebase/crashlytics/internal/send/DataTransportCrashlyticsReportSender;->sendReport(Lcom/google/firebase/crashlytics/internal/common/CrashlyticsReportWithSessionId;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    new-instance v3, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$2TWemv_1VA0ASKWrGsWON-xeX8o;

    invoke-direct {v3, p0}, Lcom/google/firebase/crashlytics/internal/common/-$$Lambda$SessionReportingCoordinator$2TWemv_1VA0ASKWrGsWON-xeX8o;-><init>(Lcom/google/firebase/crashlytics/internal/common/SessionReportingCoordinator;)V

    .line 218
    invoke-virtual {v2, p1, v3}, Lcom/google/android/gms/tasks/Task;->continueWith(Ljava/util/concurrent/Executor;Lcom/google/android/gms/tasks/Continuation;)Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    .line 215
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 220
    :cond_0
    invoke-static {v1}, Lcom/google/android/gms/tasks/Tasks;->whenAll(Ljava/util/Collection;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
