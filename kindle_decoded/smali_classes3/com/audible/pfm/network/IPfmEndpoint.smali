.class public interface abstract Lcom/audible/pfm/network/IPfmEndpoint;
.super Ljava/lang/Object;
.source "IPfmEndpoint.java"


# virtual methods
.method public abstract getHushpuppyEndpointConfig()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "1.0/pfm_internationalization.json"
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Cache-Control:max-age=0"
        }
    .end annotation
.end method

.method public abstract getHushpuppyEndpointConfig(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "If-Modified-Since"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "1.0/pfm_internationalization.json"
    .end annotation
.end method
