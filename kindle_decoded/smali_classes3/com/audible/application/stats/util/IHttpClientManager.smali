.class public interface abstract Lcom/audible/application/stats/util/IHttpClientManager;
.super Ljava/lang/Object;
.source "IHttpClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;,
        Lcom/audible/application/stats/util/IHttpClientManager$Response;
    }
.end annotation


# virtual methods
.method public abstract getEntityAsBytesViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)[B
.end method

.method public abstract getEntityAsResponseViaSharedInstance(Lcom/audible/application/stats/util/IHttpClientManager$HttpMethod;Ljava/lang/String;Ljava/lang/String;Z)Lcom/audible/application/stats/util/IHttpClientManager$Response;
.end method
