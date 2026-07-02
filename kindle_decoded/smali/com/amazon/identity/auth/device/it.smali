.class public final Lcom/amazon/identity/auth/device/it;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.it"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static c(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/String;
    .locals 2

    .line 23
    invoke-static {}, Lcom/amazon/identity/auth/device/bc;->bl()Lcom/amazon/identity/auth/device/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/identity/auth/device/bc;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/Object;

    move-result-object p0

    .line 25
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 27
    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 30
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/it;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Device Attribute %s is not of type String."

    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 32
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrectly called getDeviceAttribute in Platform.  Try calling hasDeviceAttribute."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static d(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Z
    .locals 2

    .line 41
    invoke-static {}, Lcom/amazon/identity/auth/device/bc;->bl()Lcom/amazon/identity/auth/device/bc;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/amazon/identity/auth/device/bc;->a(Landroid/content/Context;Lcom/amazon/identity/auth/device/attribute/DeviceAttribute;)Ljava/lang/Object;

    move-result-object p0

    .line 43
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 45
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 48
    :cond_0
    sget-object p0, Lcom/amazon/identity/auth/device/it;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Device Attribute %s is not of type boolean."

    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 50
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Incorrectly called hasDeviceAttribute in Platform.  Try calling getDeviceAttribute."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
