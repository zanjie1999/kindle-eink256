.class public Lcom/amazon/identity/auth/device/fq;
.super Lcom/amazon/identity/auth/device/fn;
.source "DCP"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.identity.auth.device.fq"


# instance fields
.field private final ar:Lcom/amazon/identity/auth/device/ea;

.field private final mV:Landroid/os/Bundle;

.field private final w:Lcom/amazon/identity/auth/device/gc;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0

    .line 54
    invoke-static {p2}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/amazon/identity/auth/device/fn;-><init>(Lcom/amazon/identity/auth/device/ed;)V

    .line 55
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    .line 56
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/ed;->dU()Lcom/amazon/identity/auth/device/gc;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fq;->w:Lcom/amazon/identity/auth/device/gc;

    .line 57
    iget-object p1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    const-string p2, "dcp_device_info"

    invoke-virtual {p1, p2}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/identity/auth/device/ea;

    iput-object p1, p0, Lcom/amazon/identity/auth/device/fq;->ar:Lcom/amazon/identity/auth/device/ea;

    return-void
.end method


# virtual methods
.method protected b(Lcom/amazon/identity/auth/device/ej;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 96
    new-instance p1, Lcom/amazon/identity/auth/device/kt;

    invoke-direct {p1}, Lcom/amazon/identity/auth/device/kt;-><init>()V

    .line 97
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string v2, "authAccount"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    iget-object v2, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string/jumbo v3, "password"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v3, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string v4, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 101
    iget-object v4, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string v5, "disable_global_signin"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 105
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->dO(Ljava/lang/String;)Z

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1, v3}, Lcom/amazon/identity/auth/device/kt;->dP(Ljava/lang/String;)Z

    .line 117
    :goto_0
    iget-object v3, p0, Lcom/amazon/identity/auth/device/fq;->w:Lcom/amazon/identity/auth/device/gc;

    const-string v5, "com.amazon.dcp.sso.token.cookie.sid"

    invoke-virtual {v3, v0, v5}, Lcom/amazon/identity/auth/device/gc;->t(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "^\"|\"$"

    const-string v5, ""

    .line 130
    invoke-virtual {v0, v3, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->dV(Ljava/lang/String;)V

    .line 135
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 137
    invoke-virtual {p1, v1}, Lcom/amazon/identity/auth/device/kt;->dN(Ljava/lang/String;)Z

    .line 140
    :cond_2
    invoke-virtual {p1, v2}, Lcom/amazon/identity/auth/device/kt;->dQ(Ljava/lang/String;)Z

    .line 142
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fq;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->b(Lcom/amazon/identity/auth/device/ea;)V

    .line 143
    invoke-static {}, Lcom/amazon/identity/auth/device/kp;->hy()Lcom/amazon/identity/auth/device/kp;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->a(Lcom/amazon/identity/auth/device/kp;)V

    .line 145
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fq;->ar:Lcom/amazon/identity/auth/device/ea;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/ea;->getDeviceSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/fi;->h(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->dW(Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    const-string v1, "calling_package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 151
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->dT(Ljava/lang/String;)V

    .line 152
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v1, v0}, Lcom/amazon/identity/auth/device/iq;->x(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 155
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->dU(Ljava/lang/String;)V

    :cond_3
    if-eqz v4, :cond_4

    const/4 v0, 0x0

    .line 161
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->k(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    .line 165
    invoke-virtual {p1, v0}, Lcom/amazon/identity/auth/device/kt;->k(Z)V

    .line 168
    :goto_1
    invoke-virtual {p1}, Lcom/amazon/identity/auth/device/kt;->hA()Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method

.method protected eF()Ljava/lang/String;
    .locals 2

    .line 63
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    invoke-static {v1}, Lcom/amazon/identity/auth/device/ho;->F(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->getPandaHost(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eG()Ljava/lang/String;
    .locals 2

    .line 69
    invoke-static {}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->cc()Lcom/amazon/identity/auth/device/env/EnvironmentUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/identity/auth/device/fq;->mV:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/amazon/identity/auth/device/env/EnvironmentUtils;->x(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected eH()Lcom/amazon/identity/auth/device/api/AuthenticationMethod;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected eK()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    invoke-super {p0}, Lcom/amazon/identity/auth/device/fn;->eK()Ljava/util/Map;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fn;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/ed;->dV()Lcom/amazon/identity/auth/device/co;

    move-result-object v1

    sget-object v2, Lcom/amazon/identity/auth/device/features/Feature;->UseDeviceLocaleAsLanguagePreference:Lcom/amazon/identity/auth/device/features/Feature;

    invoke-virtual {v1, v2}, Lcom/amazon/identity/auth/device/co;->a(Lcom/amazon/identity/auth/device/features/Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/identity/auth/device/lw;->a(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 181
    sget-object v2, Lcom/amazon/identity/auth/device/fq;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Setting Language to: "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    const-string v2, "Accept-Language"

    .line 182
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method protected getHttpVerb()Ljava/lang/String;
    .locals 1

    const-string v0, "POST"

    return-object v0
.end method

.method protected getPath()Ljava/lang/String;
    .locals 1

    const-string v0, "/auth/signin"

    return-object v0
.end method

.method protected j(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "response"

    .line 191
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ih;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "error"

    .line 192
    invoke-static {p1, v0}, Lcom/amazon/identity/auth/device/ih;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "index"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/amazon/identity/auth/device/ih;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
