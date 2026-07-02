.class Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;
.super Ljava/lang/Object;
.source "InjectorImpl.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

.field final synthetic val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->this$1:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 976
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->this$1:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;->val$dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    .line 978
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->this$1:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;->val$factory:Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4$1;->this$1:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;

    iget-object v3, v3, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$4;->val$dependency:Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    const/4 v4, 0x0

    invoke-interface {v1, v2, p1, v3, v4}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 980
    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {p1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->setDependency(Lcom/amazon/whispersync/com/google/inject/spi/Dependency;)Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    throw v1
.end method
