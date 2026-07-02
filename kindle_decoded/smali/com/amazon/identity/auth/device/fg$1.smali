.class Lcom/amazon/identity/auth/device/fg$1;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->upgradeToken(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ms:Ljava/lang/String;

.field final synthetic mt:Lcom/amazon/identity/auth/device/fg;


# direct methods
.method constructor <init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$1;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$1;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    const-string v0, "MAPJavaScriptBridge"

    .line 98
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$1;->mt:Lcom/amazon/identity/auth/device/fg;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/fg;->ew()Z

    move-result v1

    const-string/jumbo v2, "mapJSCallback"

    if-nez v1, :cond_0

    .line 100
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$1;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fg$1;->ms:Ljava/lang/String;

    const-string/jumbo v4, "{\"error\":\"UnAuthorized_Domain\"}"

    .line 1037
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$1;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fg$1;->ms:Ljava/lang/String;

    .line 2111
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "cid"

    .line 2112
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v5, "pid"

    .line 2113
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2114
    iput-object v8, v1, Lcom/amazon/identity/auth/device/fg;->mr:Ljava/lang/String;

    const-string v5, "authCode"

    .line 2115
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "callingId"

    .line 2116
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v9, "callbackFunctionNameKey"

    .line 2117
    invoke-virtual {v4, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "MAP JS bridge upgradeToken is called with callingId: %s, callback name: %s"

    const/4 v10, 0x2

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    const/4 v6, 0x1

    aput-object v4, v11, v6

    .line 2119
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "accountId: %s, actorId: %s, authCode: %s"

    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v7, v11, v12

    aput-object v8, v11, v6

    aput-object v5, v11, v10

    .line 2120
    invoke-static {v9, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/il;->dl(Ljava/lang/String;)V

    .line 2121
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v0, "key_auth_code"

    .line 2122
    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "key_token_type"

    const-string/jumbo v5, "token_type_oauth_refresh_token"

    .line 2123
    invoke-virtual {v9, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "returnValue"

    const-string v6, "MAP_Native_Acknowledged"

    .line 2128
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2129
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2131
    iget-object v6, v1, Lcom/amazon/identity/auth/device/fg;->mp:Lcom/amazon/identity/auth/device/gw;

    new-instance v10, Lcom/amazon/identity/auth/device/fg$4;

    invoke-direct {v10, v1}, Lcom/amazon/identity/auth/device/fg$4;-><init>(Lcom/amazon/identity/auth/device/fg;)V

    new-instance v11, Lcom/amazon/identity/auth/device/fg$5;

    invoke-direct {v11, v1, v4, v3, v0}, Lcom/amazon/identity/auth/device/fg$5;-><init>(Lcom/amazon/identity/auth/device/fg;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v6 .. v11}, Lcom/amazon/identity/auth/device/gw;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;Lcom/amazon/identity/auth/device/gv;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "{\"error\":\"Invalid_Input_Param\"}"

    .line 2160
    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
