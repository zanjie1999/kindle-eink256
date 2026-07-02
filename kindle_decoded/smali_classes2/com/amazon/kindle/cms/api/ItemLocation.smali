.class public final enum Lcom/amazon/kindle/cms/api/ItemLocation;
.super Ljava/lang/Enum;
.source "ItemLocation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/cms/api/ItemLocation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum BEING_RESTORED:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum CLOUD_DOWNLOADABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum CLOUD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_ACTIVE:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_ERROR_FAILED:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_ERROR_INSUFFICIENT_STORAGE:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_ERROR_RETRYABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_OPENABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_PAUSED:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_PAUSED_QUEUED_FOR_WIFI:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_PAUSED_WAITING_FOR_NETWORK:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_PAUSED_WAITING_TO_RETRY:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum DOWNLOADING_QUEUED:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum LOCAL:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum LOCAL_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum LOCAL_OTG:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum LOCAL_SD_CARD:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum LOCAL_SD_CARD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

.field public static final enum UNSPECIFIED:Lcom/amazon/kindle/cms/api/ItemLocation;


# instance fields
.field private final m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 12
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v1, 0x0

    const-string v2, "UNSPECIFIED"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->UNSPECIFIED:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 14
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v2, 0x1

    const-string v3, "CLOUD_ONLY"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->CLOUD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 16
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v3, 0x2

    const-string v4, "CLOUD_DOWNLOADABLE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->CLOUD_DOWNLOADABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 18
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v4, 0x3

    const-string v5, "DOWNLOADING_ACTIVE"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ACTIVE:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 20
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v5, 0x4

    const-string v6, "DOWNLOADING_QUEUED"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_QUEUED:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 22
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v6, 0x5

    const-string v7, "DOWNLOADING_PAUSED"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 24
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v7, 0x6

    const-string v8, "DOWNLOADING_ERROR_RETRYABLE"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_RETRYABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 26
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v8, 0x7

    const-string v9, "DOWNLOADING_ERROR_FAILED"

    invoke-direct {v0, v9, v8, v8}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_FAILED:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 28
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v9, 0xf

    const/16 v10, 0x8

    const-string v11, "DOWNLOADING_ERROR_INSUFFICIENT_STORAGE"

    invoke-direct {v0, v11, v10, v9}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_INSUFFICIENT_STORAGE:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 30
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v11, 0x9

    const-string v12, "LOCAL"

    invoke-direct {v0, v12, v11, v10}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 32
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v12, 0xa

    const-string v13, "LOCAL_ONLY"

    invoke-direct {v0, v13, v12, v11}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 34
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v13, 0x10

    const/16 v14, 0xb

    const-string v15, "LOCAL_OTG"

    invoke-direct {v0, v15, v14, v13}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_OTG:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 36
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v15, 0x11

    const/16 v11, 0xc

    const-string v10, "LOCAL_SD_CARD"

    invoke-direct {v0, v10, v11, v15}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_SD_CARD:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 38
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v10, 0x12

    const/16 v8, 0xd

    const-string v7, "LOCAL_SD_CARD_ONLY"

    invoke-direct {v0, v7, v8, v10}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_SD_CARD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 40
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v7, 0xe

    const-string v6, "BEING_RESTORED"

    invoke-direct {v0, v6, v7, v12}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->BEING_RESTORED:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 42
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const-string v6, "DOWNLOADING_PAUSED_WAITING_TO_RETRY"

    invoke-direct {v0, v6, v9, v14}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_WAITING_TO_RETRY:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 44
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const-string v6, "DOWNLOADING_PAUSED_WAITING_FOR_NETWORK"

    invoke-direct {v0, v6, v13, v11}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_WAITING_FOR_NETWORK:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 46
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const-string v6, "DOWNLOADING_PAUSED_QUEUED_FOR_WIFI"

    invoke-direct {v0, v6, v15, v8}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_QUEUED_FOR_WIFI:Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 48
    new-instance v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    const-string v6, "DOWNLOADING_OPENABLE"

    invoke-direct {v0, v6, v10, v7}, Lcom/amazon/kindle/cms/api/ItemLocation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_OPENABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v6, 0x13

    new-array v6, v6, [Lcom/amazon/kindle/cms/api/ItemLocation;

    .line 9
    sget-object v16, Lcom/amazon/kindle/cms/api/ItemLocation;->UNSPECIFIED:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v16, v6, v1

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->CLOUD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->CLOUD_DOWNLOADABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ACTIVE:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v4

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_QUEUED:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v5

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v2, 0x5

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_RETRYABLE:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v2, 0x6

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_FAILED:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/4 v2, 0x7

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_ERROR_INSUFFICIENT_STORAGE:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v2, 0x8

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL:Lcom/amazon/kindle/cms/api/ItemLocation;

    const/16 v2, 0x9

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v12

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_OTG:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v14

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_SD_CARD:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v11

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->LOCAL_SD_CARD_ONLY:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v8

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->BEING_RESTORED:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v7

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_WAITING_TO_RETRY:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v9

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_WAITING_FOR_NETWORK:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v13

    sget-object v1, Lcom/amazon/kindle/cms/api/ItemLocation;->DOWNLOADING_PAUSED_QUEUED_FOR_WIFI:Lcom/amazon/kindle/cms/api/ItemLocation;

    aput-object v1, v6, v15

    aput-object v0, v6, v10

    sput-object v6, Lcom/amazon/kindle/cms/api/ItemLocation;->$VALUES:[Lcom/amazon/kindle/cms/api/ItemLocation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 98
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 99
    iput p3, p0, Lcom/amazon/kindle/cms/api/ItemLocation;->m_value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/cms/api/ItemLocation;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/kindle/cms/api/ItemLocation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/cms/api/ItemLocation;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/cms/api/ItemLocation;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/kindle/cms/api/ItemLocation;->$VALUES:[Lcom/amazon/kindle/cms/api/ItemLocation;

    invoke-virtual {v0}, [Lcom/amazon/kindle/cms/api/ItemLocation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/cms/api/ItemLocation;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .line 93
    iget v0, p0, Lcom/amazon/kindle/cms/api/ItemLocation;->m_value:I

    return v0
.end method
