.class public Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "UploadJournalCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private final numAnnotations:J

.field private final statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

.field private final syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

.field private final timeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/kindle/annotation/IAnnotationsManager;ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/kcp/application/sync/internal/SyncType;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 35
    iput p2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->timeout:I

    .line 36
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    .line 37
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    .line 38
    invoke-interface {p1}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->getNumAnnotationsInCache()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->numAnnotations:J

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;Z)V
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/amazon/foundation/internal/CAsynchronousCallback;->setError(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)Lcom/amazon/kcp/application/sync/internal/SyncType;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->syncType:Lcom/amazon/kcp/application/sync/internal/SyncType;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)J
    .locals 2

    .line 18
    iget-wide v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->numAnnotations:J

    return-wide v0
.end method


# virtual methods
.method public doExecute()V
    .locals 4

    .line 43
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    iget v1, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->timeout:I

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    new-instance v3, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;

    invoke-direct {v3, p0}, Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/UploadJournalCommand;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->uploadJournalsAsync(ILcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method
