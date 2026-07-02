.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ProviderWithExtensionVisitor;
.super Ljava/lang/Object;
.source "ProviderWithExtensionVisitor.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract acceptExtensionVisitor(Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor;Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/amazon/whispersync/com/google/inject/spi/BindingTargetVisitor<",
            "TB;TV;>;",
            "Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding<",
            "+TB;>;)TV;"
        }
    .end annotation
.end method
