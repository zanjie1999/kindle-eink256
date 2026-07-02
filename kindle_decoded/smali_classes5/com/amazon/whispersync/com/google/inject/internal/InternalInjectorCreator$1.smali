.class Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;
.super Ljava/lang/Object;
.source "InternalInjectorCreator.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->loadEagerSingletons(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

.field final synthetic val$binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

.field final synthetic val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/spi/Dependency;->get(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Void;
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    .line 202
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v1

    .line 204
    :try_start_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->val$binding:Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getInternalFactory()Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;->dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v4, 0x0

    invoke-interface {v2, v1, p1, v3, v4}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    .line 206
    :try_start_1
    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;->getErrors()Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_0
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 p1, 0x0

    return-object p1

    :goto_1
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    throw v1
.end method
