.class public interface abstract Lcom/amazon/kindle/com/amazonaws/handlers/AsyncHandler;
.super Ljava/lang/Object;
.source "AsyncHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<REQUEST:",
        "Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onError(Ljava/lang/Exception;)V
.end method

.method public abstract onSuccess(Lcom/amazon/kindle/com/amazonaws/AmazonWebServiceRequest;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TREQUEST;TRESU",
            "LT;",
            ")V"
        }
    .end annotation
.end method
