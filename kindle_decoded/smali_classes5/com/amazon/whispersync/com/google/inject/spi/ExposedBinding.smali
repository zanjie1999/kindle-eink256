.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ExposedBinding;
.super Ljava/lang/Object;
.source "ExposedBinding.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binding;
.implements Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Binding<",
        "TT;>;",
        "Lcom/amazon/whispersync/com/google/inject/spi/HasDependencies;"
    }
.end annotation


# virtual methods
.method public abstract applyTo(Lcom/amazon/whispersync/com/google/inject/Binder;)V
.end method

.method public abstract getPrivateElements()Lcom/amazon/whispersync/com/google/inject/spi/PrivateElements;
.end method
