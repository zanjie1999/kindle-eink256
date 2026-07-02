.class public final enum Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
.super Ljava/lang/Enum;
.source "IDownloadRequestGroup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/services/download/IDownloadRequestGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GroupDownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum PAUSED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum PAUSED_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

.field public static final enum SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 45
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v1, 0x0

    const-string v2, "CANCEL"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 47
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v2, 0x1

    const-string v3, "QUEUED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 49
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v3, 0x2

    const-string v4, "DOWNLOADING"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 50
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADING_OPENABLE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 52
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v5, 0x4

    const-string v6, "SUCCEEDED_INCOMPLETE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 53
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v6, 0x5

    const-string v7, "SUCCEEDED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 55
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v7, 0x6

    const-string v8, "PAUSED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 56
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/4 v8, 0x7

    const-string v9, "PAUSED_OPENABLE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 58
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/16 v9, 0x8

    const-string v10, "ERROR"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 59
    new-instance v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/16 v10, 0x9

    const-string v11, "ERROR_OPENABLE"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    const/16 v11, 0xa

    new-array v11, v11, [Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    .line 44
    sget-object v12, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->CANCEL:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v12, v11, v1

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->QUEUED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v2

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v3

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v4

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED_INCOMPLETE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v5

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->SUCCEEDED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v6

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v7

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->PAUSED_OPENABLE:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v8

    sget-object v1, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->ERROR:Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    aput-object v1, v11, v9

    aput-object v0, v11, v10

    sput-object v11, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->$VALUES:[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    .locals 1

    .line 44
    const-class v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->$VALUES:[Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/services/download/IDownloadRequestGroup$GroupDownloadStatus;

    return-object v0
.end method
