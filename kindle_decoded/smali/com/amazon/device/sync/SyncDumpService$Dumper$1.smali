.class Lcom/amazon/device/sync/SyncDumpService$Dumper$1;
.super Ljava/lang/Object;
.source "SyncDumpService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/sync/SyncDumpService$Dumper;->dump()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;


# direct methods
.method constructor <init>(Lcom/amazon/device/sync/SyncDumpService$Dumper;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$000(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$100(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Requested account is not registered on the device"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v1}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$200(Lcom/amazon/device/sync/SyncDumpService$Dumper;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :goto_0
    iget-object v1, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v1, v0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$302(Lcom/amazon/device/sync/SyncDumpService$Dumper;Z)Z

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 140
    :try_start_1
    iget-object v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v2}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$100(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 141
    iget-object v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v2}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$100(Lcom/amazon/device/sync/SyncDumpService$Dumper;)Ljava/io/PrintWriter;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v1

    .line 145
    iget-object v2, p0, Lcom/amazon/device/sync/SyncDumpService$Dumper$1;->this$0:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-static {v2, v0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->access$302(Lcom/amazon/device/sync/SyncDumpService$Dumper;Z)Z

    throw v1
.end method
