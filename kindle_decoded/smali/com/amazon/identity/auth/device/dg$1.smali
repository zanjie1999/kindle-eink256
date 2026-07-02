.class Lcom/amazon/identity/auth/device/dg$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/dg;->f(Lcom/amazon/identity/auth/device/dg$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic js:Lcom/amazon/identity/auth/device/dg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/dg;)V
    .locals 0

    .line 322
    iput-object p1, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 327
    iget-object v0, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    monitor-enter v0

    .line 329
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/dg;->a(Lcom/amazon/identity/auth/device/dg;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    monitor-exit v0

    return-void

    .line 334
    :cond_0
    invoke-static {}, Lcom/amazon/identity/auth/device/dg;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Application timed out trying to bind to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-static {v3}, Lcom/amazon/identity/auth/device/dg;->b(Lcom/amazon/identity/auth/device/dg;)Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    iget-object v1, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/dg;->c(Lcom/amazon/identity/auth/device/dg;)Ljava/util/List;

    move-result-object v1

    .line 338
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/dg;->d(Lcom/amazon/identity/auth/device/dg;)Ljava/util/List;

    .line 339
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v2, "BindTimeout"

    .line 343
    invoke-static {v2, v0}, Lcom/amazon/identity/auth/device/mn;->b(Ljava/lang/String;[Ljava/lang/String;)V

    .line 344
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/identity/auth/device/dg$a;

    .line 346
    iget-object v2, p0, Lcom/amazon/identity/auth/device/dg$1;->js:Lcom/amazon/identity/auth/device/dg;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/dg;->e(Lcom/amazon/identity/auth/device/dg;)Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/amazon/identity/auth/device/dg$b;

    invoke-direct {v3, v1}, Lcom/amazon/identity/auth/device/dg$b;-><init>(Lcom/amazon/identity/auth/device/dg$a;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 339
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
