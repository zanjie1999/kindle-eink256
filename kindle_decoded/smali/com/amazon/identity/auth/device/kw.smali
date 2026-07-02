.class public abstract Lcom/amazon/identity/auth/device/kw;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.kw"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract b(Lcom/amazon/identity/auth/device/jz;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/auth/device/jz;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract b(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/identity/kcpsdk/auth/PandaError;",
            ")TT;"
        }
    .end annotation
.end method

.method protected abstract w(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method protected abstract x(Lorg/json/JSONObject;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation
.end method

.method public y(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")TT;"
        }
    .end annotation

    const-string v0, "challenge"

    const-string/jumbo v1, "success"

    const-string v2, "Panda Response is not correctly formatted."

    const-string v3, "error"

    :try_start_0
    const-string/jumbo v4, "response"

    .line 47
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 49
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 51
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kw;->x(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 53
    :cond_0
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-static {v4, v3}, Lcom/amazon/identity/auth/device/ih;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "index"

    const/4 v5, 0x0

    invoke-static {v0, v1, v5}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 58
    sget-object v1, Lcom/amazon/identity/auth/device/kw;->TAG:Ljava/lang/String;

    const-string v5, "Received Panda error index when parsing the error response: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/amazon/identity/auth/device/kw;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 61
    :cond_1
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "request_id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "code"

    .line 1083
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/kcpsdk/auth/PandaError;->getPandaError(Ljava/lang/String;)Lcom/amazon/identity/kcpsdk/auth/PandaError;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1087
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/kw;->w(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 1091
    :cond_2
    sget-object v3, Lcom/amazon/identity/auth/device/kw;->TAG:Ljava/lang/String;

    const-string v4, "Panda Error:  %s. Request ID: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    .line 1092
    invoke-virtual {p0, v1}, Lcom/amazon/identity/auth/device/kw;->b(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1

    .line 63
    :cond_3
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 65
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 1099
    invoke-static {p1}, Lcom/amazon/identity/auth/device/jz;->s(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/jz;

    move-result-object p1

    .line 1100
    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kw;->b(Lcom/amazon/identity/auth/device/jz;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 69
    :cond_4
    sget-object p1, Lcom/amazon/identity/auth/device/kw;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :catch_0
    sget-object p1, Lcom/amazon/identity/auth/device/kw;->TAG:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_1
    sget-object p1, Lcom/amazon/identity/kcpsdk/auth/PandaError;->PandaErrorUnknown:Lcom/amazon/identity/kcpsdk/auth/PandaError;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/kw;->b(Lcom/amazon/identity/kcpsdk/auth/PandaError;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
