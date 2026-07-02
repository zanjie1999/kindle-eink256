.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/Element;
.super Ljava/lang/Object;
.source "Element.java"


# virtual methods
.method public abstract acceptVisitor(Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/ElementVisitor<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
.end method

.method public abstract getSource()Ljava/lang/Object;
.end method
