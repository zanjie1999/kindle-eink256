.class Lcom/amazon/identity/auth/device/fg$6;
.super Ljava/lang/Object;
.source "DCP"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/identity/auth/device/fg;->switchActor(Ljava/lang/String;)V
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

    .line 177
    iput-object p1, p0, Lcom/amazon/identity/auth/device/fg$6;->mt:Lcom/amazon/identity/auth/device/fg;

    iput-object p2, p0, Lcom/amazon/identity/auth/device/fg$6;->ms:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 181
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$6;->mt:Lcom/amazon/identity/auth/device/fg;

    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/fg;->ew()Z

    move-result v0

    const-string/jumbo v1, "mapJSCallback"

    if-nez v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$6;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fg$6;->ms:Ljava/lang/String;

    const-string/jumbo v3, "{\"error\":\"UnAuthorized_Domain\"}"

    .line 1037
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/amazon/identity/auth/device/fg$6;->mt:Lcom/amazon/identity/auth/device/fg;

    iget-object v2, p0, Lcom/amazon/identity/auth/device/fg$6;->ms:Ljava/lang/String;

    .line 2194
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "cid"

    .line 2195
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "pid"

    .line 2196
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "program"

    .line 2197
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "actor_type"

    .line 2198
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2199
    new-instance v8, Lcom/amazon/identity/auth/device/api/ActorInfo;

    invoke-direct {v8, v6, v4, v5, v7}, Lcom/amazon/identity/auth/device/api/ActorInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "actor_switch_mode"

    .line 2202
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Force"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2204
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Force:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    goto :goto_0

    .line 2208
    :cond_1
    sget-object v4, Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;->Normal:Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;

    :goto_0
    const-string v5, "callingId"

    .line 2211
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "callbackFunctionNameKey"

    .line 2212
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "MAPJavaScriptBridge"

    const-string v7, "MAP JS bridge switchActor is called with callingId: %s, callback name: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v5, v9, v10

    const/4 v5, 0x1

    aput-object v3, v9, v5

    .line 2214
    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 2216
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 2218
    iget-object v5, v0, Lcom/amazon/identity/auth/device/fg;->mq:Lcom/amazon/identity/auth/device/api/MAPActorManager;

    new-instance v6, Lcom/amazon/identity/auth/device/fg$7;

    invoke-direct {v6, v0}, Lcom/amazon/identity/auth/device/fg$7;-><init>(Lcom/amazon/identity/auth/device/fg;)V

    invoke-virtual {v5, v4, v8, v3, v6}, Lcom/amazon/identity/auth/device/api/MAPActorManager;->switchActor(Lcom/amazon/identity/auth/device/api/MAPActorManager$ActorSwitchMode;Lcom/amazon/identity/auth/device/api/ActorInfo;Landroid/os/Bundle;Lcom/amazon/identity/auth/device/api/Callback;)Lcom/amazon/identity/auth/device/api/MAPFuture;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo v3, "{\"error\":\"Invalid_Input_Param\"}"

    .line 2239
    invoke-virtual {v0, v1, v2, v3}, Lcom/amazon/identity/auth/device/fg;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
