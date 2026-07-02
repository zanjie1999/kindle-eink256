.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

.field public static final enum DEVICE_RECENTLY_PROVISIONED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

.field public static final enum UNKNOWN_WORKFLOW_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1118
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    const/4 v1, 0x0

    const-string v2, "UNKNOWN_WORKFLOW_ERROR"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->UNKNOWN_WORKFLOW_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    .line 1122
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    const/4 v2, 0x1

    const-string v3, "DEVICE_RECENTLY_PROVISIONED"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->DEVICE_RECENTLY_PROVISIONED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    .line 1113
    sget-object v4, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->UNKNOWN_WORKFLOW_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    .line 1160
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1180
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1193
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1194
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;
    .locals 1

    .line 1113
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;
    .locals 1

    .line 1113
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1136
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$WorkflowErrorType;->value:I

    return v0
.end method
