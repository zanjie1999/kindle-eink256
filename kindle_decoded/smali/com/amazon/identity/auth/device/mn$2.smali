.class final Lcom/amazon/identity/auth/device/mn$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/api/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/mn;->a(Lcom/amazon/identity/auth/device/ej;Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;ZLjava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic aM:Lcom/amazon/identity/auth/device/ed;

.field final synthetic gC:Lcom/amazon/identity/auth/device/ms;

.field final synthetic k:Lcom/amazon/identity/auth/device/api/Callback;

.field final synthetic vi:Z

.field final synthetic vj:Lcom/amazon/identity/auth/device/gv;

.field final synthetic vk:Ljava/lang/String;

.field final synthetic vl:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ms;Lcom/amazon/identity/auth/device/ej;ZLcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;Lcom/amazon/identity/auth/device/ed;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lcom/amazon/identity/auth/device/mn$2;->gC:Lcom/amazon/identity/auth/device/ms;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    iput-boolean p3, p0, Lcom/amazon/identity/auth/device/mn$2;->vi:Z

    iput-object p4, p0, Lcom/amazon/identity/auth/device/mn$2;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/mn$2;->vj:Lcom/amazon/identity/auth/device/gv;

    iput-object p6, p0, Lcom/amazon/identity/auth/device/mn$2;->aM:Lcom/amazon/identity/auth/device/ed;

    iput-object p7, p0, Lcom/amazon/identity/auth/device/mn$2;->vk:Ljava/lang/String;

    iput-object p8, p0, Lcom/amazon/identity/auth/device/mn$2;->vl:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Lcom/amazon/identity/auth/device/ed;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "dcp_device_info"

    .line 669
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    .line 670
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ea;->getDeviceType()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 6

    .line 629
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->vj:Lcom/amazon/identity/auth/device/gv;

    if-eqz v0, :cond_0

    .line 631
    invoke-static {}, Lcom/amazon/identity/auth/device/mn;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 632
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->vj:Lcom/amazon/identity/auth/device/gv;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/gv;->onFinish(Landroid/os/Bundle;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->gC:Lcom/amazon/identity/auth/device/ms;

    if-eqz v0, :cond_1

    .line 636
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 639
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_3

    const-string v0, "com.amazon.map.error.errorType"

    .line 642
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 645
    iget-object v3, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "MAPError:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/String;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/mn$2;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p0, v5}, Lcom/amazon/identity/auth/device/mn$2;->e(Lcom/amazon/identity/auth/device/ed;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, v0, v4}, Lcom/amazon/identity/auth/device/ej;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 649
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->vk:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/mn$2;->vl:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-virtual {v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->value()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 650
    iget-object v3, p0, Lcom/amazon/identity/auth/device/mn$2;->vl:Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    invoke-static {v0, v3}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->fromValue(ILcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;)Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/api/MAPAccountManager$RegistrationError;->getName()Ljava/lang/String;

    move-result-object v0

    .line 651
    iget-object v3, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "Error:"

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/mn$2;->aM:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/mn$2;->e(Lcom/amazon/identity/auth/device/ed;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    invoke-virtual {v3, v0, v2}, Lcom/amazon/identity/auth/device/ej;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 656
    :cond_3
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->k:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_4

    .line 658
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onError(Landroid/os/Bundle;)V

    :cond_4
    return-void
.end method

.method public onSuccess(Landroid/os/Bundle;)V
    .locals 2

    .line 606
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->gC:Lcom/amazon/identity/auth/device/ms;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    if-eqz v0, :cond_2

    .line 613
    iget-boolean v1, p0, Lcom/amazon/identity/auth/device/mn$2;->vi:Z

    if-eqz v1, :cond_1

    const-string v1, "Success"

    .line 615
    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/ej;->bA(Ljava/lang/String;)V

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ej;->ea()V

    .line 620
    :cond_2
    iget-object v0, p0, Lcom/amazon/identity/auth/device/mn$2;->k:Lcom/amazon/identity/auth/device/api/Callback;

    if-eqz v0, :cond_3

    .line 622
    invoke-interface {v0, p1}, Lcom/amazon/identity/auth/device/api/Callback;->onSuccess(Landroid/os/Bundle;)V

    :cond_3
    return-void
.end method
