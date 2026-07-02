.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ProviderKeyBinding;
.super Ljava/lang/Object;
.source "ProviderKeyBinding.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Binding<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getProviderKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+",
            "Lcom/amazon/whispersync/javax/inject/Provider<",
            "+TT;>;>;"
        }
    .end annotation
.end method
