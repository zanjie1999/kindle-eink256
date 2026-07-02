.class public Lcom/amazon/whispersync/roboguice/inject/ContextScopedProvider;
.super Ljava/lang/Object;
.source "ContextScopedProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected provider:Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;
    .annotation runtime Lcom/amazon/whispersync/com/google/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 14
    const-class v0, Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedProvider;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-virtual {v1, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v1, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedProvider;->provider:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    :try_start_2
    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedProvider;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/amazon/whispersync/roboguice/inject/ContextScopedProvider;->scope:Lcom/amazon/whispersync/roboguice/inject/ContextScope;

    invoke-virtual {v2, p1}, Lcom/amazon/whispersync/roboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    :catchall_1
    move-exception p1

    .line 21
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1
.end method
