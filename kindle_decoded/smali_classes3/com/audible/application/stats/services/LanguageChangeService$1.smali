.class Lcom/audible/application/stats/services/LanguageChangeService$1;
.super Ljava/lang/Object;
.source "LanguageChangeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/application/stats/services/LanguageChangeService;->onStartCommand(Landroid/content/Intent;II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/application/stats/services/LanguageChangeService;


# direct methods
.method constructor <init>(Lcom/audible/application/stats/services/LanguageChangeService;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v0, 0x0

    .line 35
    :try_start_0
    iget-object v1, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-virtual {v1}, Lcom/audible/application/stats/services/LanguageChangeService;->execute()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    iget-object v1, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-static {v1}, Lcom/audible/application/stats/services/LanguageChangeService;->access$000(Lcom/audible/application/stats/services/LanguageChangeService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 40
    iget-object v0, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 37
    :try_start_1
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 39
    :goto_2
    iget-object v2, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-static {v2}, Lcom/audible/application/stats/services/LanguageChangeService;->access$000(Lcom/audible/application/stats/services/LanguageChangeService;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 40
    iget-object v0, p0, Lcom/audible/application/stats/services/LanguageChangeService$1;->this$0:Lcom/audible/application/stats/services/LanguageChangeService;

    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    throw v1
.end method
