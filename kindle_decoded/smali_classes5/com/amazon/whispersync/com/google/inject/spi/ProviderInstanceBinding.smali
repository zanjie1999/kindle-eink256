.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ProviderInstanceBinding;
.super Ljava/lang/Object;
.source "ProviderInstanceBinding.java"

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
.method public abstract getInjectionPoints()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getProviderInstance()Lcom/amazon/whispersync/com/google/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Provider<",
            "+TT;>;"
        }
    .end annotation
.end method
