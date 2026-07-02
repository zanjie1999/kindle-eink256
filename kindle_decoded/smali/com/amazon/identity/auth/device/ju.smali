.class public interface abstract Lcom/amazon/identity/auth/device/ju;
.super Ljava/lang/Object;
.source "DCP"


# virtual methods
.method public abstract a(Lcom/amazon/identity/auth/device/mb;[B)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/identity/kcpsdk/auth/ParseErrorException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract g(Ljava/net/HttpURLConnection;)Ljava/lang/String;
.end method
