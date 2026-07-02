.class Lcom/amazon/identity/auth/device/fg$8;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->getMAPAndroidBridgeVersion(Ljava/lang/String;)V
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

    .line 248
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$8;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$8;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "MAPJavaScriptBridge"

    .line 252
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$8;->mt:Lcom/amazon/identity/auth/device/fg;

    invoke-virtual {v1}, Lcom/amazon/identity/auth/device/fg;->ew()Z

    move-result v1

    const-string/jumbo v2, "mapJSCallback"

    if-nez v1, :cond_0

    .line 254
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$8;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fg$8;->ms:Ljava/lang/String;

    const-string/jumbo v4, "{\"error\":\"UnAuthorized_Domain\"}"

    .line 1037
    invoke-virtual {v1, v2, v3, v4}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/amazon/identity/auth/device/fg$8;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v3, p0, Lcom/amazon/identity/auth/device/fg$8;->ms:Ljava/lang/String;

    :try_start_0
    const-string v4, "MAP JS bridge getMAPAndroidBridgeVersion is called"

    .line 2266
    invoke-static {v0, v4}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2267
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v5, "callingId"

    .line 2268
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "callbackFunctionNameKey"

    .line 2269
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "MAP JS bridge getMAPAndroidBridgeVersion is called. callingId: %s , callback name: %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    const/4 v5, 0x1

    aput-object v4, v7, v5

    .line 2271
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2272
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "mapJSVersion"

    const-string v6, "MAP_Android_1"

    .line 2273
    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2274
    invoke-virtual {v1, v0}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 2275
    invoke-virtual {v1, v4, v3, v0}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v0, "{\"error\":\"Invalid_Input_Param\"}"

    .line 2279
    invoke-virtual {v1, v2, v3, v0}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
