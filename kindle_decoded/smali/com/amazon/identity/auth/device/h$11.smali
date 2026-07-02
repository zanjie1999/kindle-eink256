.class Lcom/amazon/identity/auth/device/h$11;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


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


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 962
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$11;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$11;->Y:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$11;->O:Landroid/os/Bundle;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$11;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 4

    .line 967
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$11;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$11;->Y:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$11;->O:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$11;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0, v1, v2, p1, v3}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
