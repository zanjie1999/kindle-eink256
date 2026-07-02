.class Lcom/amazon/identity/auth/device/x$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/x$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/x;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic bJ:Lcom/amazon/identity/auth/device/x;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/x;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/amazon/identity/auth/device/x$1;->bJ:Lcom/amazon/identity/auth/device/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public A()Lcom/amazon/identity/auth/device/i;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$1;->bJ:Lcom/amazon/identity/auth/device/x;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/x;->A()Lcom/amazon/identity/auth/device/i;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/amazon/identity/auth/device/aj;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/x$1;->bJ:Lcom/amazon/identity/auth/device/x;

    invoke-virtual {v0, p1}, Lcom/amazon/identity/auth/device/x;->a(Lcom/amazon/identity/auth/device/aj;)Lcom/amazon/identity/auth/accounts/SubAuthenticatorConnection;

    move-result-object p1

    return-object p1
.end method
