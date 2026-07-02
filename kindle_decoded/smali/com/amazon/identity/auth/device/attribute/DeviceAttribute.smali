.class public abstract enum Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;
.super Ljava/lang/Enum;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

.field public static final enum CentralAPK:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

.field public static final enum CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 16
    new-instance v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute$1;

    const/4 v1, 0x0

    const-string v2, "CentralDeviceType"

    invoke-direct {v0, v2, v1}, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    .line 24
    new-instance v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute$2;

    const/4 v2, 0x1

    const-string v3, "CentralAPK"

    invoke-direct {v0, v3, v2}, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralAPK:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    .line 13
    sget-object v4, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->CentralDeviceType:Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    aput-object v4, v3, v1

    aput-object v0, v3, v2

    sput-object v3, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->$VALUES:[Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

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

.method synthetic constructor <init>(Ljava/lang/String;ILcom/amazon/identity/auth/device/attribute/DeviceAttribute$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;
    .locals 1

    .line 13
    const-class v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    return-object p0
.end method

.method public static values()[Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;
    .locals 1

    .line 13
    sget-object v0, Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->$VALUES:[Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    invoke-virtual {v0}, [Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;

    return-object v0
.end method


# virtual methods
.method public abstract fetchValue(Landroid/content/Context;)Ljava/lang/Object;
.end method
