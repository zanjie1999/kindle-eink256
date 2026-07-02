.class Lcom/amazon/identity/auth/device/bi$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/bi;->bq()V
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

    .line 93
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bi;->c(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/bi;->b(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 98
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 100
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SERVICE_AVAILABLE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const-string v2, "No service was found"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/bi;->d(Ljava/util/List;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 111
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    sget-object v1, Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;->NO_SIGNATURE:Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;

    const-string v2, "No app found with valid signature"

    invoke-static {v0, v1, v2}, Lcom/amazon/identity/auth/device/bi;->a(Lcom/amazon/identity/auth/device/bi;Lcom/amazon/identity/auth/device/api/MAPAccountManager$BootstrapError;Ljava/lang/String;)V

    return-void

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/bi;->b(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 117
    invoke-static {}, Lcom/amazon/identity/auth/device/bi;->access$200()Ljava/lang/String;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Service found. Starting service with package %s and class %s"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bi;->d(Lcom/amazon/identity/auth/device/bi;)Ljava/util/Timer;

    move-result-object v0

    new-instance v1, Lcom/amazon/identity/auth/device/bi$a;

    iget-object v4, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-direct {v1, v4, v3}, Lcom/amazon/identity/auth/device/bi$a;-><init>(Lcom/amazon/identity/auth/device/bi;B)V

    const-wide/16 v3, 0x1388

    invoke-virtual {v0, v1, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 119
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/bi;->c(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/bi;->b(Lcom/amazon/identity/auth/device/bi;)Landroid/content/Intent;

    move-result-object v1

    iget-object v3, p0, Lcom/amazon/identity/auth/device/bi$2;->gY:Lcom/amazon/identity/auth/device/bi;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/bi;->e(Lcom/amazon/identity/auth/device/bi;)Landroid/content/ServiceConnection;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method
