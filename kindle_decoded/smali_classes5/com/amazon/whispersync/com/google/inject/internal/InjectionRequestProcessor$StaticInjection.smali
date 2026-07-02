.class Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;
.super Ljava/lang/Object;
.source "InjectionRequestProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaticInjection"
.end annotation


# instance fields
.field final injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

.field memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList<",
            "Lcom/amazon/whispersync/com/google/inject/internal/SingleMemberInjector;",
            ">;"
        }
    .end annotation
.end field

.field final request:Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;

.field final source:Ljava/lang/Object;

.field final synthetic this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-object p2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    .line 91
    invoke-virtual {p3}, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->getSource()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    .line 92
    iput-object p3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;

    return-void
.end method


# virtual methods
.method injectMembers()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    new-instance v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;

    invoke-direct {v1, p0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;)V

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->callInContext(Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 123
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method validate()V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    iget-object v0, v0, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->source:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    move-result-object v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->request:Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;->getInjectionPoints()Ljava/util/Set;

    move-result-object v1
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/ConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 101
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->this$0:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getErrorMessages()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->merge(Ljava/util/Collection;)Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 102
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/ConfigurationException;->getPartialValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 104
    :goto_0
    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->injector:Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    iget-object v2, v2, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->membersInjectorStore:Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;

    invoke-virtual {v2, v1, v0}, Lcom/amazon/whispersync/com/google/inject/internal/MembersInjectorStore;->getInjectors(Ljava/util/Set;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor$StaticInjection;->memberInjectors:Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    return-void
.end method
