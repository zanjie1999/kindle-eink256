.class public Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;,
        Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field public static final iQ:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 158
    new-instance v6, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->GenericError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const-string v2, "Generic Error"

    const-string v3, "Generic Error"

    const-string v4, "No Error Index"

    const-string v5, "No Request Id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->iQ:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    .line 172
    const-class v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0xc8

    if-lt v1, v2, :cond_2

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x12c

    if-lt p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method private f(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "response"

    .line 192
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string/jumbo v1, "request_id"

    .line 194
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "error"

    .line 196
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "code"

    .line 199
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getAuthErrorTypeFromCode(Ljava/lang/String;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object v3

    const-string/jumbo v1, "message"

    .line 203
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "detail"

    .line 204
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "index"

    .line 205
    invoke-static {p1, v1, v0}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 206
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 208
    sget-object p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->TAG:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error Index was received: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    sget-object p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 211
    :cond_1
    new-instance p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public g(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;
    .locals 7

    .line 226
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->f(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Given JSON is not in Auth Error format. Error: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 231
    sget-object p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->TAG:Ljava/lang/String;

    invoke-static {p1}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 232
    new-instance p1, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    sget-object v2, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->ParseError:Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;-><init>(Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public h(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 0

    .line 247
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser;->f(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 250
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$a;->cF()Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/framework/AuthEndpointErrorParser$AuthErrorType;->getCode()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public i(Lorg/json/JSONObject;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    const-string/jumbo v1, "response"

    .line 271
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "challenge"

    .line 278
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    return p1

    :catch_0
    return v0
.end method
