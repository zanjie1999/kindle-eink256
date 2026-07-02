.class public Lcom/amazon/device/sync/SyncDumpService;
.super Landroid/app/Service;
.source "SyncDumpService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/sync/SyncDumpService$Dumper;,
        Lcom/amazon/device/sync/SyncDumpService$ArgumentException;
    }
.end annotation


# instance fields
.field private mDumper:Lcom/amazon/device/sync/SyncDumpService$Dumper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/amazon/device/sync/SyncDumpService;->mDumper:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 268
    array-length p1, p3

    if-nez p1, :cond_1

    .line 270
    iget-object p1, p0, Lcom/amazon/device/sync/SyncDumpService;->mDumper:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    if-eqz p1, :cond_0

    .line 272
    invoke-virtual {p1, p2}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->report(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    const-string p1, "No dump was requested"

    .line 276
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    invoke-static {p2}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->printUsage(Ljava/io/PrintWriter;)V

    :goto_0
    return-void

    .line 285
    :cond_1
    :try_start_0
    new-instance p1, Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-direct {p1, p0}, Lcom/amazon/device/sync/SyncDumpService$Dumper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amazon/device/sync/SyncDumpService;->mDumper:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    .line 286
    invoke-virtual {p1, p3}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->parseCommandLine([Ljava/lang/String;)V

    .line 287
    iget-object p1, p0, Lcom/amazon/device/sync/SyncDumpService;->mDumper:Lcom/amazon/device/sync/SyncDumpService$Dumper;

    invoke-virtual {p1}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->dump()V
    :try_end_0
    .catch Lcom/amazon/device/sync/SyncDumpService$ArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string p3, "Operation failed:"

    .line 296
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 291
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 292
    invoke-static {p2}, Lcom/amazon/device/sync/SyncDumpService$Dumper;->printUsage(Ljava/io/PrintWriter;)V

    :goto_1
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    .line 261
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 262
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 254
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p1, 0x1

    return p1
.end method
