.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ConvertedConstantBinding;
.super Ljava/lang/Object;
.source "ConvertedConstantBinding.java"

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
.method public abstract getDependencies()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/whispersync/com/google/inject/spi/Dependency<",
            "*>;>;"
        }
    .end annotation
.end method

.method public abstract getSourceKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTypeConverterBinding()Lcom/amazon/whispersync/com/google/inject/spi/TypeConverterBinding;
.end method

.method public abstract getValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method
