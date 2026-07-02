.class Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;
.super Ljava/lang/Object;
.source "DebugDbDumpController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/hushpuppy/controller/DebugDbDumpController;->onEventAsync(Lcom/audible/hushpuppy/common/event/debug/DbDumpEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/hushpuppy/controller/DebugDbDumpController;


# direct methods
.method constructor <init>(Lcom/audible/hushpuppy/controller/DebugDbDumpController;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 78
    sget-object v0, Lcom/audible/hushpuppy/common/db/HushpuppyDBContract;->HUSHPUPPY_TABLES:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 79
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v5

    const-string v6, "Dump database table [%s] started."

    invoke-interface {v5, v6, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    .line 80
    iget-object v5, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    invoke-static {v5}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$100(Lcom/audible/hushpuppy/controller/DebugDbDumpController;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/audible/hushpuppy/common/debug/DebugUtils;->createPrintWriterForDbDump(Landroid/content/Context;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 82
    iget-object v6, p0, Lcom/audible/hushpuppy/controller/DebugDbDumpController$1;->this$0:Lcom/audible/hushpuppy/controller/DebugDbDumpController;

    invoke-static {v6}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$100(Lcom/audible/hushpuppy/controller/DebugDbDumpController;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v6, v7, v4, v5}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$200(Lcom/audible/hushpuppy/controller/DebugDbDumpController;Landroid/content/ContentResolver;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 83
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 84
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v5

    const-string v6, "Dump database table [%s] finished!"

    invoke-interface {v5, v6, v4}, Lcom/audible/hushpuppy/common/logging/ILogger;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 86
    :cond_0
    invoke-static {}, Lcom/audible/hushpuppy/controller/DebugDbDumpController;->access$000()Lcom/audible/hushpuppy/common/logging/ILogger;

    move-result-object v5

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    const-string v7, "Dump database table [%s] failed! Couldn\'t open dump file."

    aput-object v7, v6, v2

    const/4 v7, 0x1

    aput-object v4, v6, v7

    invoke-interface {v5, v6}, Lcom/audible/hushpuppy/common/logging/ILogger;->e([Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
