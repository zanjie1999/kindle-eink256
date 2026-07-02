.class Lcom/amazon/identity/auth/device/h$14;
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
.field final synthetic H:Ljava/lang/String;

.field final synthetic K:Landroid/os/Bundle;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic aj:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)V
    .locals 0

    .line 1800
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$14;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$14;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$14;->aj:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$14;->N:Lcom/amazon/identity/auth/device/ej;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$14;->K:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 4

    .line 1805
    new-instance v0, Lcom/amazon/identity/auth/device/h$14$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/identity/auth/device/h$14$1;-><init>(Lcom/amazon/identity/auth/device/h$14;Lcom/amazon/identity/auth/device/api/Callback;)V

    .line 1822
    iget-object p1, p0, Lcom/amazon/identity/auth/device/h$14;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/h$14;->H:Ljava/lang/String;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$14;->N:Lcom/amazon/identity/auth/device/ej;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$14;->K:Landroid/os/Bundle;

    invoke-static {p1, v1, v0, v2, v3}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method
