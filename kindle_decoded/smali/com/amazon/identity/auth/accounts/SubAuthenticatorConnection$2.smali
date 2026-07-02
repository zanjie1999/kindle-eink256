.class Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->a(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->g(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->Y()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Application tried to bind to SubAuthenticator but Service timed out."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-static {v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->d(Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$b;->J()V

    .line 184
    iget-object v0, p0, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection$2;->cR:Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;->closeConnection()V

    return-void
.end method
