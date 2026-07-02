.class Lcom/amazon/identity/auth/device/fg$11$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/fe$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/amazon/identity/auth/device/fe$a<",
        "Lcom/amazon/identity/auth/device/fd;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic my:Lcom/amazon/identity/auth/device/fg$11;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg$11;)V
    .locals 0

    .line 414
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$11$1;->my:Lcom/amazon/identity/auth/device/fg$11;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/amazon/identity/auth/device/fd;)V
    .locals 3

    .line 421
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isRegistered"

    .line 422
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fd;->isRegistered()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 423
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fd;->er()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "sms"

    .line 425
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fd;->er()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 427
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "{\"error\":\"General_Error\"}"

    .line 433
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$11$1;->my:Lcom/amazon/identity/auth/device/fg$11;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/fg$11;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/fg$11;->ms:Ljava/lang/String;

    const-string/jumbo v2, "mapJSCallback"

    .line 1037
    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic f(Ljava/lang/Object;)V
    .locals 0

    .line 414
    check-cast p1, Lcom/amazon/identity/auth/device/fd;

    invoke-virtual {p0, p1}, Lcom/amazon/identity/auth/device/fg$11$1;->b(Lcom/amazon/identity/auth/device/fd;)V

    return-void
.end method
