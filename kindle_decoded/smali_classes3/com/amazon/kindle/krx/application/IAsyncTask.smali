.class public interface abstract Lcom/amazon/kindle/krx/application/IAsyncTask;
.super Ljava/lang/Object;
.source "IAsyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# virtual methods
.method public abstract getPriority()Lcom/amazon/kindle/krx/application/IAsyncTask$TaskPriority;
.end method
