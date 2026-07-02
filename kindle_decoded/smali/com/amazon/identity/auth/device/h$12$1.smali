.class Lcom/amazon/identity/auth/device/h$12$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/h$12;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Z:Ljava/lang/String;

.field final synthetic aa:Lcom/amazon/identity/auth/device/h$12;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/h$12;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 988
    iput-object p1, p0, Lcom/amazon/identity/auth/device/h$12$1;->aa:Lcom/amazon/identity/auth/device/h$12;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/h$12$1;->Z:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/identity/auth/device/h$12$1;->val$extras:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 993
    iget-object v0, p0, Lcom/amazon/identity/auth/device/h$12$1;->aa:Lcom/amazon/identity/auth/device/h$12;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/h$12;->L:Lcom/amazon/identity/auth/device/h;

    iget-object v2, v0, Lcom/amazon/identity/auth/device/h$12;->Y:Lcom/amazon/identity/auth/device/api/RegistrationType;

    iget-object v3, v0, Lcom/amazon/identity/auth/device/h$12;->O:Landroid/os/Bundle;

    iget-object v4, v0, Lcom/amazon/identity/auth/device/h$12;->k:Lcom/amazon/identity/auth/device/api/Callback;

    iget-object v5, p0, Lcom/amazon/identity/auth/device/h$12$1;->Z:Ljava/lang/String;

    iget-object v6, p0, Lcom/amazon/identity/auth/device/h$12$1;->val$extras:Landroid/os/Bundle;

    iget-object v7, v0, Lcom/amazon/identity/auth/device/h$12;->N:Lcom/amazon/identity/auth/device/ej;

    invoke-static/range {v1 .. v7}, Lcom/amazon/identity/auth/device/h;->a(Lcom/amazon/identity/auth/device/h;Lcom/amazon/identity/auth/device/api/RegistrationType;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/ej;)V

    return-void
.end method
