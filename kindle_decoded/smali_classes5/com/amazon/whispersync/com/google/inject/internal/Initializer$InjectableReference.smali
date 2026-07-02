.class Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;
.super Ljava/lang/Object;
.source "Initializer.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/Initializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/Initializer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InjectableReference"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/Initializable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 111
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    const-string p1, "instance"

    .line 113
    invoke-static {p3, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    const-string/jumbo p1, "source"

    .line 114
    invoke-static {p4, p1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/Errors;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 129
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object p1

    .line 133
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-static {v1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->access$100(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 135
    :try_start_0
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-static {p1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->access$000(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 136
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 139
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 144
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->access$200(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 147
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->options:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl$InjectorOptions;->stage:Lcom/amazon/whispersync/com/google/inject/Stage;

    sget-object v3, Lcom/amazon/whispersync/com/google/inject/Stage;->TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;->injectAndNotify(Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/Errors;Z)V

    .line 150
    :cond_3
    iget-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public validate(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException;
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->instance:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/TypeLiteral;->get(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/TypeLiteral;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->source:Ljava/lang/Object;

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->get(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer$InjectableReference;->membersInjector:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorImpl;

    return-void
.end method
