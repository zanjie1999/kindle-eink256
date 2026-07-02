.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
.super Ljava/lang/Enum;
.source "ProvisioningStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum ADVERTISEMENT_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum PROVISIONING_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

.field public static final enum WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;


# instance fields
.field private final mString:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 8
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v1, 0x0

    const-string v2, "PROVISIONING_SESSION_IDLE"

    const-string v3, "Provisioning Session Idle"

    invoke-direct {v0, v2, v1, v1, v3}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 9
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v2, 0x1

    const-string v3, "WAITING_FOR_PROVISIONER"

    const-string v4, "Wait for Provisioner"

    invoke-direct {v0, v3, v2, v2, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v3, 0x2

    const-string v4, "AUTHORIZING_PROVISIONER"

    const-string v5, "Authorizing Provisioner"

    invoke-direct {v0, v4, v3, v3, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v4, 0x3

    const-string v5, "ACTIVELY_PROVISIONING"

    const-string v6, "Actively Provisioning"

    invoke-direct {v0, v5, v4, v4, v6}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v5, 0x4

    const-string v6, "PROVISIONING_COMPLETE"

    const-string v7, "Provisioning Complete"

    invoke-direct {v0, v6, v5, v5, v7}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 13
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v6, 0x5

    const-string v7, "PROVISIONING_TERMINATED"

    const-string v8, "Provisioning Terminated"

    invoke-direct {v0, v7, v6, v6, v8}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v7, 0x6

    const-string v8, "CONNECTED_TO_PROVISIONER"

    const-string v9, "Connected to Provisioner"

    invoke-direct {v0, v8, v7, v7, v9}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/4 v8, 0x7

    const-string v9, "ADVERTISEMENT_TIMEOUT"

    const-string v10, "Advertisement Timeout"

    invoke-direct {v0, v9, v8, v8, v10}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ADVERTISEMENT_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/16 v9, 0x8

    const-string v10, "PROVISIONING_TIMEOUT"

    const-string v11, "Provisioning Timeout"

    invoke-direct {v0, v10, v9, v9, v11}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    const/16 v10, 0x9

    new-array v10, v10, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 7
    sget-object v11, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v11, v10, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v2

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v3

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v4

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v5

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v6

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v7

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ADVERTISEMENT_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    aput-object v1, v10, v8

    aput-object v0, v10, v9

    sput-object v10, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    .line 64
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->mValue:I

    .line 46
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->mString:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    .locals 1

    packed-switch p0, :pswitch_data_0

    .line 29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown State encountered."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :pswitch_0
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 27
    :pswitch_1
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ADVERTISEMENT_TIMEOUT:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 26
    :pswitch_2
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->CONNECTED_TO_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 25
    :pswitch_3
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_TERMINATED:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 24
    :pswitch_4
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_COMPLETE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 23
    :pswitch_5
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->ACTIVELY_PROVISIONING:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 22
    :pswitch_6
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->AUTHORIZING_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 21
    :pswitch_7
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->WAITING_FOR_PROVISIONER:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    .line 20
    :pswitch_8
    sget-object p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->PROVISIONING_SESSION_IDLE:Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    .locals 1

    .line 7
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;
    .locals 1

    .line 7
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .line 37
    iget v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->mValue:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 61
    iget p2, p0, Lcom/amazon/whisperjoin/common/sharedtypes/provisioning/ProvisioningStatus$State;->mValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
