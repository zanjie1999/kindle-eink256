.class public final Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;
.super Ljava/lang/Object;
.source "InternalInjectorCreator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;
    }
.end annotation


# instance fields
.field private final bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

.field private final errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

.field private final initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

.field private final injectionRequestProcessor:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

.field private final shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

.field private shells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;",
            ">;"
        }
    .end annotation
.end field

.field private final stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    .line 61
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    .line 63
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    .line 67
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    .line 71
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    invoke-direct {v0, v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;Lcom/amazon/whispersync/com/google/inject/internal/Initializer;)V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->injectionRequestProcessor:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    .line 72
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    invoke-direct {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;-><init>()V

    iput-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    return-void
.end method

.method private initializeStatically()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->initializeBindings()V

    .line 123
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Binding initialization"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;

    .line 126
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->index()V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Binding indexing"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->injectionRequestProcessor:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->process(Ljava/lang/Iterable;)V

    .line 131
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Collecting injection requests"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;->runCreationListeners(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 134
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Binding validation"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->injectionRequestProcessor:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->validate()V

    .line 137
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Static validation"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->validateOustandingInjections(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 140
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Instance member validation"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/LookupProcessor;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/AbstractProcessor;->process(Ljava/lang/Iterable;)V

    .line 143
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;

    .line 144
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->lookups:Lcom/amazon/whispersync/com/google/inject/internal/Lookups;

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/DeferredLookups;->initialize(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    goto :goto_1

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Provider verification"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;

    .line 149
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to execute "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getElements()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    return-void
.end method

.method private injectDynamically()V
    .locals 4

    .line 170
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->injectionRequestProcessor:Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectionRequestProcessor;->injectMembers()V

    .line 171
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Static member injection"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/Initializer;->injectAll(Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    .line 174
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Instance injection"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    .line 177
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->getStage()Lcom/amazon/whispersync/com/google/inject/Stage;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Stage;->TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;

    if-eq v0, v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;

    .line 179
    invoke-virtual {v1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->getStage()Lcom/amazon/whispersync/com/google/inject/Stage;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {p0, v1, v2, v3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->loadEagerSingletons(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v1, "Preloading singletons"

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 183
    :cond_1
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/Errors;->throwCreationExceptionIfErrorsExist()V

    return-void
.end method

.method private isEagerSingleton(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/Stage;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;",
            "Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Stage;",
            ")Z"
        }
    .end annotation

    .line 222
    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;->getScoping()Lcom/amazon/whispersync/com/google/inject/internal/Scoping;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amazon/whispersync/com/google/inject/internal/Scoping;->isEagerSingleton(Lcom/amazon/whispersync/com/google/inject/Stage;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 229
    :cond_0
    instance-of v0, p2, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    if-eqz v0, :cond_1

    .line 230
    check-cast p2, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;

    invoke-virtual {p2}, Lcom/amazon/whispersync/com/google/inject/internal/LinkedBindingImpl;->getLinkedKey()Lcom/amazon/whispersync/com/google/inject/Key;

    move-result-object p2

    .line 231
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->isEagerSingleton(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/Stage;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private primaryInjector()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell;->getInjector()Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addModules(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->addModules(Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public build()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 6

    .line 96
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    if-eqz v0, :cond_1

    .line 102
    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->lock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 103
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    iget-object v2, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializer:Lcom/amazon/whispersync/com/google/inject/internal/Initializer;

    iget-object v3, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->bindingData:Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;

    iget-object v4, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    iget-object v5, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->errors:Lcom/amazon/whispersync/com/google/inject/internal/Errors;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->build(Lcom/amazon/whispersync/com/google/inject/internal/Initializer;Lcom/amazon/whispersync/com/google/inject/internal/ProcessedBindingData;Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shells:Ljava/util/List;

    .line 104
    iget-object v1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->stopwatch:Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;

    const-string v2, "Injector construction"

    invoke-virtual {v1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 106
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->initializeStatically()V

    .line 107
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->injectDynamically()V

    .line 111
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v0}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->getStage()Lcom/amazon/whispersync/com/google/inject/Stage;

    move-result-object v0

    sget-object v1, Lcom/amazon/whispersync/com/google/inject/Stage;->TOOL:Lcom/amazon/whispersync/com/google/inject/Stage;

    if-ne v0, v1, :cond_0

    .line 114
    new-instance v0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;

    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->primaryInjector()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;-><init>(Lcom/amazon/whispersync/com/google/inject/Injector;)V

    return-object v0

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->primaryInjector()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 107
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 97
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Already built, builders are not reusable."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method loadEagerSingletons(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/Stage;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V
    .locals 3

    .line 192
    iget-object v0, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->state:Lcom/amazon/whispersync/com/google/inject/internal/State;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/internal/State;->getExplicitBindingsThisLevel()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p1, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->jitBindings:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/whispersync/com/google/inject/internal/util/$Iterables;->concat(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;->copyOf(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/internal/util/$ImmutableList;

    move-result-object v0

    .line 195
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;

    .line 196
    invoke-direct {p0, p1, v1, p2}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->isEagerSingleton(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/Stage;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 198
    :try_start_0
    new-instance v2, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;

    invoke-direct {v2, p0, v1, p3}, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$1;-><init>(Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;Lcom/amazon/whispersync/com/google/inject/internal/BindingImpl;Lcom/amazon/whispersync/com/google/inject/internal/Errors;)V

    invoke-virtual {p1, v2}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;->callInContext(Lcom/amazon/whispersync/com/google/inject/internal/ContextualCallable;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/amazon/whispersync/com/google/inject/internal/ErrorsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 215
    :catch_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    return-void
.end method

.method public parentInjector(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->parent(Lcom/amazon/whispersync/com/google/inject/internal/InjectorImpl;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    return-object p0
.end method

.method public stage(Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;->shellBuilder:Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    invoke-virtual {v0, p1}, Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;->stage(Lcom/amazon/whispersync/com/google/inject/Stage;)Lcom/amazon/whispersync/com/google/inject/internal/InjectorShell$Builder;

    return-object p0
.end method
