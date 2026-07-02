.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum BLE_COMMAND_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum CONNECTION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum INTERNAL_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum OTHER_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum PRECONDITION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum WEB_SERVICE_CALL_FAILUE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field public static final enum WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 30
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "PRECONDITION_FAILURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PRECONDITION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 34
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v3, 0x2

    const-string v4, "CONNECTION_FAILURE"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->CONNECTION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 38
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v4, 0x3

    const-string v5, "PROVISIONING_FAILURE"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 42
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v5, 0x4

    const-string v6, "BLE_COMMAND_FAILURE"

    invoke-direct {v0, v6, v4, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->BLE_COMMAND_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 46
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v6, 0x5

    const-string v7, "WEB_SERVICE_CALL_FAILUE"

    invoke-direct {v0, v7, v5, v6}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WEB_SERVICE_CALL_FAILUE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 50
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v7, 0x6

    const-string v8, "WORKFLOW_FAILURE"

    invoke-direct {v0, v8, v6, v7}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 54
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const-string v8, "OTHER_FAILURE"

    const/16 v9, 0x63

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->OTHER_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 58
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/4 v8, 0x7

    const-string v9, "INTERNAL_FAILURE"

    const/16 v10, 0x64

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->INTERNAL_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 25
    sget-object v10, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PRECONDITION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->CONNECTION_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->PROVISIONING_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->BLE_COMMAND_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WEB_SERVICE_CALL_FAILUE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->WORKFLOW_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->OTHER_FAILURE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    .line 126
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 146
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 160
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 96
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Domain;->value:I

    return v0
.end method
