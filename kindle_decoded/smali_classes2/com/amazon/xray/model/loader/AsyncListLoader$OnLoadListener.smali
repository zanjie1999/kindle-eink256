.class public interface abstract Lcom/amazon/xray/model/loader/AsyncListLoader$OnLoadListener;
.super Ljava/lang/Object;
.source "AsyncListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/model/loader/AsyncListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnLoadListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onLoad(Lcom/amazon/xray/model/loader/AsyncListLoader;ILjava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/xray/model/loader/AsyncListLoader;",
            "ITV;)V"
        }
    .end annotation
.end method
