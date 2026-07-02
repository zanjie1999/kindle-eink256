.class public Lcom/amazon/kindle/DbDownloadResumer;
.super Ljava/lang/Object;
.source "DbDownloadResumer.java"

# interfaces
.implements Lcom/amazon/kindle/IDownloadResumer;


# static fields
.field private static final DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final helper:Lcom/amazon/kindle/LibraryServiceHelper;

.field protected libController:Lcom/amazon/kcp/library/ILibraryController;

.field protected progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 24
    const-class v0, Lcom/amazon/kindle/DbDownloadResumer;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/DbDownloadResumer;->TAG:Ljava/lang/String;

    .line 25
    new-instance v0, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;

    const-string v1, "DbDownloadResumer"

    invoke-direct {v0, v1}, Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource$APP_STARTUP;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/DbDownloadResumer;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/sync/SynchronizationManager;Lcom/amazon/kcp/library/ILibraryController;Lcom/amazon/kindle/content/ILibraryService;Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance p1, Lcom/amazon/kindle/LibraryServiceHelper;

    invoke-direct {p1, p3}, Lcom/amazon/kindle/LibraryServiceHelper;-><init>(Lcom/amazon/kindle/content/ILibraryService;)V

    iput-object p1, p0, Lcom/amazon/kindle/DbDownloadResumer;->helper:Lcom/amazon/kindle/LibraryServiceHelper;

    .line 48
    iput-object p2, p0, Lcom/amazon/kindle/DbDownloadResumer;->libController:Lcom/amazon/kcp/library/ILibraryController;

    .line 50
    iput-object p4, p0, Lcom/amazon/kindle/DbDownloadResumer;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/amazon/kindle/DbDownloadResumer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static clearOldRecords(Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;J)V
    .locals 7

    .line 164
    sget-object v0, Lcom/amazon/kindle/progress/ProgressTaskType;->DOWNLOAD:Lcom/amazon/kindle/progress/ProgressTaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-wide/32 v0, 0x6ddd00

    sub-long v3, p1, v0

    add-long v5, p1, v0

    move-object v1, p0

    invoke-interface/range {v1 .. v6}, Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;->deleteProgressTrackers(Ljava/lang/String;JJ)V

    return-void
.end method

.method private static getBackoffDelay(I)J
    .locals 2

    const/16 v0, 0x2710

    shl-int p0, v0, p0

    int-to-long v0, p0

    return-wide v0
.end method

.method static waitedLongEnough(Ljava/lang/String;Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;)Z
    .locals 13

    .line 100
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 101
    invoke-static {p1, v6, v7}, Lcom/amazon/kindle/DbDownloadResumer;->clearOldRecords(Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;J)V

    .line 103
    sget-object v0, Lcom/amazon/kindle/progress/ProgressTaskType;->DOWNLOAD:Lcom/amazon/kindle/progress/ProgressTaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;->getProgressTrackerByKeyAndTaskType(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/kindle/progress/IProgressTracker;

    move-result-object v0

    const/4 v10, 0x1

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/amazon/kindle/DbDownloadResumer;->TAG:Ljava/lang/String;

    const-string v1, "No previous progress found, adding it to DAO and allowing auto download attempt."

    invoke-static {v0, v1}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    new-instance v11, Lcom/amazon/kindle/progress/ProgressTracker;

    sget-object v0, Lcom/amazon/kindle/progress/ProgressTaskType;->DOWNLOAD:Lcom/amazon/kindle/progress/ProgressTaskType;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v11

    move-object v1, p0

    move-wide v4, v6

    invoke-direct/range {v0 .. v9}, Lcom/amazon/kindle/progress/ProgressTracker;-><init>(Ljava/lang/String;Ljava/lang/String;IJJII)V

    .line 111
    invoke-interface {p1, v11}, Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;->insert(Lcom/amazon/kindle/progress/IProgressTracker;)J

    return v10

    .line 118
    :cond_0
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/kindle/DbDownloadResumer;->getBackoffDelay(I)J

    move-result-wide v1

    const-wide/32 v3, 0x1b7740

    .line 117
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 120
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskCreated()J

    move-result-wide v8

    sub-long v8, v6, v8

    cmp-long p0, v8, v1

    if-lez p0, :cond_2

    .line 124
    sget-object p0, Lcom/amazon/kindle/DbDownloadResumer;->TAG:Ljava/lang/String;

    const-string v3, "Waited long enough, allowing auto download attempt"

    invoke-static {p0, v3}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    sub-long/2addr v8, v1

    .line 129
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    if-lez p0, :cond_1

    .line 130
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    sub-int/2addr p0, v10

    invoke-static {p0}, Lcom/amazon/kindle/DbDownloadResumer;->getBackoffDelay(I)J

    move-result-wide v1

    cmp-long p0, v8, v1

    if-lez p0, :cond_1

    .line 132
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    sub-int/2addr p0, v10

    invoke-interface {v0, p0}, Lcom/amazon/kindle/progress/IProgressTracker;->setRetryCount(I)V

    .line 133
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    invoke-static {p0}, Lcom/amazon/kindle/DbDownloadResumer;->getBackoffDelay(I)J

    .line 136
    :cond_1
    invoke-interface {v0, v6, v7}, Lcom/amazon/kindle/progress/IProgressTracker;->setTaskCreated(J)V

    .line 137
    invoke-interface {v0, v6, v7}, Lcom/amazon/kindle/progress/IProgressTracker;->setTaskLastUpdated(J)V

    .line 138
    invoke-interface {p1, v0}, Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;->insert(Lcom/amazon/kindle/progress/IProgressTracker;)J

    return v10

    .line 142
    :cond_2
    sget-object p0, Lcom/amazon/kindle/DbDownloadResumer;->TAG:Ljava/lang/String;

    const-string v5, "Not enough time elapsed, stopping auto download attempt"

    invoke-static {p0, v5}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskCreated()J

    move-result-wide v8

    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getTaskLastUpdated()J

    move-result-wide v11

    cmp-long p0, v8, v11

    if-nez p0, :cond_3

    cmp-long p0, v1, v3

    if-eqz p0, :cond_3

    .line 149
    invoke-interface {v0}, Lcom/amazon/kindle/progress/IProgressTracker;->getRetryCount()I

    move-result p0

    add-int/2addr p0, v10

    invoke-interface {v0, p0}, Lcom/amazon/kindle/progress/IProgressTracker;->setRetryCount(I)V

    const-wide/16 v1, 0x1

    add-long/2addr v6, v1

    .line 153
    invoke-interface {v0, v6, v7}, Lcom/amazon/kindle/progress/IProgressTracker;->setTaskLastUpdated(J)V

    .line 154
    invoke-interface {p1, v0}, Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;->insert(Lcom/amazon/kindle/progress/IProgressTracker;)J

    :cond_3
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected attemptDownload(Ljava/lang/String;)V
    .locals 2

    .line 79
    iget-object v0, p0, Lcom/amazon/kindle/DbDownloadResumer;->progressTrackerDAO:Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;

    invoke-static {p1, v0}, Lcom/amazon/kindle/DbDownloadResumer;->waitedLongEnough(Ljava/lang/String;Lcom/amazon/kindle/progress/dao/IProgressTrackerDAO;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/DbDownloadResumer;->libController:Lcom/amazon/kcp/library/ILibraryController;

    sget-object v1, Lcom/amazon/kindle/DbDownloadResumer;->DOWNLOAD_TRIGGER:Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;

    invoke-interface {v0, p1, v1}, Lcom/amazon/kcp/library/ILibraryController;->downloadBook(Ljava/lang/String;Lcom/amazon/kindle/krx/download/KRXDownloadTriggerSource;)Z

    :cond_0
    return-void
.end method

.method public resumeDownloads()V
    .locals 2

    .line 58
    invoke-static {}, Lcom/amazon/foundation/internal/ThreadPoolManager;->getInstance()Lcom/amazon/foundation/internal/IThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/amazon/kindle/DbDownloadResumer$1;

    invoke-direct {v1, p0}, Lcom/amazon/kindle/DbDownloadResumer$1;-><init>(Lcom/amazon/kindle/DbDownloadResumer;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method
