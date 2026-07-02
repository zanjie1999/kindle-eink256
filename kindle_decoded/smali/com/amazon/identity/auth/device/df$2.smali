.class Lcom/amazon/identity/auth/device/df$2;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/df;->call()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic jm:Lcom/amazon/identity/auth/device/df;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/df;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 120
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/df;->b(Lcom/amazon/identity/auth/device/df;)[Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 122
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/df;->d(Lcom/amazon/identity/auth/device/df;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 124
    monitor-exit v0

    return-void

    .line 127
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/df;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Application timed out trying to bind to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    .line 128
    invoke-static {v5}, Lcom/amazon/identity/auth/device/df;->e(Lcom/amazon/identity/auth/device/df;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 127
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/df;->c(Lcom/amazon/identity/auth/device/df;)Landroid/content/ServiceConnection;

    .line 130
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/amazon/identity/auth/device/df$2;->jm:Lcom/amazon/identity/auth/device/df;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/df;->serviceTimedOut()V

    return-void

    :catchall_0
    move-exception v1

    .line 130
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
