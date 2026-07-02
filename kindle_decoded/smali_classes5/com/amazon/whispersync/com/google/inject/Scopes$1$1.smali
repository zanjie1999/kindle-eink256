.class Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;
.super Ljava/lang/Object;
.source "Scopes.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/whispersync/com/google/inject/Scopes$1;->scope(Lcom/amazon/whispersync/com/google/inject/Key;Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/Provider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private volatile instance:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/Scopes$1;

.field final synthetic val$creator:Lcom/amazon/whispersync/com/google/inject/Provider;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Scopes$1;Lcom/amazon/whispersync/com/google/inject/Provider;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->this$0:Lcom/amazon/whispersync/com/google/inject/Scopes$1;

    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->val$creator:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-nez v0, :cond_5

    .line 63
    const-class v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 65
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->val$creator:Lcom/amazon/whispersync/com/google/inject/Provider;

    invoke-interface {v1}, Lcom/amazon/whispersync/com/google/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    .line 68
    instance-of v2, v1, Lcom/amazon/whispersync/com/google/inject/internal/CircularDependencyProxy;

    if-eqz v2, :cond_0

    .line 69
    monitor-exit v0

    return-object v1

    :cond_0
    if-nez v1, :cond_1

    .line 72
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/Scopes;->access$000()Ljava/lang/Object;

    move-result-object v1

    .line 73
    :cond_1
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    if-ne v2, v1, :cond_2

    goto :goto_0

    .line 74
    :cond_2
    new-instance v1, Lcom/amazon/whispersync/com/google/inject/ProvisionException;

    const-string v2, "Provider was reentrant while creating a singleton"

    invoke-direct {v1, v2}, Lcom/amazon/whispersync/com/google/inject/ProvisionException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 78
    :cond_3
    :goto_0
    iput-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    .line 80
    :cond_4
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 83
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->instance:Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/amazon/whispersync/com/google/inject/Scopes;->access$000()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 91
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/Scopes$1$1;->val$creator:Lcom/amazon/whispersync/com/google/inject/Provider;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Scopes;->SINGLETON:Lcom/amazon/whispersync/com/google/inject/Scope;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "%s[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
