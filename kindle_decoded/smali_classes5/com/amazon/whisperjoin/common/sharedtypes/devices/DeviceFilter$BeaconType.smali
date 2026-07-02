.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
.super Ljava/lang/Enum;
.source "DeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BeaconType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field public static final enum ALL:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field public static final enum DISTRESS:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

.field public static final enum OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 15
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    const/4 v1, 0x0

    const-string v2, "OOBE"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 16
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    const/4 v2, 0x1

    const-string v3, "DISTRESS"

    const-string v4, "Distress"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->DISTRESS:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 17
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    const/4 v3, 0x2

    const-string v4, "ALL"

    const-string v5, "All"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->ALL:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    .line 14
    sget-object v5, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->OOBE:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->DISTRESS:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->name:Ljava/lang/String;

    return-void
.end method

.method public static fromInt(I)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
    .locals 1

    .line 36
    invoke-static {}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->values()[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    move-result-object v0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
    .locals 1

    .line 14
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;
    .locals 1

    .line 14
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .line 32
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$BeaconType;->name:Ljava/lang/String;

    return-object v0
.end method
