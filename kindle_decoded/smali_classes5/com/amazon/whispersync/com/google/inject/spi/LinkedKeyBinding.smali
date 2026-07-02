.class public interface abstract Lcom/amazon/whispersync/com/google/inject/spi/LinkedKeyBinding;
.super Ljava/lang/Object;
.source "LinkedKeyBinding.java"

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
.method public abstract getLinkedKey()Lcom/amazon/whispersync/com/google/inject/Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/whispersync/com/google/inject/Key<",
            "+TT;>;"
        }
    .end annotation
.end method
