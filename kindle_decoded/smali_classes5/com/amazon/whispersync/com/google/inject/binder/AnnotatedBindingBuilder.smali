.class public interface abstract Lcom/amazon/whispersync/com/google/inject/binder/AnnotatedBindingBuilder;
.super Ljava/lang/Object;
.source "AnnotatedBindingBuilder.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract annotatedWith(Ljava/lang/Class;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract annotatedWith(Ljava/lang/annotation/Annotation;)Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/annotation/Annotation;",
            ")",
            "Lcom/amazon/whispersync/com/google/inject/binder/LinkedBindingBuilder<",
            "TT;>;"
        }
    .end annotation
.end method
