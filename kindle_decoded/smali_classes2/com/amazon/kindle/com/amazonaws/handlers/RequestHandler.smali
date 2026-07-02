.class public interface abstract Lcom/amazon/kindle/com/amazonaws/handlers/RequestHandler;
.super Ljava/lang/Object;
.source "RequestHandler.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract afterError(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/Exception;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation
.end method

.method public abstract afterResponse(Lcom/amazon/kindle/com/amazonaws/Request;Ljava/lang/Object;Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/amazon/kindle/com/amazonaws/util/TimingInfo;",
            ")V"
        }
    .end annotation
.end method

.method public abstract beforeRequest(Lcom/amazon/kindle/com/amazonaws/Request;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/Request<",
            "*>;)V"
        }
    .end annotation
.end method
