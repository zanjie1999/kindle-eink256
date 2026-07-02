.class public Lcom/amazon/identity/auth/device/o;
.super Lcom/amazon/identity/auth/device/eb;
.source "DCP"


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/eb;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method

.method public static d(Landroid/content/Context;)Lcom/amazon/identity/auth/device/o;
    .locals 2

    .line 22
    sget-object v0, Lcom/amazon/identity/auth/device/eb;->le:Lcom/amazon/identity/auth/device/eb$a;

    const-string v1, "com.amazon.dcp.sso.AuthenticatedRequestService"

    invoke-static {p0, v1, v0}, Lcom/amazon/identity/auth/device/eb;->a(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/identity/auth/device/eb$a;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 27
    :cond_0
    new-instance v0, Lcom/amazon/identity/auth/device/o;

    invoke-direct {v0, p0}, Lcom/amazon/identity/auth/device/o;-><init>(Landroid/content/ComponentName;)V

    return-object v0
.end method


# virtual methods
.method public r()Landroid/content/Intent;
    .locals 1

    const-string v0, "com.amazon.dcp.sso.action.GET_DEVICE_CREDENTIALS"

    .line 32
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/eb;->bw(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
