.class public final enum Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
.super Ljava/lang/Enum;
.source "ProtobufProvisioningStatusClass.java"

# interfaces
.implements Lcom/google/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;",
        ">;",
        "Lcom/google/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field private static final VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field public static final enum WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 155
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v1, 0x0

    const-string v2, "PROVISIONING_SESSION_IDLE"

    invoke-direct {v0, v2, v1, v1}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 159
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v2, 0x1

    const-string v3, "WAITING_FOR_PROVISIONER"

    invoke-direct {v0, v3, v2, v2}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 163
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v3, 0x2

    const-string v4, "AUTHORIZING_PROVISIONER"

    invoke-direct {v0, v4, v3, v3}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 167
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v4, 0x3

    const-string v5, "ACTIVELY_PROVISIONING"

    invoke-direct {v0, v5, v4, v4}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 171
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v5, 0x4

    const-string v6, "PROVISIONING_COMPLETE"

    invoke-direct {v0, v6, v5, v5}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 175
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v6, 0x5

    const-string v7, "PROVISIONING_TERMINATED"

    invoke-direct {v0, v7, v6, v6}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 179
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v7, 0x6

    const-string v8, "CONNECTED_TO_PROVISIONER"

    invoke-direct {v0, v8, v7, v7}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    const/4 v8, 0x7

    new-array v8, v8, [Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 150
    sget-object v9, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v9, v8, v1

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v1, v8, v2

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v1, v8, v3

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v1, v8, v4

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v1, v8, v5

    sget-object v1, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    aput-object v1, v8, v6

    aput-object v0, v8, v7

    sput-object v8, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    .line 242
    new-instance v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 262
    invoke-static {}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->values()[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object v0

    sput-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 275
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 276
    iput p3, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 232
    :pswitch_0
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 231
    :pswitch_1
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 230
    :pswitch_2
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 229
    :pswitch_3
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 228
    :pswitch_4
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 227
    :pswitch_5
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    .line 226
    :pswitch_6
    sget-object p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 221
    invoke-static {p0}, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->forNumber(I)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 1

    .line 150
    const-class v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;
    .locals 1

    .line 150
    sget-object v0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->$VALUES:[Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/amazon/whisperjoin/protobuf/ProtobufProvisioningStatusClass$ProtobufProvisioningStatus$State;->value:I

    return v0
.end method
