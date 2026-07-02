.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

.field public static final enum UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1208
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "UNKNOWN_ERROR"

    invoke-direct {v0, v3, v2, v1}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->UNKNOWN_ERROR:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    new-array v1, v1, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    aput-object v0, v1, v2

    .line 1203
    sput-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    .line 1241
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1261
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1274
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1275
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;
    .locals 1

    .line 1203
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;
    .locals 1

    .line 1203
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1218
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$OtherErrorType;->value:I

    return v0
.end method
