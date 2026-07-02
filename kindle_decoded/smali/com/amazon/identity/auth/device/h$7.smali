.class Lcom/amazon/identity/auth/device/h$7;
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
.field final synthetic K:Landroid/os/Bundle;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic U:Ljava/util/Set;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 0

    .line 606
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$7;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$7;->U:Ljava/util/Set;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$7;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$7;->K:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 4

    .line 610
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$7;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$7;->U:Ljava/util/Set;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$7;->N:Lcom/amazon/identity/auth/device/ej;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$7;->K:Landroid/os/Bundle;

    invoke-static {v0, v1, p1, v2, v3}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/util/Set;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
