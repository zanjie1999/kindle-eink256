.class public final enum Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/metrics/SSOMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccountProperties"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

.field public static final enum DeviceEmail:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

.field public static final enum DeviceName:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

.field public static final enum General:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;


# instance fields
.field private final mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 27
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    const/4 v1, 0x0

    const-string v2, "DeviceName"

    invoke-direct {v0, v2, v1, v2}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->DeviceName:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    .line 28
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    const/4 v2, 0x1

    const-string v3, "DeviceEmail"

    invoke-direct {v0, v3, v2, v3}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->DeviceEmail:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    .line 29
    new-instance v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    const/4 v3, 0x2

    const-string v4, "General"

    invoke-direct {v0, v4, v3, v4}, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->General:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    const/4 v4, 0x3

    new-array v4, v4, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    .line 25
    sget-object v5, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->DeviceName:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    aput-object v5, v4, v1

    sget-object v1, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->DeviceEmail:Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    aput-object v1, v4, v2

    aput-object v0, v4, v3

    sput-object v4, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->mName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;
    .locals 1

    .line 25
    const-class v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;
    .locals 1

    .line 25
    sget-object v0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->$VALUES:[Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/amazon/identity/auth/device/metrics/SSOMetrics$AccountProperties;->mName:Ljava/lang/String;

    return-object v0
.end method
