.class Lcom/amazon/identity/auth/device/h$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)Lcom/amazon/identity/auth/device/api/MAPFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic H:Ljava/lang/String;

.field final synthetic L:Lcom/amazon/identity/auth/device/h;

.field final synthetic M:Ljava/lang/String;

.field final synthetic N:Lcom/amazon/identity/auth/device/ej;

.field final synthetic val$options:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 2154
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$2;->L:Lcom/amazon/identity/auth/device/h;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$2;->H:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$2;->M:Ljava/lang/String;

    iput-object p4, p0, Lcom/amazon/identity/auth/device/h$2;->val$options:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/amazon/identity/auth/device/h$2;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amazon/identity/auth/device/api/Callback;)Landroid/os/Bundle;
    .locals 7

    .line 2159
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$2;->L:Lcom/amazon/identity/auth/device/h;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/h;->g(Lcom/amazon/identity/auth/device/h;)Lcom/amazon/identity/auth/device/ae;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/identity/auth/device/h$2;->H:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/h$2;->M:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/h$2;->val$options:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h$2;->N:Lcom/amazon/identity/auth/device/ej;

    move-object v5, p1

    invoke-virtual/range {v1 .. v6}, Lcom/amazon/identity/auth/device/ae;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/ej;)V

    const/4 p1, 0x0

    return-object p1
.end method
