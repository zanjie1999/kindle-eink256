.class public interface abstract Lcom/amazon/kindle/com/amazonaws/http/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"


# virtual methods
.method public abstract execute(Lcom/amazon/kindle/com/amazonaws/http/HttpRequest;)Lcom/amazon/kindle/com/amazonaws/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract shutdown()V
.end method
