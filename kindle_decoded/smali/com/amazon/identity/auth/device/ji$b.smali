.class public Lcom/amazon/identity/auth/device/ji$b;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.ji$b"


# instance fields
.field private ru:Landroid/net/Uri$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/ji$b;->ru:Landroid/net/Uri$Builder;

    return-void
.end method


# virtual methods
.method public aJ(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ji$b;
    .locals 1

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_name"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    .line 188
    invoke-static {}, Lcom/amazon/identity/auth/device/hs;->gv()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app_version"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    .line 189
    invoke-static {}, Lcom/amazon/identity/auth/device/im;->gH()Ljava/lang/String;

    move-result-object p1

    const-string v0, "di.sdk.version"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/identity/auth/device/ji$b;->ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;

    return-object p0
.end method

.method public ar(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;
    .locals 2

    const-string v0, "UTF-8"

    if-nez p2, :cond_0

    .line 150
    sget-object p2, Lcom/amazon/identity/auth/device/ji$b;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameter \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has <null> value, will not append parameter to query string."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 156
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/ji$b;->ru:Landroid/net/Uri$Builder;

    invoke-static {p1, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    invoke-static {p2, v0}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 156
    invoke-virtual {v1, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    sget-object p2, Lcom/amazon/identity/auth/device/ji$b;->TAG:Ljava/lang/String;

    const-string v0, "UTF-8 is not supported. This should not happen according to http://developer.android.com/reference/java/nio/charset/Charset.html"

    invoke-static {p2, v0, p1}, Lcom/amazon/identity/auth/device/il;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object p0
.end method

.method public as(Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/identity/auth/device/ji$b;
    .locals 2

    if-nez p1, :cond_0

    .line 171
    sget-object p1, Lcom/amazon/identity/auth/device/ji$b;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "Parameter name is <null>, will not append parameter to query string."

    invoke-static {p1, v0, p2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 177
    sget-object p2, Lcom/amazon/identity/auth/device/ji$b;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Parameter \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' has <null> value, will not append parameter to query string."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ji$b;->ru:Landroid/net/Uri$Builder;

    invoke-virtual {v0, p1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    return-object p0
.end method

.method public gW()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ji$b;->ru:Landroid/net/Uri$Builder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
