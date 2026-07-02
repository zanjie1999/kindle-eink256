.class public Lcom/amazon/kedu/ftue/assets/RemoteAsset;
.super Lcom/amazon/kedu/ftue/assets/Asset;
.source "RemoteAsset.java"


# static fields
.field private static final HASH_KEY:Ljava/lang/String; = "sha256"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.RemoteAsset"

.field private static final URL_KEY:Ljava/lang/String; = "url"


# instance fields
.field private final sha256:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "remote"

    .line 32
    invoke-direct {p0, v0, p3}, Lcom/amazon/kedu/ftue/assets/Asset;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iput-object p1, p0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->url:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->sha256:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 12
    sget-object v0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getBuilder()Lcom/amazon/kedu/ftue/assets/io/AssetFactory$IBuilder;
    .locals 1

    .line 81
    new-instance v0, Lcom/amazon/kedu/ftue/assets/RemoteAsset$1;

    invoke-direct {v0}, Lcom/amazon/kedu/ftue/assets/RemoteAsset$1;-><init>()V

    return-object v0
.end method


# virtual methods
.method public getSha256()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->sha256:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->url:Ljava/lang/String;

    return-object v0
.end method

.method public toJsonObject()Lorg/json/JSONObject;
    .locals 3

    .line 64
    :try_start_0
    invoke-super {p0}, Lcom/amazon/kedu/ftue/assets/Asset;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "path"

    .line 66
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v1, "url"

    .line 67
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sha256"

    .line 68
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->getSha256()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;->TAG:Ljava/lang/String;

    const-string v2, "failed creating json"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
