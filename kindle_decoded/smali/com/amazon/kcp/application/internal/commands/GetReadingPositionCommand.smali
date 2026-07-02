.class public Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;
.super Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;
.source "GetReadingPositionCommand.java"


# instance fields
.field private annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

.field private bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

.field private errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

.field private lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

.field private statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/annotation/IAnnotationsManager;Lcom/amazon/kindle/model/content/ILocalBookInfo;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/application/internal/commands/AbsSyncCommand;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    .line 30
    check-cast p2, Lcom/amazon/kindle/model/content/ILocalBookItem;

    iput-object p2, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    .line 31
    iput-object p3, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    .line 32
    iput-object p4, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object p0
.end method

.method static synthetic access$002(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)Lcom/amazon/kindle/krx/download/KRXRequestErrorState;
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    return-object p1
.end method

.method static synthetic access$100(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/krx/sync/LPRSyncType;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/model/content/ILocalBookItem;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)Lcom/amazon/kindle/annotation/IAnnotationsManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    return-object p0
.end method


# virtual methods
.method public doExecute()V
    .locals 5

    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->annotationsManager:Lcom/amazon/kindle/annotation/IAnnotationsManager;

    iget-object v1, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->bookItem:Lcom/amazon/kindle/model/content/ILocalBookItem;

    iget-object v2, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->lprSyncType:Lcom/amazon/kindle/krx/sync/LPRSyncType;

    iget-object v3, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->statusTracker:Lcom/amazon/kindle/services/download/IStatusTracker;

    new-instance v4, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;

    invoke-direct {v4, p0}, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand$1;-><init>(Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/annotation/IAnnotationsManager;->downloadReadingPositionAsync(Lcom/amazon/kindle/model/content/ILocalBookItem;Lcom/amazon/kindle/krx/sync/LPRSyncType;Lcom/amazon/kindle/services/download/IStatusTracker;Lcom/amazon/foundation/internal/IObjectCallback;)V

    return-void
.end method

.method public hasError()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/kcp/application/internal/commands/GetReadingPositionCommand;->errorState:Lcom/amazon/kindle/krx/download/KRXRequestErrorState;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
