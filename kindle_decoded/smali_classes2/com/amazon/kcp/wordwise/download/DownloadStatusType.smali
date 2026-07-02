.class public final enum Lcom/amazon/kcp/wordwise/download/DownloadStatusType;
.super Ljava/lang/Enum;
.source "DownloadStatusType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kcp/wordwise/download/DownloadStatusType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum DICTIONARY_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum DICTIONARY_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum DICTIONARY_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum SIDECAR_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum SIDECAR_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum SIDECAR_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

.field public static final enum SIDECAR_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 9
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v1, 0x0

    const-string v2, "DICTIONARY_DOWNLOADING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 10
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v2, 0x1

    const-string v3, "DICTIONARY_COMPLETED"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 11
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v3, 0x2

    const-string v4, "DICTIONARY_FAILED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 12
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v4, 0x3

    const-string v5, "DICTIONARY_NONE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 13
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v5, 0x4

    const-string v6, "SIDECAR_DOWNLOADING"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 14
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v6, 0x5

    const-string v7, "SIDECAR_COMPLETED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 15
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v7, 0x6

    const-string v8, "SIDECAR_FAILED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 16
    new-instance v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/4 v8, 0x7

    const-string v9, "SIDECAR_NONE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    .line 8
    sget-object v10, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->DICTIONARY_NONE:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_DOWNLOADING:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_COMPLETED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->SIDECAR_FAILED:Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->$VALUES:[Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/wordwise/download/DownloadStatusType;
    .locals 1

    .line 8
    const-class v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/wordwise/download/DownloadStatusType;
    .locals 1

    .line 8
    sget-object v0, Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->$VALUES:[Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    invoke-virtual {v0}, [Lcom/amazon/kcp/wordwise/download/DownloadStatusType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/wordwise/download/DownloadStatusType;

    return-object v0
.end method
