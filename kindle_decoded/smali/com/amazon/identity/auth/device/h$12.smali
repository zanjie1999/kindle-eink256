.class Lcom/amazon/identity/auth/device/h$12;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/i$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic O:Landroid/os/Bundle;

.field final synthetic Y:Lcom/amazon/identity/auth/device/api/RegistrationType;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 983
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$12;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$12;->Y:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$12;->O:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$12;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$12;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8

    .line 1003
    invoke-static {}, Lcom/amazon/identity/auth/device/h;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 1004
    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$12;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/h$12;->k:Lcom/amazon/identity/auth/device/api/Callback;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p5

    move-object v7, p4

    invoke-static/range {v1 .. v7}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/MAPError;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;Lcom/amazon/identity/auth/device/api/Callback;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 987
    new-instance p1, Lcom/amazon/identity/auth/device/h$12$1;

    invoke-direct {p1, p0, p2, p3}, Lcom/amazon/identity/auth/device/h$12$1;-><init>(Lcom/amazon/identity/auth/device/h$12;Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/amazon/identity/auth/device/jf;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$12;->k:Lcom/amazon/identity/auth/device/api/Callback;

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/m;->a(Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;)V

    return-void
.end method
