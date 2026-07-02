.class public final enum Lcom/amazon/kcp/font/DownloadStatus;
.super Ljava/lang/Enum;
.source "DownloadStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/font/DownloadStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/font/DownloadStatus;

.field public static final enum DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

.field public static final enum DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

.field public static final enum DOWNLOAD_FAILED:Lcom/amazon/kcp/font/DownloadStatus;

.field public static final enum NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;


# instance fields
.field private stringId:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 10
    new-instance v0, Lcom/amazon/kcp/font/DownloadStatus;

    sget v1, Lcom/amazon/kindle/krl/R$string;->font_need_download:I

    const/4 v2, 0x0

    const-string v3, "NEED_DOWNLOAD"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/kcp/font/DownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    .line 11
    new-instance v0, Lcom/amazon/kcp/font/DownloadStatus;

    sget v1, Lcom/amazon/kindle/krl/R$string;->font_downloading:I

    const/4 v3, 0x1

    const-string v4, "DOWNLOADING"

    invoke-direct {v0, v4, v3, v1}, Lcom/amazon/kcp/font/DownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    .line 12
    new-instance v0, Lcom/amazon/kcp/font/DownloadStatus;

    sget v1, Lcom/amazon/kindle/krl/R$string;->font_downloaded:I

    const/4 v4, 0x2

    const-string v5, "DOWNLOADED"

    invoke-direct {v0, v5, v4, v1}, Lcom/amazon/kcp/font/DownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    .line 13
    new-instance v0, Lcom/amazon/kcp/font/DownloadStatus;

    sget v1, Lcom/amazon/kindle/krl/R$string;->font_download_failed:I

    const/4 v5, 0x3

    const-string v6, "DOWNLOAD_FAILED"

    invoke-direct {v0, v6, v5, v1}, Lcom/amazon/kcp/font/DownloadStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOAD_FAILED:Lcom/amazon/kcp/font/DownloadStatus;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/amazon/kcp/font/DownloadStatus;

    .line 9
    sget-object v6, Lcom/amazon/kcp/font/DownloadStatus;->NEED_DOWNLOAD:Lcom/amazon/kcp/font/DownloadStatus;

    aput-object v6, v1, v2

    sget-object v2, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADING:Lcom/amazon/kcp/font/DownloadStatus;

    aput-object v2, v1, v3

    sget-object v2, Lcom/amazon/kcp/font/DownloadStatus;->DOWNLOADED:Lcom/amazon/kcp/font/DownloadStatus;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/amazon/kcp/font/DownloadStatus;->$VALUES:[Lcom/amazon/kcp/font/DownloadStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 18
    iput p3, p0, Lcom/amazon/kcp/font/DownloadStatus;->stringId:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/font/DownloadStatus;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kcp/font/DownloadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/font/DownloadStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/font/DownloadStatus;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kcp/font/DownloadStatus;->$VALUES:[Lcom/amazon/kcp/font/DownloadStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/font/DownloadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/font/DownloadStatus;

    return-object v0
.end method


# virtual methods
.method public getStringId()I
    .locals 1

    .line 22
    iget v0, p0, Lcom/amazon/kcp/font/DownloadStatus;->stringId:I

    return v0
.end method
