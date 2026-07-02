.class Lcom/amazon/identity/auth/device/i$3;
.super Lcom/amazon/identity/auth/device/i$b;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/j;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/ej;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aA:Lcom/amazon/identity/auth/device/j;

.field final synthetic ax:Lcom/amazon/identity/auth/device/i;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/i$a;Lcom/amazon/identity/auth/device/j;)V
    .locals 0

    .line 2456
    iput-object p1, p0, Lcom/amazon/identity/auth/device/i$3;->ax:Lcom/amazon/identity/auth/device/i;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/i$3;->aA:Lcom/amazon/identity/auth/device/j;

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/i$b;-><init>(Lcom/amazon/identity/auth/device/i$a;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/amazon/identity/kcpsdk/auth/RegisterDeviceErrorType;)V
    .locals 0

    return-void
.end method

.method protected b(Lcom/amazon/identity/auth/device/ky;)Lcom/amazon/identity/auth/device/i$c;
    .locals 3

    .line 2460
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$3;->ax:Lcom/amazon/identity/auth/device/i;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;)V

    .line 2461
    iget-object v0, p0, Lcom/amazon/identity/auth/device/i$3;->ax:Lcom/amazon/identity/auth/device/i;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/i$3;->aA:Lcom/amazon/identity/auth/device/j;

    invoke-static {v0, p1, v1}, Lcom/amazon/identity/auth/device/i;->a(Lcom/amazon/identity/auth/device/i;Lcom/amazon/identity/auth/device/ky;Lcom/amazon/identity/auth/device/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2463
    new-instance p1, Lcom/amazon/identity/auth/device/i$c;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/i$c;-><init>()V

    return-object p1

    .line 2468
    :cond_0
    new-instance p1, Lcom/amazon/identity/auth/device/i$c;

    sget-object v0, Lcom/amazon/identity/auth/device/api/MAPError$AccountError;->SETTING_CREDENTIALS_FAILED:Lcom/amazon/identity/auth/device/api/MAPError$AccountError;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->UNRECOGNIZED:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    const-string v2, "An error occurred while setting the credentials. This occurred because either no AccountRegistrarAuthenticator was given, or account credentials were given instead of anonymous credentials"

    invoke-direct {p1, v0, v2, v1}, Lcom/amazon/identity/auth/device/i$c;-><init>(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V

    return-object p1
.end method

.method protected i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
