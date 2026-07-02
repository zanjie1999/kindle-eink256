.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field public static final enum BLUETOOTH_LOW_ENERGY_NOT_SUPPORTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field public static final enum BLUETOOTH_NOT_ENABLED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field public static final enum NO_USER_LOGGED_IN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field public static final enum REQUIRED_PERMISSIONS_NOT_GRANTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field public static final enum UNKNOWN_PRECONDITION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 525
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_PRECONDITION_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->UNKNOWN_PRECONDITION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 529
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v2, 0x1

    const-string v3, "BLUETOOTH_NOT_ENABLED"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_NOT_ENABLED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 533
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v3, 0x2

    const-string v4, "BLUETOOTH_LOW_ENERGY_NOT_SUPPORTED"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_LOW_ENERGY_NOT_SUPPORTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 537
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v4, 0x3

    const-string v5, "NO_USER_LOGGED_IN"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->NO_USER_LOGGED_IN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 541
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v5, 0x4

    const-string v6, "REQUIRED_PERMISSIONS_NOT_GRANTED"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->REQUIRED_PERMISSIONS_NOT_GRANTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 520
    sget-object v7, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->UNKNOWN_PRECONDITION_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_NOT_ENABLED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->BLUETOOTH_LOW_ENERGY_NOT_SUPPORTED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->NO_USER_LOGGED_IN:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    .line 594
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 614
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 627
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 628
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;
    .locals 1

    .line 520
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;
    .locals 1

    .line 520
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 567
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$PreconditionErrorType;->value:I

    return v0
.end method
