.class Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;
.super Ljava/util/TimerTask;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/AuthPortalUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;B)V
    .locals 0

    .line 269
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;-><init>(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    .line 277
    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->b(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":NetworkState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->c(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/mm;->aM(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;)Lcom/amazon/identity/auth/device/ej;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "NetworkError2:AuthPortalUIActivity"

    .line 283
    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/mn;->incrementCounterAndRecord(Ljava/lang/String;[Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Lcom/amazon/identity/auth/device/AuthPortalUIActivity$a;->ey:Lcom/amazon/identity/auth/device/AuthPortalUIActivity;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPError$CommonError;->NETWORK_ERROR:Lcom/amazon/identity/auth/device/api/MAPError$CommonError;

    sget-object v2, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->NETWORK_FAILURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    .line 290
    invoke-virtual {v2}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v2

    const-string v3, "Unable to render content. Request timed out."

    .line 288
    invoke-static {v1, v3, v2, v3}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;ILjava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/AuthPortalUIActivity;->a(Lcom/amazon/identity/auth/device/AuthPortalUIActivity;Landroid/os/Bundle;)V

    return-void
.end method
