.class Lcom/audible/hushpuppy/controller/DebugModelDumpController$1;
.super Ljava/lang/Object;
.source "DebugModelDumpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/DebugModelDumpController;->onEventAsync(Lcom/audible/hushpuppy/common/event/debug/ModelDumpEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/DebugModelDumpController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/DebugModelDumpController;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DebugModelDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 112
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Dumping models ..."

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/audible/hushpuppy/controller/DebugModelDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    invoke-static {v0}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$100(Lcom/audible/hushpuppy/controller/DebugModelDumpController;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 115
    monitor-enter v1

    .line 116
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v3

    const-string v4, "Dumping [%s] started"

    invoke-interface {v3, v4, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 118
    iget-object v3, p0, Lcom/audible/hushpuppy/controller/DebugModelDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    invoke-static {v3}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$200(Lcom/audible/hushpuppy/controller/DebugModelDumpController;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/audible/hushpuppy/common/debug/DebugUtils;->createPrintWriterForModelDump(Landroid/content/Context;Ljava/lang/Object;)Ljava/io/PrintWriter;

    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/audible/hushpuppy/controller/DebugModelDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugModelDumpController;

    const-string v5, ""

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-static {v4, v3, v1, v5, v6}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$300(Lcom/audible/hushpuppy/controller/DebugModelDumpController;Ljava/io/PrintWriter;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Set;)V

    .line 120
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 121
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v3

    const-string v4, "Dumping [%s] finished!"

    invoke-interface {v3, v4, v2}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 122
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 125
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugModelDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v0

    const-string v1, "Dumping models finished!"

    invoke-interface {v0, v1}, Lcom/audible/hushpuppy/common/logging/ILogger;->i(Ljava/lang/String;)V

    return-void
.end method
