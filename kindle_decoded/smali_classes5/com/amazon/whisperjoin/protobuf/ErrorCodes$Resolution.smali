.class public final enum Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;
.super Ljava/lang/Enum;
.source "ErrorCodes.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field public static final enum CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field public static final enum CLOUD_DETERMINED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field public static final enum CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field public static final enum RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field public static final enum UNRESOLVABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1370
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CUSTOMER"

    invoke-direct {v0, v3, v1, v2}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1374
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const/4 v3, 0x2

    const-string v4, "CLIENT_APPLICATION"

    invoke-direct {v0, v4, v2, v3}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1378
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const/4 v4, 0x3

    const-string v5, "RETRY_SETUP"

    invoke-direct {v0, v5, v3, v4}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1382
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const/4 v5, 0x4

    const-string v6, "CLOUD_DETERMINED"

    invoke-direct {v0, v6, v4, v5}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLOUD_DETERMINED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1386
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const-string v6, "UNRESOLVABLE"

    const/16 v7, 0x63

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->UNRESOLVABLE:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    const/4 v6, 0x5

    new-array v6, v6, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1365
    sget-object v7, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CUSTOMER:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    aput-object v7, v6, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLIENT_APPLICATION:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    aput-object v1, v6, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->RETRY_SETUP:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    aput-object v1, v6, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->CLOUD_DETERMINED:Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    aput-object v1, v6, v4

    aput-object v0, v6, v5

    sput-object v6, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    .line 1439
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1459
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1473
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;
    .locals 1

    .line 1365
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;
    .locals 1

    .line 1365
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 1412
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ErrorCodes$Resolution;->value:I

    return v0
.end method
