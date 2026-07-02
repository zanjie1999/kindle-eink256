.class Lcom/amazon/identity/auth/device/api/MAPInit$3;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/api/MAPInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gB:Lcom/amazon/identity/auth/device/api/MAPInit;

.field final synthetic gC:Lcom/amazon/identity/auth/device/ms;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/api/MAPInit;Lcom/amazon/identity/auth/device/ms;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$3;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/api/MAPInit$3;->gC:Lcom/amazon/identity/auth/device/ms;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 205
    :try_start_0
    new-instance v0, Lcom/amazon/identity/auth/device/dq;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$3;->gB:Lcom/amazon/identity/auth/device/api/MAPInit;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/api/MAPInit;->a(Lcom/amazon/identity/auth/device/api/MAPInit;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/dq;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/dq;->db()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 209
    iget-object v0, p0, Lcom/amazon/identity/auth/device/api/MAPInit$3;->gC:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ms;->stop()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/api/MAPInit$3;->gC:Lcom/amazon/identity/auth/device/ms;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ms;->stop()V

    .line 210
    throw v0
.end method
