.class public abstract Lcom/amazon/kedu/ftue/assets/Asset;
.super Ljava/lang/Object;
.source "Asset.java"


# instance fields
.field private final localPath:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/Asset;->type:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/Asset;->localPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLocalPath()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/Asset;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/Asset;->type:Ljava/lang/String;

    return-object v0
.end method

.method protected toJsonObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 48
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/Asset;->getType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "__type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method
