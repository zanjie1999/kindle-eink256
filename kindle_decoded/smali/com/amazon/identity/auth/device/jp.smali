.class public interface abstract Lcom/amazon/identity/auth/device/jp;
.super Ljava/lang/Object;
.source "DCP"


# virtual methods
.method public abstract getBody()[B
.end method

.method public abstract getHeader(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getHttpVerb()Ljava/lang/String;
.end method

.method public abstract getUri()Landroid/net/Uri;
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
.end method
