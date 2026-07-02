.class public Lcom/amazon/identity/auth/device/bh;
.super Lcom/amazon/identity/auth/device/ca;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.bh"


# instance fields
.field private final as:Lcom/amazon/identity/auth/device/api/TokenManagement;

.field private final bM:Ljava/lang/String;

.field private final gR:Ljava/lang/String;

.field private final gS:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/identity/auth/device/ca;-><init>(Landroid/content/Context;)V

    .line 38
    iput-object p1, p0, Lcom/amazon/identity/auth/device/bh;->mContext:Landroid/content/Context;

    .line 39
    iput-object p6, p0, Lcom/amazon/identity/auth/device/bh;->mPackageName:Ljava/lang/String;

    .line 40
    iput-object p3, p0, Lcom/amazon/identity/auth/device/bh;->gR:Ljava/lang/String;

    .line 41
    iput-object p4, p0, Lcom/amazon/identity/auth/device/bh;->gS:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/amazon/identity/auth/device/bh;->bM:Ljava/lang/String;

    .line 43
    iput-object p5, p0, Lcom/amazon/identity/auth/device/bh;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 32
    new-instance v5, Lcom/amazon/identity/auth/device/api/TokenManagement;

    invoke-direct {v5, p1}, Lcom/amazon/identity/auth/device/api/TokenManagement;-><init>(Landroid/content/Context;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p5

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/amazon/identity/auth/device/bh;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/identity/auth/device/api/TokenManagement;Ljava/lang/String;)V

    return-void
.end method

.method private aI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/bh;->as:Lcom/amazon/identity/auth/device/api/TokenManagement;

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v3, Lcom/amazon/identity/auth/device/api/DefaultCallback;

    invoke-direct {v3}, Lcom/amazon/identity/auth/device/api/DefaultCallback;-><init>()V

    .line 77
    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/amazon/identity/auth/device/api/TokenManagement;->getToken(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;

    move-result-object p1

    .line 81
    invoke-interface {p1}, Lcom/amazon/identity/auth/device/api/MAPFuture;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string/jumbo v0, "value_key"

    .line 82
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 86
    sget-object v0, Lcom/amazon/identity/auth/device/bh;->TAG:Ljava/lang/String;

    const-string v1, "Exception while trying to get the refresh token in the authorizeLinkCode API"

    invoke-static {v0, v1, p1}, Lcom/amazon/identity/auth/device/il;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bn()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/bootstrap/sso"

    return-object v0
.end method

.method public bo()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 57
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 58
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bh;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    iget-object v2, p0, Lcom/amazon/identity/auth/device/bh;->gR:Ljava/lang/String;

    const-string v3, "appSignature"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 62
    iget-object v4, p0, Lcom/amazon/identity/auth/device/bh;->bM:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/amazon/identity/auth/device/bh;->aI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "refreshToken"

    invoke-virtual {v2, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    iget-object v4, p0, Lcom/amazon/identity/auth/device/bh;->gS:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "bootstrapAppInfo"

    .line 65
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "hostAppInfo"

    .line 66
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method protected bp()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bC()Lcom/amazon/identity/auth/device/ea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->ct()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDeviceType()Ljava/lang/String;
    .locals 2

    .line 93
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v0

    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/ca;->bB()Lcom/amazon/identity/auth/device/ed;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/ib;->s(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
