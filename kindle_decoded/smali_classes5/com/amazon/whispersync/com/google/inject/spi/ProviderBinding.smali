.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/ProviderBinding;
.super Ljava/lang/Object;
.source "ProviderBinding.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/Binding;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/amazon/whispersync/com/google/inject/Provider<",
        "*>;>",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/Binding<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getProvidedKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "*>;"
        }
    .end annotation
.end method
