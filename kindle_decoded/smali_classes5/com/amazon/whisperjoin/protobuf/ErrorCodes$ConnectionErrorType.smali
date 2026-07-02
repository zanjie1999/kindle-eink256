.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum PROVISIONING_COMMAND_DESERIALIZATION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum START_PROVISIONING_REQUEST_FAILED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum UNABLE_TO_ESTABLISH_CONNECTION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum UNABLE_TO_ESTABLISH_SECURE_CHANNEL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum UNEXPECTED_CONNECTION_DROP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field public static final enum UNKNOWN_CONNECTION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 399
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_CONNECTION_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNKNOWN_CONNECTION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 403
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v2, 0x1

    const-string v3, "UNABLE_TO_ESTABLISH_CONNECTION"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_CONNECTION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 407
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v3, 0x2

    const-string v4, "UNABLE_TO_ESTABLISH_SECURE_CHANNEL"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_SECURE_CHANNEL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 411
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v4, 0x3

    const-string v5, "START_PROVISIONING_REQUEST_FAILED"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->START_PROVISIONING_REQUEST_FAILED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 415
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v5, 0x4

    const-string v6, "UNEXPECTED_CONNECTION_DROP"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNEXPECTED_CONNECTION_DROP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 419
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v6, 0x5

    const-string v7, "PROVISIONING_COMMAND_DESERIALIZATION_ERROR"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->PROVISIONING_COMMAND_DESERIALIZATION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 394
    sget-object v8, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNKNOWN_CONNECTION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_CONNECTION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNABLE_TO_ESTABLISH_SECURE_CHANNEL:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->START_PROVISIONING_REQUEST_FAILED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->UNEXPECTED_CONNECTION_DROP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    .line 477
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 497
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 510
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 511
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;
    .locals 1

    .line 394
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;
    .locals 1

    .line 394
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 449
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$ConnectionErrorType;->value:I

    return v0
.end method
