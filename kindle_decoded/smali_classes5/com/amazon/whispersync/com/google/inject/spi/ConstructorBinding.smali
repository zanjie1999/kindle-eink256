.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ConstructorBinding;
.super Ljava/lang/Object;
.source "ConstructorBinding.java"

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
.method public abstract getConstructor()Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;
.end method

.method public abstract getInjectableMembers()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/InjectionPoint;",
            ">;"
        }
    .end annotation
.end method
