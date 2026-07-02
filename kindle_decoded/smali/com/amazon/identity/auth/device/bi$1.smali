.class Lcom/amazon/identity/auth/device/bi$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/bi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic gY:Lcom/amazon/identity/auth/device/bi;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/bi;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi$1;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 48
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bi$1;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bi$1;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {p2}, Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/bootstrapSSO/IBootstrapSSOService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 55
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bi$1;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unexpectedly disconnected from service"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bi$1;->gY:Lcom/amazon/identity/auth/device/bi;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->SERVICE_ERROR:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void
.end method
