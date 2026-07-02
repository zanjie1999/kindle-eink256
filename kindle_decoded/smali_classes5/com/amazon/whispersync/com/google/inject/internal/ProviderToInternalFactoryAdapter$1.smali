.class Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;
.super Ljava/lang/Object;
.source "ProviderToInternalFactoryAdapter.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->get()Ljava/lang/Object;
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
.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;

.field final synthetic val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;)Ljava/lang/Object;
    .locals 4
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

    .line 42
    invoke-virtual {p1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;->getDependency()Lcom/amazon/whispersync/com/google/inject/spi/Dependency;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter;)Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProviderToInternalFactoryAdapter$1;->val$errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    const/4 v3, 0x1

    invoke-interface {v1, v2, p1, v0, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalFactory;->get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/InternalContext;Lcom/amazon/whispersync/com/google/inject/spi/Dependency;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
