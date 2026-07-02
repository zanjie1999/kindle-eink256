.class public final Lcom/amazon/identity/auth/device/lx;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.lx"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static eE(Ljava/lang/String;)Z
    .locals 2

    .line 18
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 20
    sget-object p0, Lcom/amazon/identity/auth/device/lx;->TAG:Ljava/lang/String;

    const-string v0, "isValidDeviceType: returning false because a null or empty device type was given."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 24
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lx;->eG(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 26
    sget-object p0, Lcom/amazon/identity/auth/device/lx;->TAG:Ljava/lang/String;

    const-string v0, "isValidDeviceType: returning false because a non alpha numeric device type was given."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static eF(Ljava/lang/String;)Z
    .locals 2

    .line 36
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lx;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 38
    sget-object p0, Lcom/amazon/identity/auth/device/lx;->TAG:Ljava/lang/String;

    const-string v0, "isValidDeviceSerialNumber: returning false because a null or empty device serial number was given."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 43
    :cond_0
    invoke-static {p0}, Lcom/amazon/identity/auth/device/lx;->eG(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 45
    sget-object p0, Lcom/amazon/identity/auth/device/lx;->TAG:Ljava/lang/String;

    const-string v0, "isValidDeviceSerialNumber: returning false because a non alpha numeric serial number was given."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 50
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x33

    if-le p0, v0, :cond_2

    .line 52
    sget-object p0, Lcom/amazon/identity/auth/device/lx;->TAG:Ljava/lang/String;

    const-string v0, "isValidDeviceSerialNumber: returning false because a serial number that is too long (more than 51 characters) was given."

    invoke-static {p0, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public static eG(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[a-zA-Z0-9]*"

    .line 67
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static eH(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "[0-9]*"

    .line 72
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, ""

    .line 62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
