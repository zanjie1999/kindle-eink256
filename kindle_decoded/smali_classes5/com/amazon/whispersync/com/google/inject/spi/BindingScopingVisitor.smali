.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/BindingScopingVisitor;
.super Ljava/lang/Object;
.source "BindingScopingVisitor.java"


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
.method public abstract visitEagerSingleton()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract visitNoScoping()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public abstract visitScope(Lcom/amazon/whispersync/com/google/inject/Scope;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/com/google/inject/Scope;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract visitScopeAnnotation(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/annotation/Annotation;",
            ">;)TV;"
        }
    .end annotation
.end method
