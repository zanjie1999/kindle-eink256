.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
.super Ljava/lang/Enum;
.source "SupportedRadios.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

.field public static final enum BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

.field public static final enum WIFI_INFRASTRUCTURE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

.field public static final enum WIFI_P2P_ASSISTED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

.field public static final enum WIFI_P2P_PHONE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;


# instance fields
.field private final mString:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 12
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->UNKNOWN:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 14
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const-string v1, "WIFI_P2P_PHONE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_P2P_PHONE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const/4 v1, 0x2

    const-string v4, "WIFI_P2P_ASSISTED"

    const-string v5, "WIFI_P2P_AMAZON_DEVICE_HOSTED"

    invoke-direct {v0, v4, v1, v3, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_P2P_ASSISTED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 18
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const-string v4, "WIFI_INFRASTRUCTURE"

    const/4 v5, 0x3

    invoke-direct {v0, v4, v5, v5, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_INFRASTRUCTURE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 20
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const-string v4, "BLE"

    const/4 v6, 0x4

    invoke-direct {v0, v4, v6, v6, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->BLE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    const/4 v4, 0x5

    new-array v4, v4, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 10
    sget-object v7, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->UNKNOWN:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    aput-object v7, v4, v2

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_P2P_PHONE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    aput-object v2, v4, v3

    sget-object v2, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_P2P_ASSISTED:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    aput-object v2, v4, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->WIFI_INFRASTRUCTURE:Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    aput-object v1, v4, v5

    aput-object v0, v4, v6

    sput-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    .line 59
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios$1;

    invoke-direct {v0}, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios$1;-><init>()V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->CREATOR:Landroid/os/Parcelable$Creator;

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
    iput p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->mValue:I

    .line 46
    iput-object p4, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->mString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
    .locals 1

    .line 10
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;
    .locals 1

    .line 10
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/radios/SupportedRadios;->mString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
