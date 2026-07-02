.class public final enum Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
.super Ljava/lang/Enum;
.source "ISyncFileDownloadController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/hushpuppy/controller/ISyncFileDownloadController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SyncFileDownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

.field public static final enum DOWNLOADING:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

.field public static final enum ERROR:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

.field public static final enum MAX_RETRY_COMPLETE:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

.field public static final enum SUCCESS:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

.field public static final enum TIME_OUT:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 18
    new-instance v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v1, 0x0

    const-string v2, "DOWNLOADING"

    invoke-direct {v0, v2, v1}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->DOWNLOADING:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    .line 22
    new-instance v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v2, 0x1

    const-string v3, "SUCCESS"

    invoke-direct {v0, v3, v2}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->SUCCESS:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    .line 26
    new-instance v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v3, 0x2

    const-string v4, "MAX_RETRY_COMPLETE"

    invoke-direct {v0, v4, v3}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->MAX_RETRY_COMPLETE:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    .line 30
    new-instance v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v4, 0x3

    const-string v5, "ERROR"

    invoke-direct {v0, v5, v4}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->ERROR:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    .line 34
    new-instance v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v5, 0x4

    const-string v6, "TIME_OUT"

    invoke-direct {v0, v6, v5}, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->TIME_OUT:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    .line 14
    sget-object v7, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->DOWNLOADING:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->SUCCESS:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->MAX_RETRY_COMPLETE:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->ERROR:Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->$VALUES:[Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    .locals 1

    .line 14
    const-class v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;
    .locals 1

    .line 14
    sget-object v0, Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->$VALUES:[Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    invoke-virtual {v0}, [Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/hushpuppy/controller/ISyncFileDownloadController$SyncFileDownloadStatus;

    return-object v0
.end method
