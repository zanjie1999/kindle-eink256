.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;
.super Ljava/lang/Enum;
.source "ConnectionOperationStatusUpdate.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum CONNECTED_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum CONNECTING_TO_DEVICE_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum OTHER_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum SECURE_CHANNEL_ESTABLISHED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

.field public static final enum SECURE_CHANNEL_ESTABLISHMENT_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v1, 0x0

    const-string v2, "CONNECTING"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v2, 0x1

    const-string v3, "CONNECTED_TO_DEVICE"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTED_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v3, 0x2

    const-string v4, "CONNECTING_TO_DEVICE_FAILURE"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING_TO_DEVICE_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v4, 0x3

    const-string v5, "SECURE_CHANNEL_ESTABLISHED"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->SECURE_CHANNEL_ESTABLISHED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v5, 0x4

    const-string v6, "SECURE_CHANNEL_ESTABLISHMENT_FAILURE"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->SECURE_CHANNEL_ESTABLISHMENT_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v6, 0x5

    const-string v7, "OTHER_FAILURE"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->OTHER_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    const/4 v7, 0x6

    new-array v7, v7, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    .line 13
    sget-object v8, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    aput-object v8, v7, v1

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTED_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    aput-object v1, v7, v2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->CONNECTING_TO_DEVICE_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    aput-object v1, v7, v3

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->SECURE_CHANNEL_ESTABLISHED:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    aput-object v1, v7, v4

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->SECURE_CHANNEL_ESTABLISHMENT_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    aput-object v1, v7, v5

    aput-object v0, v7, v6

    sput-object v7, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/provisioning/type/ConnectionOperationStatusUpdate$State;

    return-object v0
.end method
