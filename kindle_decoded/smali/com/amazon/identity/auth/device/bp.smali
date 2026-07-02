.class public final Lcom/amazon/identity/auth/device/bp;
.super Ljava/lang/Object;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/identity/auth/device/bp$a;
    }
.end annotation


# direct methods
.method public static d(Lorg/json/JSONObject;)Lcom/amazon/identity/auth/device/bp$a;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "error"

    .line 28
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "error_description"

    .line 29
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "error_index"

    .line 30
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 32
    new-instance p0, Lcom/amazon/identity/auth/device/bp$a;

    invoke-direct {p0, v1, v2, v0}, Lcom/amazon/identity/auth/device/bp$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    move-object p0, v0

    goto :goto_0

    :catch_1
    move-object p0, v0

    move-object v2, p0

    :goto_0
    move-object v0, v1

    goto :goto_1

    :catch_2
    move-object p0, v0

    move-object v2, p0

    .line 36
    :goto_1
    new-instance v1, Lcom/amazon/identity/auth/device/bp$a;

    invoke-direct {v1, v0, v2, p0}, Lcom/amazon/identity/auth/device/bp$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method
