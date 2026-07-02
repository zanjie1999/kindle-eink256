.class final Lcom/amazon/kcp/font/FontDownloadService$1;
.super Ljava/lang/Object;
.source "FontDownloadService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/font/FontDownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/amazon/kcp/font/FontDownloadService$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    .line 99
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$1;->val$context:Landroid/content/Context;

    iget-object p2, p0, Lcom/amazon/kcp/font/FontDownloadService$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 100
    iget-object p1, p0, Lcom/amazon/kcp/font/FontDownloadService$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/amazon/kcp/font/FontDownloadService;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Service has been disconnected"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
