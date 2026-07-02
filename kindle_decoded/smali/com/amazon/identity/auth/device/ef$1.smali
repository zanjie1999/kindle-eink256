.class Lcom/amazon/identity/auth/device/ef$1;
.super Lcom/amazon/identity/auth/device/df;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/ef;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ln:Lcom/amazon/identity/auth/device/ef;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/ef;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ef$1;->ln:Lcom/amazon/identity/auth/device/ef;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/identity/auth/device/df;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/amazon/identity/auth/device/ef;->dW()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/ef$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/identity/auth/device/ef$1$1;-><init>(Lcom/amazon/identity/auth/device/ef$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected useService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
