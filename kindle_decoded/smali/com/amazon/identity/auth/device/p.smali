.class public final Lcom/amazon/identity/auth/device/p;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.p"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static I(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "A1PY8QQU9P0WJV"

    .line 35
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A17I2SKGZYX7FH"

    .line 36
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "A1MPSLFC7L5AFK"

    .line 37
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

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

.method private static J(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".is_registered_key"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/amazon/identity/auth/device/co;Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 68
    sget-object v0, Lcom/amazon/identity/auth/device/p;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const-string v2, "%s has registered"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-static {p2}, Lcom/amazon/identity/auth/device/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "true"

    .line 70
    invoke-virtual {p1, p2, v0}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 1069
    invoke-static {p4, p0}, Lcom/amazon/identity/auth/device/q;->a(Ljava/lang/String;Lcom/amazon/identity/auth/device/co;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1074
    invoke-static {p3}, Lcom/amazon/identity/auth/device/api/CustomerAttributeKeys;->getDsnKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p4}, Lcom/amazon/identity/auth/device/fv;->q(Ljava/lang/String;Ljava/lang/String;)V

    .line 1075
    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/q;->a(Lcom/amazon/identity/auth/device/fv;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/amazon/identity/auth/device/gc;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 45
    invoke-static {p0, p3}, Lcom/amazon/identity/auth/device/p;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 47
    sget-object p0, Lcom/amazon/identity/auth/device/p;->TAG:Ljava/lang/String;

    new-array p1, v0, [Ljava/lang/Object;

    aput-object p3, p1, v1

    const-string p2, "%s is not a child application"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 51
    :cond_0
    invoke-static {p3}, Lcom/amazon/identity/auth/device/p;->J(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 53
    invoke-virtual {p1, p2, p0}, Lcom/amazon/identity/auth/device/gc;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 30
    invoke-static {p0, p1}, Lcom/amazon/identity/auth/device/ib;->p(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 98
    new-instance v0, Lcom/amazon/identity/auth/device/cq;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/cq;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/co;)Lcom/amazon/identity/auth/device/cp;

    move-result-object v0

    sget-object v1, Lcom/amazon/identity/auth/device/features/Feature;->OverrideDeviceAttributes:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/cp;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "MAPDeviceAttributeRuntimeOverride"

    .line 102
    invoke-static {p0, p1, v0}, Lcom/amazon/identity/auth/device/in;->o(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static w()Landroid/os/Bundle;
    .locals 1

    .line 84
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method
