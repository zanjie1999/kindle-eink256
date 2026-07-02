.class public final enum Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
.super Ljava/lang/Enum;
.source "ProtobufCBLRegistrationDetailsClass.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum COMPLETING_REGISTRATION:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum NOT_REGISTERED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_FAILED_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_FAILED_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_FAILED_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field public static final enum REGISTRATION_FAILED_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 188
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v1, 0x0

    const-string v2, "NOT_REGISTERED"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->NOT_REGISTERED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 192
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v2, 0x1

    const-string v3, "COMPLETING_REGISTRATION"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->COMPLETING_REGISTRATION:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 196
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v3, 0x2

    const-string v4, "REGISTRATION_COMPLETE"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 200
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v4, 0x3

    const-string v5, "REGISTRATION_FAILED_TOKEN_INVALID"

    const/4 v6, -0x1

    invoke-direct {v0, v5, v4, v6}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 204
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v5, 0x4

    const-string v6, "REGISTRATION_FAILED_TOKEN_EXPIRED"

    const/4 v7, -0x2

    invoke-direct {v0, v6, v5, v7}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 208
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v6, 0x5

    const-string v7, "REGISTRATION_FAILED_SERVER_NOT_REACHABLE"

    const/4 v8, -0x3

    invoke-direct {v0, v7, v6, v8}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 212
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v7, 0x6

    const-string v8, "REGISTRATION_FAILED_SERVER_ERROR"

    const/4 v9, -0x4

    invoke-direct {v0, v8, v7, v9}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 216
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/4 v8, 0x7

    const-string v9, "REGISTRATION_FAILED_OTHER"

    const/4 v10, -0x5

    invoke-direct {v0, v9, v8, v10}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    const/16 v9, 0x8

    new-array v9, v9, [Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 183
    sget-object v10, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->NOT_REGISTERED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v10, v9, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->COMPLETING_REGISTRATION:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v6

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    aput-object v1, v9, v7

    aput-object v0, v9, v8

    sput-object v9, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    .line 284
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 304
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->values()[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 317
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 318
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 269
    :pswitch_0
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 268
    :pswitch_1
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->COMPLETING_REGISTRATION:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 267
    :pswitch_2
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->NOT_REGISTERED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 270
    :pswitch_3
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_INVALID:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 271
    :pswitch_4
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_TOKEN_EXPIRED:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 272
    :pswitch_5
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_NOT_REACHABLE:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 273
    :pswitch_6
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_SERVER_ERROR:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    .line 274
    :pswitch_7
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->REGISTRATION_FAILED_OTHER:Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 262
    invoke-static {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->forNumber(I)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    .locals 1

    .line 183
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;
    .locals 1

    .line 183
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 254
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufCBLRegistrationDetailsClass$ProtobufCBLRegistrationDetails$State;->value:I

    return v0
.end method
