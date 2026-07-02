.class public interface abstract Lcom/amazon/kcp/goodreads/IGoodreadsResponseCallback;
.super Ljava/lang/Object;
.source "IGoodreadsApiManager.kt"


# virtual methods
.method public abstract onGoodreadsFailureResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;Lcom/amazon/kindle/krx/download/KRXRequestErrorState;)V
.end method

.method public abstract onGoodreadsSuccessResponse(Ljava/lang/String;Lcom/amazon/kcp/goodreads/GoodreadsSuccessResponse;Lcom/amazon/kcp/goodreads/GoodreadsRequestType;)V
.end method
