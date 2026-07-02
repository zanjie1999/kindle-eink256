.class public Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;
.super Landroid/app/Service;
.source "DCP"


# instance fields
.field private ch:Lcom/amazon/identity/auth/device/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;->ch:Lcom/amazon/identity/auth/device/b;

    .line 1166
    iget-object p1, p1, Lcom/amazon/identity/auth/device/b;->c:Lcom/amazon/identity/auth/device/b$a;

    invoke-virtual {p1}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 21
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 23
    invoke-static {p0}, Lcom/amazon/identity/auth/device/api/MAPInit;->getInstance(Landroid/content/Context;)Lcom/amazon/identity/auth/device/api/MAPInit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPInit;->initialize()V

    .line 25
    new-instance v0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;

    invoke-direct {v0, p0, p0}, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService$1;-><init>(Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/identity/auth/accounts/MAPSubAuthenticatorService;->ch:Lcom/amazon/identity/auth/device/b;

    return-void
.end method
