.class final Lcom/amazon/whispersync/roboguice/RoboGuice$1;
.super Ljava/lang/Object;
.source "RoboGuice.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/roboguice/RoboGuice;->setBaseApplicationInjector(Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;[Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
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

.field final synthetic val$modules:[Lcom/amazon/whispersync/com/google/inject/Module;

.field final synthetic val$namespace:Ljava/lang/String;

.field final synthetic val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;


# direct methods
.method constructor <init>([Lcom/amazon/whispersync/com/google/inject/Module;Ljava/lang/String;Landroid/app/Application;Lcom/amazon/whispersync/com/google/inject/Stage;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$modules:[Lcom/amazon/whispersync/com/google/inject/Module;

    iput-object p2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$namespace:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$application:Landroid/app/Application;

    iput-object p4, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$modules:[Lcom/amazon/whispersync/com/google/inject/Module;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/spi/Elements;->getElements([Lcom/amazon/whispersync/com/google/inject/Module;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/spi/Element;

    .line 144
    new-instance v2, Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;

    invoke-direct {v2, p0}, Lcom/amazon/whispersync/roboguice/RoboGuice$1$1;-><init>(Lcom/amazon/whispersync/roboguice/RoboGuice$1;)V

    invoke-interface {v1, v2}, Lcom/amazon/whispersync/com/google/inject/spi/Element;->acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;

    goto :goto_0

    .line 153
    :cond_0
    const-class v0, Lcom/amazon/whispersync/roboguice/RoboGuice;

    monitor-enter v0

    .line 154
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$modules:[Lcom/amazon/whispersync/com/google/inject/Module;

    invoke-static {v1, v2}, Lcom/amazon/whispersync/com/google/inject/Guice;->createInjector(Lcom/amazon/whispersync/com/google/inject/Stage;[Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v1

    .line 155
    sget-object v2, Lcom/amazon/whispersync/roboguice/RoboGuice;->injectors:Ljava/util/Map;

    iget-object v3, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$namespace:Ljava/lang/String;

    iget-object v4, p0, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->val$application:Landroid/app/Application;

    invoke-static {v2, v3, v4, v1}, Lcom/amazon/whispersync/roboguice/RoboGuice;->access$000(Ljava/util/Map;Ljava/lang/String;Landroid/app/Application;Ljava/lang/Object;)V

    .line 156
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 157
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

    .line 138
    invoke-virtual {p0}, Lcom/amazon/whispersync/roboguice/RoboGuice$1;->call()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method
