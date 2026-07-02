.class public interface abstract Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
.super Ljava/lang/Object;
.source "LinkedBindingBuilder.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
    }
.end annotation


# virtual methods
.method public abstract to(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract to(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract to(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toConstructor(Ljava/lang/reflect/Constructor;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toConstructor(Ljava/lang/reflect/Constructor;Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>(",
            "Ljava/lang/reflect/Constructor<",
            "TS;>;",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+TS;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toInstance(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public abstract toProvider(Lcom/amazon/whispersync/com/google/inject/Key;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toProvider(Lcom/amazon/whispersync/com/google/inject/Provider;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toProvider(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method

.method public abstract toProvider(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/ScopedBindingBuilder;"
        }
    .end annotation
.end method
