.class public interface abstract Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$ComputingStrategy;
.super Ljava/lang/Object;
.source "CustomConcurrentHashMap.java"

# interfaces
.implements Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ComputingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/amazon/whispersync/com/google/inject/internal/util/$CustomConcurrentHashMap$Strategy<",
        "TK;TV;TE;>;"
    }
.end annotation


# virtual methods
.method public abstract compute(Ljava/lang/Object;Ljava/lang/Object;Lcom/amazon/whispersync/com/google/inject/internal/util/$Function;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;",
            "Lcom/amazon/whispersync/com/google/inject/internal/util/$Function<",
            "-TK;+TV;>;)TV;"
        }
    .end annotation
.end method

.method public abstract waitForValue(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation
.end method
