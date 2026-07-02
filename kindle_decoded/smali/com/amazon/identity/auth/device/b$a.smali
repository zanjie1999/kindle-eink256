.class public Lcom/amazon/identity/auth/device/b$a;
.super Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic d:Lcom/amazon/identity/auth/device/b;


# direct methods
.method private constructor <init>(Lcom/amazon/identity/auth/device/b;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    invoke-direct {p0}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/identity/auth/device/b;B)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/b$a;-><init>(Lcom/amazon/identity/auth/device/b;)V

    return-void
.end method


# virtual methods
.method public getAccountRemovalAllowed(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/b;->a(Lcom/amazon/identity/auth/device/b;)V

    .line 139
    iget-object v0, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    new-instance v1, Landroid/accounts/Account;

    invoke-direct {v1, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Lcom/amazon/identity/auth/device/b;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;)V

    return-void
.end method

.method public getAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 7

    .line 94
    iget-object v0, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/b;->a(Lcom/amazon/identity/auth/device/b;)V

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/b;->a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    return-void

    .line 98
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/identity/auth/device/b;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid parameter passed to getAuthToken"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 151
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/amazon/dcp/sso/ISubAuthenticator$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 155
    invoke-static {}, Lcom/amazon/identity/auth/device/b;->access$200()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Unexpected Runtime Exception"

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 156
    throw p1
.end method

.method public updateAuthToken(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 7

    .line 117
    iget-object v0, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/b;->a(Lcom/amazon/identity/auth/device/b;)V

    if-eqz p1, :cond_1

    if-nez p6, :cond_0

    goto :goto_0

    .line 125
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/b$a;->d:Lcom/amazon/identity/auth/device/b;

    new-instance v3, Landroid/accounts/Account;

    invoke-direct {v3, p3, p2}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, p1

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/b;->b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V

    return-void

    .line 121
    :cond_1
    :goto_0
    invoke-static {}, Lcom/amazon/identity/auth/device/b;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Invalid parameter passed to updateAuthTokens"

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
