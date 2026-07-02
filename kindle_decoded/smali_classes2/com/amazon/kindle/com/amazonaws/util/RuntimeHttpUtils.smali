.class public Lcom/amazon/kindle/com/amazonaws/util/RuntimeHttpUtils;
.super Ljava/lang/Object;
.source "RuntimeHttpUtils.java"


# static fields
.field private static final COMMA:Ljava/lang/String; = ", "

.field private static final SPACE:Ljava/lang/String; = " "


# direct methods
.method public static toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;)Ljava/net/URI;
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/ClientConfiguration;->getProtocol()Lcom/amazon/kindle/com/amazonaws/Protocol;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/com/amazonaws/util/RuntimeHttpUtils;->toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/Protocol;)Ljava/net/URI;

    move-result-object p0

    return-object p0

    .line 46
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ClientConfiguration cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toUri(Ljava/lang/String;Lcom/amazon/kindle/com/amazonaws/Protocol;)Ljava/net/URI;
    .locals 2

    if-eqz p0, :cond_1

    const-string v0, "://"

    .line 69
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/amazon/kindle/com/amazonaws/Protocol;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 74
    :cond_0
    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p0

    .line 76
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "endpoint cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
