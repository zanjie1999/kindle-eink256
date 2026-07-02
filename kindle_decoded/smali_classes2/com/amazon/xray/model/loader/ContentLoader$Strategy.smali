.class public interface abstract Lcom/amazon/xray/model/loader/ContentLoader$Strategy;
.super Ljava/lang/Object;
.source "ContentLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/ContentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Strategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract createTask()Lcom/amazon/xray/model/loader/ContentLoader$Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/amazon/xray/model/loader/ContentLoader$Task<",
            "TResult;>;"
        }
    .end annotation
.end method

.method public abstract onResult(Ljava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;Z)V"
        }
    .end annotation
.end method
