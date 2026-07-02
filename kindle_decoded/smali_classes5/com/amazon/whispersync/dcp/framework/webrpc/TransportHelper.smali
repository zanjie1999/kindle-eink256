.class public interface abstract Lcom/amazon/whispersync/dcp/framework/webrpc/TransportHelper;
.super Ljava/lang/Object;
.source "TransportHelper.java"


# virtual methods
.method public abstract invoke(Ljava/lang/String;Ljava/net/URL;Ljava/lang/String;ZLjava/util/Map;[B)Ljava/net/HttpURLConnection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[B)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
