.class public interface abstract Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
.super Ljava/lang/Object;
.source "PrivateBinder.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binder;


# virtual methods
.method public abstract expose(Lcom/amazon/whispersync/com/google/inject/TypeLiteral;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/TypeLiteral<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation
.end method

.method public abstract expose(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedElementBuilder;"
        }
    .end annotation
.end method

.method public abstract expose(Lcom/amazon/whispersync/com/google/inject/Key;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;)V"
        }
    .end annotation
.end method

.method public varargs abstract skipSources([Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
.end method

.method public abstract withSource(Ljava/lang/Object;)Lcom/amazon/whispersync/com/google/inject/PrivateBinder;
.end method
