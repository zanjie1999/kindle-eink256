.class final Lcom/amazon/whispersync/roboguice/RoboGuice$2;
.super Ljava/lang/Object;
.source "RoboGuice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/RoboGuice;->setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/Injector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/amazon/whispersync/com/google/inject/Injector;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$application:Landroid/app/Application;

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 204
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v0

    .line 205
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$100(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 209
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$200(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 213
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    invoke-static {v2, v3}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$300(Ljava/lang/String;Landroid/app/Application;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v2, 0x0

    .line 216
    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    invoke-static {v3, v4}, Lcom/amazon/whispersync/roboguice/RoboGuice;->newDefaultRoboModule(Ljava/lang/String;Landroid/app/Application;)Lcom/amazon/whispersync/roboguice/config/DefaultRoboModule;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 218
    invoke-static {}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$400()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Loading the following Modules:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/whispersync/com/google/inject/Module;

    .line 220
    invoke-static {}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 223
    :cond_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$namespace:Ljava/lang/String;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$application:Landroid/app/Application;

    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    new-array v5, v5, [Lcom/amazon/whispersync/com/google/inject/Module;

    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/amazon/whispersync/com/google/inject/Module;

    invoke-static {v2, v3, v4, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;[Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 224
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 201
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/RoboGuice$2;->call()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method
