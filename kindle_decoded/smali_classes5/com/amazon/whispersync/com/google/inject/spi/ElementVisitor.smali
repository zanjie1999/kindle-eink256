.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;
.super Ljava/lang/Object;
.source "ElementVisitor.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/Binding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/Binding<",
            "TT;>;)TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/DisableCircularProxiesOption;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionRequest<",
            "*>;)TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/MembersInjectorLookup<",
            "TT;>;)TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/Message;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/Message;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderLookup<",
            "TT;>;)TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/RequireExplicitBindingsOption;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ScopeBinding;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/StaticInjectionRequest;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visit(Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/spi/TypeListenerBinding;",
            ")TV;"
        }
    .end annotation
.end method
