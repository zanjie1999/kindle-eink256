.class public abstract Lcom/amazon/identity/auth/device/ko;
.super Lcom/amazon/identity/kcpsdk/common/WebResponseParser;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amazon/identity/kcpsdk/common/WebResponseParser<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ko"


# instance fields
.field private final sc:Ljava/io/ByteArrayOutputStream;

.field private final sd:Lcom/amazon/identity/auth/device/kw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/amazon/identity/auth/device/kw<",
            "TT;>;"
        }
    .end annotation
.end field

.field private se:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amazon/identity/auth/device/kw;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazon/identity/auth/device/kw<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;-><init>(Ljava/lang/String;)V

    .line 20
    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object p1, p0, Lcom/amazon/identity/auth/device/ko;->sc:Ljava/io/ByteArrayOutputStream;

    const/4 p1, 0x0

    .line 22
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ko;->se:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lcom/amazon/identity/auth/device/ko;->sd:Lcom/amazon/identity/auth/device/kw;

    return-void
.end method


# virtual methods
.method public a([BJ)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ko;->sc:Ljava/io/ByteArrayOutputStream;

    long-to-int p3, p2

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public b(Lcom/amazon/identity/auth/device/mb;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public hh()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ko;->se:Ljava/lang/Object;

    return-object v0
.end method

.method public hi()V
    .locals 5

    .line 53
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ko;->sc:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 57
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/ko;->TAG:Ljava/lang/String;

    const-string v1, " Failed to close buffer"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    :try_start_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/ko;->sc:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 63
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, " Panda JSON Response: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 64
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Lcom/amazon/identity/auth/device/il;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ko;->sd:Lcom/amazon/identity/auth/device/kw;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/kw;->y(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ko;->se:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    .line 73
    :catch_1
    sget-object v0, Lcom/amazon/identity/kcpsdk/common/ParseError;->ParseErrorMalformedBody:Lcom/amazon/identity/kcpsdk/common/ParseError;

    invoke-virtual {p0, v0}, Lcom/amazon/identity/kcpsdk/common/WebResponseParser;->b(Lcom/amazon/identity/kcpsdk/common/ParseError;)Z

    return-void

    :catch_2
    move-exception v0

    .line 69
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
