.class final Lcom/amazon/kedu/ftue/assets/ExtractedAsset$1;
.super Ljava/lang/Object;
.source "ExtractedAsset.java"

# interfaces
.implements Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kedu/ftue/assets/ExtractedAsset;->getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fromJSON(Lorg/json/JSONObject;)Lcom/amazon/kedu/ftue/assets/Asset;
    .locals 4

    const-string v0, "path"

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 43
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move-object p1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 51
    new-instance v0, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;

    invoke-direct {v0, p1}, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 56
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed parsing Asset JSON"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-object v2
.end method
