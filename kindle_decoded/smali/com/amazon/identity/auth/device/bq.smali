.class public Lcom/amazon/identity/auth/device/bq;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bq$a;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "bq"


# instance fields
.field private ar:Lcom/amazon/identity/auth/device/ea;

.field private bO:Lcom/amazon/identity/auth/device/ej;

.field private o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bq;->o:Lcom/amazon/identity/auth/device/ed;

    .line 25
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bq;->bO:Lcom/amazon/identity/auth/device/ej;

    const-string p2, "dcp_device_info"

    .line 26
    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/bq;->ar:Lcom/amazon/identity/auth/device/ea;

    return-void
.end method


# virtual methods
.method public a(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/amazon/identity/auth/device/bo;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/bq;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/bq;->bO:Lcom/amazon/identity/auth/device/ej;

    invoke-direct {v0, v1, v2}, Lcom/amazon/identity/auth/device/bo;-><init>(Lcom/amazon/identity/auth/device/ed;Lcom/amazon/identity/auth/device/ej;)V

    .line 38
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/bo;->bv()Lorg/json/JSONObject;

    move-result-object v1

    .line 40
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "access_token"

    .line 41
    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "actor_id"

    .line 42
    invoke-virtual {v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance p3, Lorg/json/JSONObject;

    invoke-direct {p3}, Lorg/json/JSONObject;-><init>()V

    const-string p4, "code_data"

    .line 45
    invoke-virtual {p3, p4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p4, "auth_data"

    .line 46
    invoke-virtual {p3, p4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p4, 0x0

    .line 49
    invoke-virtual {v0, p3, p4, p1, p2}, Lcom/amazon/identity/auth/device/bo;->a(Lorg/json/JSONObject;IJ)V

    .line 51
    iget-object p1, p0, Lcom/amazon/identity/auth/device/bq;->o:Lcom/amazon/identity/auth/device/ed;

    iget-object p2, p0, Lcom/amazon/identity/auth/device/bq;->ar:Lcom/amazon/identity/auth/device/ea;

    .line 52
    invoke-virtual {p2}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-static {p1, p3}, Lcom/amazon/identity/auth/device/fi;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 55
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bq$a;
    .locals 2

    :try_start_0
    const-string v0, "code"

    .line 64
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "expires_in"

    .line 65
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    new-instance v1, Lcom/amazon/identity/auth/device/bq$a;

    invoke-direct {v1, v0, p1}, Lcom/amazon/identity/auth/device/bq$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 70
    sget-object v0, Lcom/amazon/identity/auth/device/bq;->TAG:Ljava/lang/String;

    const-string v1, "JSONException while parsing generatePreAuthorizedCode response, probably due to server response is missing some data"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method
