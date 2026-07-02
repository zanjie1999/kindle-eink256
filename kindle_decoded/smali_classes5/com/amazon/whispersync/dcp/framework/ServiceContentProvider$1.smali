.class Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;
.super Ljava/lang/Object;
.source "ServiceContentProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-virtual {v0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->setContext(Landroid/content/Context;)V

    .line 250
    invoke-static {}, Lcom/amazon/whispersync/dcp/settings/SettingsCache;->waitForInitialSync()V

    .line 252
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$200(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$300(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)V

    .line 257
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$400(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/Condition;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$200(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;

    invoke-static {v1}, Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;->access$200(Lcom/amazon/whispersync/dcp/framework/ServiceContentProvider;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v0
.end method
