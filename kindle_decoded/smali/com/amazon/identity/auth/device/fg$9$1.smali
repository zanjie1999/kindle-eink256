.class Lcom/amazon/identity/auth/device/fg$9$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Lcom/amazon/identity/auth/device/framework/smartlock/CustomerInformationManager$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic mw:Lcom/amazon/identity/auth/device/fg$9;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg$9;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$9$1;->mw:Lcom/amazon/identity/auth/device/fg$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lcom/amazon/identity/auth/device/fc;)V
    .locals 4

    .line 313
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v1, "resultType"

    .line 315
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc;->eo()Lcom/amazon/identity/auth/device/framework/smartlock/CustomeInformationResultType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 319
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 320
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fc;->ep()Lcom/amazon/identity/auth/device/fb;

    move-result-object p1

    .line 321
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->getEmail()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "email"

    .line 323
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 325
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v2, "name"

    .line 327
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 329
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->el()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "namePron"

    .line 331
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->el()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    :cond_2
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->em()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "phoneNumber"

    .line 335
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/fb;->em()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "information"

    .line 337
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 339
    :cond_4
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string/jumbo p1, "{\"error\":\"General_Error\"}"

    .line 345
    :goto_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$9$1;->mw:Lcom/amazon/identity/auth/device/fg$9;

    iget-object v1, v0, Lcom/amazon/identity/auth/device/fg$9;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v0, v0, Lcom/amazon/identity/auth/device/fg$9;->ms:Ljava/lang/String;

    const-string/jumbo v2, "mapJSCallback"

    .line 1037
    invoke-virtual {v1, v2, v0, p1}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
