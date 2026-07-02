.class Lcom/amazon/identity/auth/device/u$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic bA:Lcom/amazon/identity/auth/device/u;

.field final synthetic bB:Lcom/amazon/identity/auth/device/ky;

.field final synthetic bC:Ljava/lang/String;

.field final synthetic by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/u;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V
    .locals 0

    .line 665
    iput-object p1, p0, Lcom/amazon/identity/auth/device/u$3;->bA:Lcom/amazon/identity/auth/device/u;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/u$3;->bB:Lcom/amazon/identity/auth/device/ky;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/u$3;->H:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/u$3;->bC:Ljava/lang/String;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/u$3;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 669
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$3;->bA:Lcom/amazon/identity/auth/device/u;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$3;->bB:Lcom/amazon/identity/auth/device/ky;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/u$3;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/u$3;->bC:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/identity/auth/device/ky;Ljava/lang/String;Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$3;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    if-eqz v0, :cond_0

    .line 673
    invoke-static {}, Lcom/amazon/identity/auth/device/u;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Callback with success after storing tokens for the child app."

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/amazon/identity/auth/device/u$3;->bA:Lcom/amazon/identity/auth/device/u;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/u$3;->by:Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/u;->a(Lcom/amazon/identity/auth/device/u;Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;)V

    :cond_0
    return-void
.end method
