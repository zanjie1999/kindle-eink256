.class public final enum Lcom/audible/mobile/downloader/DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/audible/mobile/downloader/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum CANCELLED:Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum PAUSED:Lcom/audible/mobile/downloader/DownloadStatus;

.field public static final enum QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;


# instance fields
.field private final live:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 18
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "QUEUED"

    invoke-direct {v0, v3, v2, v1}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    .line 30
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const-string v3, "PAUSED"

    invoke-direct {v0, v3, v1, v1}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->PAUSED:Lcom/audible/mobile/downloader/DownloadStatus;

    .line 35
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v3, 0x2

    const-string v4, "IN_PROGRESS"

    invoke-direct {v0, v4, v3, v1}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    .line 40
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v4, 0x3

    const-string v5, "FINISHED"

    invoke-direct {v0, v5, v4, v2}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    .line 46
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v5, 0x4

    const-string v6, "ERROR"

    invoke-direct {v0, v6, v5, v2}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

    .line 51
    new-instance v0, Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v6, 0x5

    const-string v7, "CANCELLED"

    invoke-direct {v0, v7, v6, v2}, Lcom/audible/mobile/downloader/DownloadStatus;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->CANCELLED:Lcom/audible/mobile/downloader/DownloadStatus;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/audible/mobile/downloader/DownloadStatus;

    .line 6
    sget-object v8, Lcom/audible/mobile/downloader/DownloadStatus;->QUEUED:Lcom/audible/mobile/downloader/DownloadStatus;

    aput-object v8, v7, v2

    sget-object v2, Lcom/audible/mobile/downloader/DownloadStatus;->PAUSED:Lcom/audible/mobile/downloader/DownloadStatus;

    aput-object v2, v7, v1

    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->IN_PROGRESS:Lcom/audible/mobile/downloader/DownloadStatus;

    aput-object v1, v7, v3

    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->FINISHED:Lcom/audible/mobile/downloader/DownloadStatus;

    aput-object v1, v7, v4

    sget-object v1, Lcom/audible/mobile/downloader/DownloadStatus;->ERROR:Lcom/audible/mobile/downloader/DownloadStatus;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/audible/mobile/downloader/DownloadStatus;->$VALUES:[Lcom/audible/mobile/downloader/DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 60
    iput-boolean p3, p0, Lcom/audible/mobile/downloader/DownloadStatus;->live:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/audible/mobile/downloader/DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/audible/mobile/downloader/DownloadStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/audible/mobile/downloader/DownloadStatus;->$VALUES:[Lcom/audible/mobile/downloader/DownloadStatus;

    invoke-virtual {v0}, [Lcom/audible/mobile/downloader/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/audible/mobile/downloader/DownloadStatus;

    return-object v0
.end method


# virtual methods
.method public isLive()Z
    .locals 1

    .line 71
    iget-boolean v0, p0, Lcom/audible/mobile/downloader/DownloadStatus;->live:Z

    return v0
.end method
