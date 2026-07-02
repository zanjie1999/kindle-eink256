.class public final Lcom/amazon/identity/auth/device/jz;
.super Ljava/lang/Object;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.jz"


# instance fields
.field private mReason:Ljava/lang/String;

.field private rO:Ljava/lang/String;

.field private rP:Ljava/lang/String;

.field private rQ:Ljava/lang/String;

.field private rR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/amazon/identity/auth/device/jz;->mReason:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lcom/amazon/identity/auth/device/jz;->rP:Ljava/lang/String;

    .line 46
    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/jz;->dJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/jz;->rO:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lcom/amazon/identity/auth/device/jz;->rQ:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lcom/amazon/identity/auth/device/jz;->rR:Ljava/lang/String;

    return-void
.end method

.method private dJ(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 111
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 115
    :catch_0
    sget-object v0, Lcom/amazon/identity/auth/device/jz;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, " Malformed URL received: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/amazon/identity/auth/device/il;->an(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public static s(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/jz;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "challenge_reason"

    .line 53
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string/jumbo v1, "uri"

    .line 54
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "challenge_context"

    .line 55
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "required_authentication_method"

    .line 57
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "auth_data_additional_info"

    .line 58
    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 59
    new-instance p0, Lcom/amazon/identity/auth/device/jz;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/amazon/identity/auth/device/jz;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public N(Landroid/os/Bundle;)V
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jz;->rR:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "auth_data_additional_info"

    .line 101
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getReason()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jz;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public hl()Ljava/lang/String;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/jz;->rR:Ljava/lang/String;

    return-object v0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 3

    .line 88
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 89
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jz;->mReason:Ljava/lang/String;

    const-string v2, "com.amazon.identity.auth.ChallengeException.Reason"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jz;->rO:Ljava/lang/String;

    const-string v2, "com.amazon.identity.auth.ChallengeException.oAuthURI"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jz;->rP:Ljava/lang/String;

    const-string v2, "com.amazon.identity.auth.ChallengeException.Context"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jz;->rQ:Ljava/lang/String;

    const-string v2, "com.amazon.identity.auth.ChallengeException.requiredAuthenticationMethod"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/amazon/identity/auth/device/jz;->rR:Ljava/lang/String;

    const-string v2, "auth_data_additional_info"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
