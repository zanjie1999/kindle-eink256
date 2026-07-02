.class public final enum Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;
.super Ljava/lang/Enum;
.source "TransferState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field private static final LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

.field private static final MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_CANCEL:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_NETWORK_DISCONNECT:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum PENDING_PAUSE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum RESUMED_WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum UNKNOWN:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

.field public static final enum WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 39
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v1, 0x0

    const-string v2, "WAITING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 44
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v2, 0x1

    const-string v3, "IN_PROGRESS"

    invoke-direct {v0, v3, v2}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 48
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v3, 0x2

    const-string v4, "PAUSED"

    invoke-direct {v0, v4, v3}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 53
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v4, 0x3

    const-string v5, "RESUMED_WAITING"

    invoke-direct {v0, v5, v4}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 57
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v5, 0x4

    const-string v6, "COMPLETED"

    invoke-direct {v0, v6, v5}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 61
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v6, 0x5

    const-string v7, "CANCELED"

    invoke-direct {v0, v7, v6}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 65
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v7, 0x6

    const-string v8, "FAILED"

    invoke-direct {v0, v8, v7}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 71
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/4 v8, 0x7

    const-string v9, "WAITING_FOR_NETWORK"

    invoke-direct {v0, v9, v8}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 77
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v9, 0x8

    const-string v10, "PART_COMPLETED"

    invoke-direct {v0, v10, v9}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 84
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v10, 0x9

    const-string v11, "PENDING_CANCEL"

    invoke-direct {v0, v11, v10}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 91
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v11, 0xa

    const-string v12, "PENDING_PAUSE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 98
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v12, 0xb

    const-string v13, "PENDING_NETWORK_DISCONNECT"

    invoke-direct {v0, v13, v12}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 103
    new-instance v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v13, 0xc

    const-string v14, "UNKNOWN"

    invoke-direct {v0, v14, v13}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    const/16 v14, 0xd

    new-array v14, v14, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 33
    sget-object v15, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v15, v14, v1

    sget-object v15, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v15, v14, v2

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v3

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->RESUMED_WAITING:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v4

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v5

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v6

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v7

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v8

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v9

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v10

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v11

    sget-object v2, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_NETWORK_DISCONNECT:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    aput-object v2, v14, v12

    aput-object v0, v14, v13

    sput-object v14, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 107
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    .line 108
    invoke-static {}, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->values()[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 109
    sget-object v4, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v0}, Lcom/amazon/kindle/com/amazonaws/logging/LogFactory;->getLog(Ljava/lang/Class;)Lcom/amazon/kindle/com/amazonaws/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getState(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 3

    .line 122
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->MAP:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0

    .line 126
    :cond_0
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->LOGGER:Lcom/amazon/kindle/com/amazonaws/logging/Log;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " transfer will be have state set to UNKNOWN."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/amazon/kindle/com/amazonaws/logging/Log;->error(Ljava/lang/Object;)V

    .line 128
    sget-object p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->UNKNOWN:Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;
    .locals 1

    .line 33
    sget-object v0, Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->$VALUES:[Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    invoke-virtual {v0}, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kindle/com/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    return-object v0
.end method
