.class Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;
.super Ljava/lang/Object;
.source "ProcessedBindingData.java"


# instance fields
.field private final creationListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;",
            ">;"
        }
    .end annotation
.end field

.field private final uninitializedBindings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->creationListeners:Ljava/util/List;

    .line 32
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->uninitializedBindings:Ljava/util/List;

    return-void
.end method


# virtual methods
.method addCreationListener(Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->creationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addUninitializedBinding(Ljava/lang/Runnable;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->uninitializedBindings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method initializeBindings()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->uninitializedBindings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 44
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method runCreationListeners(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->creationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;

    .line 50
    invoke-interface {v1, p1}, Lcom/amazon/whispersync/com/google/inject/internal/CreationListener;->notify(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    goto :goto_0

    :cond_0
    return-void
.end method
