.class Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1;
.super Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;
.source "SyncBoundServiceCaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;Landroid/content/Context;Landroid/content/Intent;I)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1;->this$0:Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;

    invoke-direct {p0, p2, p3, p4}, Lcom/amazon/whispersync/dcp/framework/BoundServiceCaller;-><init>(Landroid/content/Context;Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected useService(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 34
    invoke-static {}, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller;->access$000()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1$1;-><init>(Lcom/amazon/whispersync/dcp/framework/SyncBoundServiceCaller$1;Landroid/content/ComponentName;Landroid/os/IBinder;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected useService(Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method
