.class public interface abstract Lcom/amazon/kindle/com/amazonaws/http/HttpResponseHandler;
.super Ljava/lang/Object;
.source "HttpResponseHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handle(Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract needsConnectionLeftOpen()Z
.end method
