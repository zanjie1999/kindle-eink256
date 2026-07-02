.class public final enum Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
.super Ljava/lang/Enum;
.source "IKRXResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/krx/download/IKRXResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DownloadStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field public static final enum COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field public static final enum FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field public static final enum QUEUED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v1, 0x0

    const-string v2, "QUEUED"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->QUEUED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 27
    new-instance v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v2, 0x1

    const-string v3, "DOWNLOADING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 31
    new-instance v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v3, 0x2

    const-string v4, "FAILED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 35
    new-instance v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v4, 0x3

    const-string v5, "COMPLETED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 39
    new-instance v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->UNKNOWN:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    .line 18
    sget-object v7, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->QUEUED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->DOWNLOADING:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->FAILED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->COMPLETED:Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->$VALUES:[Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 18
    const-class v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;
    .locals 1

    .line 18
    sget-object v0, Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->$VALUES:[Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    invoke-virtual {v0}, [Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/krx/download/IKRXResponseHandler$DownloadStatus;

    return-object v0
.end method
