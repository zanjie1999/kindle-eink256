.class public final enum Lcom/amazon/ea/metrics/DeviceStatus;
.super Ljava/lang/Enum;
.source "DeviceStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/ea/metrics/DeviceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/ea/metrics/DeviceStatus;

.field public static final enum CONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

.field public static final enum DISCONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

.field public static final enum UNKNOWN:Lcom/amazon/ea/metrics/DeviceStatus;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 7
    new-instance v0, Lcom/amazon/ea/metrics/DeviceStatus;

    const/4 v1, 0x0

    const-string v2, "CONNECTED"

    const-string v3, "Connected"

    invoke-direct {v0, v2, v1, v3}, Lcom/amazon/ea/metrics/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/DeviceStatus;->CONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    .line 8
    new-instance v0, Lcom/amazon/ea/metrics/DeviceStatus;

    const/4 v2, 0x1

    const-string v3, "DISCONNECTED"

    const-string v4, "Disconnected"

    invoke-direct {v0, v3, v2, v4}, Lcom/amazon/ea/metrics/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/DeviceStatus;->DISCONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    .line 9
    new-instance v0, Lcom/amazon/ea/metrics/DeviceStatus;

    const/4 v3, 0x2

    const-string v4, "UNKNOWN"

    const-string v5, "Unknown"

    invoke-direct {v0, v4, v3, v5}, Lcom/amazon/ea/metrics/DeviceStatus;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/ea/metrics/DeviceStatus;->UNKNOWN:Lcom/amazon/ea/metrics/DeviceStatus;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/ea/metrics/DeviceStatus;

    .line 6
    sget-object v5, Lcom/amazon/ea/metrics/DeviceStatus;->CONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/ea/metrics/DeviceStatus;->DISCONNECTED:Lcom/amazon/ea/metrics/DeviceStatus;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/ea/metrics/DeviceStatus;->$VALUES:[Lcom/amazon/ea/metrics/DeviceStatus;

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

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput-object p3, p0, Lcom/amazon/ea/metrics/DeviceStatus;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/ea/metrics/DeviceStatus;
    .locals 1

    .line 6
    const-class v0, Lcom/amazon/ea/metrics/DeviceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/ea/metrics/DeviceStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/ea/metrics/DeviceStatus;
    .locals 1

    .line 6
    sget-object v0, Lcom/amazon/ea/metrics/DeviceStatus;->$VALUES:[Lcom/amazon/ea/metrics/DeviceStatus;

    invoke-virtual {v0}, [Lcom/amazon/ea/metrics/DeviceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/ea/metrics/DeviceStatus;

    return-object v0
.end method


# virtual methods
.method public getDeviceStatus()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/amazon/ea/metrics/DeviceStatus;->key:Ljava/lang/String;

    return-object v0
.end method
