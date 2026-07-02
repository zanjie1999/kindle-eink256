.class public Lcom/amazon/identity/auth/device/e;
.super Ljava/lang/Object;
.source "DCP"


# instance fields
.field private l:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 28
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.useremail"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 123
    invoke-static {p1}, Lcom/amazon/identity/auth/device/kd;->l(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.credentialsmap"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lorg/json/JSONArray;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "website_cookies_json_array"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Landroid/os/Bundle;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.username"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 148
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/e;->d()V

    .line 150
    invoke-virtual {p0}, Lcom/amazon/identity/auth/device/e;->b()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public c(I)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    .line 230
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.access_token.expires_at"

    .line 229
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.firstname"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()V
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.username"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.firstname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 179
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.adptoken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.privatekey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.deviceserialname"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.devicedevicetype"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData is invalid because the device type has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData is invalid because the serial number has not been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_2
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData privatekey is invalid because it is not fulfilled on DMS, please contact DMS to fulfill your device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_3
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 182
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData ADPtoken is invalid because it is not fulfilled on DMS, please contact DMS to fulfill your device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 175
    :cond_4
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData devicename is invalid because it is not fulfilled on DMS, please contact DMS to fulfill your device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 169
    :cond_5
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData firstname is invalid because it is not fulfilled on DMS, please contact DMS to fulfill your device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_6
    invoke-static {}, Lcom/amazon/identity/auth/device/il;->gG()V

    .line 164
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "UserData username is invalid because it is not fulfilled on DMS, please contact DMS to fulfill your device."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.devicename"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.adptoken"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.privatekey"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.cookie.xmain"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.cookie.xmainAndXabcCookies"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.identity.cookies.xfsn"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.accountpool"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public k(Ljava/lang/String;)V
    .locals 2

    .line 93
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.customer_region"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public l(Ljava/lang/String;)V
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.cor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public m(Ljava/lang/String;)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.sourceofcor"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.pfm"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.deviceemail"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public p(Ljava/lang/String;)V
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.access_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public q(Ljava/lang/String;)V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.oauth.amazon.refresh_token"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceSerialNumber(Ljava/lang/String;)V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.device.deviceserialname"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDeviceType(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.token.devicedevicetype"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDirectedId(Ljava/lang/String;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/amazon/identity/auth/device/e;->l:Landroid/os/Bundle;

    const-string v1, "com.amazon.dcp.sso.property.account.acctId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
