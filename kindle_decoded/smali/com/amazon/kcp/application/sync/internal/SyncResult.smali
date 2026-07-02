.class public Lcom/amazon/kcp/application/sync/internal/SyncResult;
.super Ljava/lang/Object;
.source "SyncResult.java"


# static fields
.field public static final CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field public static final ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field public static final IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field public static final NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

.field public static final SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v1, "NOT_STARTED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->NOT_STARTED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 14
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v1, "IN_PROGRESS"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->IN_PROGRESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 17
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->SUCCESS:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 20
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v1, "ERROR"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->ERROR:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    .line 23
    new-instance v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1}, Lcom/amazon/kcp/application/sync/internal/SyncResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->CANCELED:Lcom/amazon/kcp/application/sync/internal/SyncResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/amazon/kcp/application/sync/internal/SyncResult;->name:Ljava/lang/String;

    return-object v0
.end method
