.class final Lcom/amazon/kedu/ftue/assets/RemoteAsset$1;
.super Ljava/lang/Object;
.source "RemoteAsset.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lorg/json/JSONObject;)Lcom/amazon/kedu/ftue/assets/Asset;
    .locals 5

    const-string v0, "sha256"

    const-string/jumbo v1, "url"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 94
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 96
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 97
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 98
    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v3

    move-object v0, p1

    move-object v1, v0

    :goto_0
    if-eqz v2, :cond_1

    .line 105
    new-instance v2, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-direct {v2, v1, p1, v0}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    goto :goto_1

    :catch_0
    move-exception p1

    .line 110
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed parsing Asset JSON"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v3
.end method
