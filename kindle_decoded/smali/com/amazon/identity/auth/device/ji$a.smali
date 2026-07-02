.class Lcom/amazon/identity/auth/device/ji$a;
.super Landroid/net/UrlQuerySanitizer;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/ji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private rt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Landroid/net/UrlQuerySanitizer;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/identity/auth/device/ji$a;->rt:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p1, :cond_0

    .line 48
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2}, Ljava/lang/IllegalArgumentException;-><init>()V

    const-string v0, "ignoring <null> named parameter to a Sanitizer"

    invoke-static {p1, v0, p2}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 54
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->access$000()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignoring <null> value to parameter \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' to a Sanitizer"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    invoke-static {p2, p1, v0}, Lcom/amazon/identity/auth/device/il;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 58
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 62
    :cond_2
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Parameter or value was trimmed on the parameter "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, "). MAP trims the query parameter keys and values in the URL, however auth portal does not accept non-trimmed parameters. Please consider fixing the auth portal parameters passed to MAP."

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-super {p0, v0, v1}, Landroid/net/UrlQuerySanitizer;->addSanitizedEntry(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    .line 72
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Unescaping <null> string"

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 78
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/ji$a;->rt:Ljava/lang/String;

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 82
    invoke-static {}, Lcom/amazon/identity/auth/device/ji;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amazon/identity/auth/device/ji$a;->rt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not supported. Using decoder without encoding."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    invoke-super {p0, p1}, Landroid/net/UrlQuerySanitizer;->unescape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
