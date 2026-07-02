.class public abstract Lcom/amazon/identity/auth/device/b;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/b$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.b"


# instance fields
.field public c:Lcom/amazon/identity/auth/device/b$a;

.field protected final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Lcom/amazon/identity/auth/device/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/amazon/identity/auth/device/b$a;-><init>(Lcom/amazon/identity/auth/device/b;B)V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/b;->c:Lcom/amazon/identity/auth/device/b$a;

    .line 81
    iput-object p1, p0, Lcom/amazon/identity/auth/device/b;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/amazon/identity/auth/device/b;)V
    .locals 0

    .line 1176
    iget-object p0, p0, Lcom/amazon/identity/auth/device/b;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/amazon/identity/auth/device/ix;->aF(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/amazon/identity/auth/device/b;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;)V
.end method

.method public abstract a(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
.end method

.method public b(Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/dcp/sso/IAmazonAccountAuthenticator;)V
    .locals 0

    const/4 p2, 0x6

    :try_start_0
    const-string p4, "Unsupported for token type: "

    .line 266
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Lcom/amazon/dcp/sso/ISubAuthenticatorResponse;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 271
    sget-object p2, Lcom/amazon/identity/auth/device/b;->TAG:Ljava/lang/String;

    const-string p3, "An unexpected remote exception occured during updateAuthTokens."

    invoke-static {p2, p3, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
