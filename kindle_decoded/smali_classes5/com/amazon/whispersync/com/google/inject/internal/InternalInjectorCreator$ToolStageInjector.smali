.class Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;
.super Ljava/lang/Object;
.source "InternalInjectorCreator.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Injector;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ToolStageInjector"
.end annotation


# instance fields
.field private final delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;


# direct methods
.method constructor <init>(Lcom/amazon/whispersync/com/google/inject/Injector;)V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 242
    iput-object p1, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    return-void
.end method


# virtual methods
.method public createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/amazon/whispersync/com/google/inject/Module;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/Injector;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->createChildInjector(Ljava/lang/Iterable;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public varargs createChildInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->createChildInjector([Lcom/amazon/whispersync/com/google/inject/Module;)Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object p1

    return-object p1
.end method

.method public findBindingsByType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;>;"
        }
    .end annotation

    .line 264
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->findBindingsByType(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getAllBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 252
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getAllBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getBinding(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBinding(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "*>;>;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0, p1}, Lcom/amazon/whispersync/com/google/inject/Injector;->getExistingBinding(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Binding;

    move-result-object p1

    return-object p1
.end method

.method public getInstance(Lcom/amazon/whispersync/com/google/inject/Key;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 298
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getInstance(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 302
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getInstance(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMembersInjector(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 290
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getMembersInjector(TypeLiteral<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMembersInjector(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/MembersInjector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/MembersInjector<",
            "TT;>;"
        }
    .end annotation

    .line 294
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getMembersInjector(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParent()Lcom/amazon/whispersync/com/google/inject/Injector;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getParent()Lcom/amazon/whispersync/com/google/inject/Injector;

    move-result-object v0

    return-object v0
.end method

.method public getProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 282
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getProvider(Key<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/Provider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "TT;>;"
        }
    .end annotation

    .line 286
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.getProvider(Class<T>) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getScopeBindings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getScopeBindings()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTypeConverterBindings()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ">;"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/amazon/whispersync/com/google/inject/internal/InternalInjectorCreator$ToolStageInjector;->delegateInjector:Lcom/amazon/whispersync/com/google/inject/Injector;

    invoke-interface {v0}, Lcom/amazon/whispersync/com/google/inject/Injector;->getTypeConverterBindings()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public injectMembers(Ljava/lang/Object;)V
    .locals 1

    .line 245
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Injector.injectMembers(Object) is not supported in Stage.TOOL"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
