.class Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;
.super Ljava/lang/Object;
.source "ServiceBinder.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->startBind()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$000(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {v0}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$100(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Binding:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v0, v1, :cond_0

    .line 138
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$000(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 130
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {v0, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$202(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {p2, p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$302(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    .line 132
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    sget-object p2, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;->Bound:Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    invoke-static {p1, p2}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$102(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;)Lcom/amazon/whispersync/dcp/framework/ServiceBinder$State;

    .line 134
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$400(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/locks/Condition;->signalAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$000(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-static {p2}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->access$000(Lcom/amazon/whispersync/dcp/framework/ServiceBinder;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/ServiceBinder$1;->this$0:Lcom/amazon/whispersync/dcp/framework/ServiceBinder;

    invoke-virtual {p1}, Lcom/amazon/whispersync/dcp/framework/ServiceBinder;->unbind()V

    return-void
.end method
