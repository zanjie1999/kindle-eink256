.class public final enum Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
.super Ljava/lang/Enum;
.source "DeviceFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FilterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

.field public static final enum ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

.field public static final enum REJECT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    const/4 v1, 0x0

    const-string v2, "ACCEPT"

    invoke-direct {v0, v2, v1}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    .line 11
    new-instance v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    const/4 v2, 0x1

    const-string v3, "REJECT"

    invoke-direct {v0, v3, v2}, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->REJECT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    .line 9
    sget-object v4, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->ACCEPT:Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
    .locals 1

    .line 9
    const-class v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    return-object p0
.end method

.method public static values()[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;
    .locals 1

    .line 9
    sget-object v0, Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->$VALUES:[Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    invoke-virtual {v0}, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/whisperjoin/common/sharedtypes/devices/DeviceFilter$FilterResult;

    return-object v0
.end method
