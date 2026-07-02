.class public final enum Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;
.super Ljava/lang/Enum;
.source "WorkflowStep.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum AWAITING_DEVICE_SELECTION:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DISCOVERING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum FIXUP_WIFI_CONNECTION_ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum SETUP_SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum VALIDATING_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

.field public static final enum VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v1, 0x0

    const-string v2, "IDLE"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v2, 0x1

    const-string v3, "DISCOVERING"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->DISCOVERING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v3, 0x2

    const-string v4, "AWAITING_DEVICE_SELECTION"

    invoke-direct {v0, v4, v3}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_DEVICE_SELECTION:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v4, 0x3

    const-string v5, "CONNECTING_TO_DEVICE"

    invoke-direct {v0, v5, v4}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v5, 0x4

    const-string v6, "GETTING_PROVISIONING_DETAILS"

    invoke-direct {v0, v6, v5}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v6, 0x5

    const-string v7, "VALIDATING_WIFI_SYNC_AUTH_TOKEN"

    invoke-direct {v0, v7, v6}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VALIDATING_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v7, 0x6

    const-string v8, "AWAITING_PROVISIONING_DATA"

    invoke-direct {v0, v8, v7}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/4 v8, 0x7

    const-string v9, "PROVISIONING_DEVICE"

    invoke-direct {v0, v9, v8}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/16 v9, 0x8

    const-string v10, "VERIFYING_PROVISIONING"

    invoke-direct {v0, v10, v9}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 19
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/16 v10, 0x9

    const-string v11, "FIXUP_WIFI_CONNECTION_ERROR"

    invoke-direct {v0, v11, v10}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->FIXUP_WIFI_CONNECTION_ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/16 v11, 0xa

    const-string v12, "SETUP_FAILURE"

    invoke-direct {v0, v12, v11}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 21
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/16 v12, 0xb

    const-string v13, "SETUP_SUCCESS"

    invoke-direct {v0, v13, v12}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_SUCCESS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    const/16 v13, 0xc

    new-array v13, v13, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 9
    sget-object v14, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->IDLE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v14, v13, v1

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->DISCOVERING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v2

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_DEVICE_SELECTION:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v3

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CONNECTING_TO_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v4

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->GETTING_PROVISIONING_DETAILS:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v5

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VALIDATING_WIFI_SYNC_AUTH_TOKEN:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v6

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->AWAITING_PROVISIONING_DATA:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v7

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->PROVISIONING_DEVICE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v8

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->VERIFYING_PROVISIONING:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v9

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->FIXUP_WIFI_CONNECTION_ERROR:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v10

    sget-object v1, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->SETUP_FAILURE:Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    aput-object v1, v13, v11

    aput-object v0, v13, v12

    sput-object v13, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    .line 33
    new-instance v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->$VALUES:[Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/deviceprovisioningservice/workflow/state/WorkflowStep;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
