.class public Lcom/amazon/kedu/ftue/assets/AssetManifest;
.super Ljava/lang/Object;
.source "AssetManifest.java"


# static fields
.field private static final ASSETS_KEY:Ljava/lang/String; = "assets"

.field private static final TAG:Ljava/lang/String; = "com.amazon.kedu.ftue.assets.AssetManifest"

.field private static final VERSION_KEY:Ljava/lang/String; = "version"


# instance fields
.field private final assets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;"
        }
    .end annotation
.end field

.field private final version:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;)V"
        }
    .end annotation

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput p1, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->version:I

    .line 34
    iput-object p2, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->assets:Ljava/util/List;

    return-void
.end method

.method public static fromJson(Ljava/lang/String;)Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 8

    .line 138
    invoke-static {}, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->getInstance()Lcom/amazon/kedu/ftue/assets/io/AssetFactory;

    move-result-object v0

    const/4 v1, 0x0

    .line 141
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "version"

    .line 142
    invoke-virtual {v2, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    const-string v3, "assets"

    .line 143
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 147
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v5, v7, :cond_3

    .line 149
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/amazon/kedu/ftue/assets/io/AssetFactory;->fromJson(Lorg/json/JSONObject;)Lcom/amazon/kedu/ftue/assets/Asset;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 152
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-nez v6, :cond_2

    .line 154
    instance-of v6, v7, Lcom/amazon/kedu/ftue/assets/ExtractedAsset;

    if-eqz v6, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v6, 0x1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 156
    :cond_3
    new-instance v0, Lcom/amazon/kedu/ftue/assets/AssetManifest;

    invoke-direct {v0, p0, v3}, Lcom/amazon/kedu/ftue/assets/AssetManifest;-><init>(ILjava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_4

    .line 159
    :try_start_1
    invoke-static {v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->unmodifiableManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetManifest;

    move-result-object v0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    move-object v1, v0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 164
    :goto_3
    sget-object v0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->TAG:Ljava/lang/String;

    const-string v2, "Failed parsing manifest"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    :cond_4
    :goto_4
    return-object v0
.end method

.method public static toJson(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Ljava/lang/String;
    .locals 3

    .line 109
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getVersion()I

    move-result v1

    const-string/jumbo v2, "version"

    .line 113
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 114
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const-string v2, "assets"

    .line 115
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {p0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getAssets()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/ftue/assets/Asset;

    .line 119
    invoke-virtual {v2}, Lcom/amazon/kedu/ftue/assets/Asset;->toJsonObject()Lorg/json/JSONObject;

    move-result-object v2

    .line 120
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unmodifiableManifest(Lcom/amazon/kedu/ftue/assets/AssetManifest;)Lcom/amazon/kedu/ftue/assets/AssetManifest;
    .locals 2

    .line 99
    new-instance v0, Lcom/amazon/kedu/ftue/assets/AssetManifest;

    iget v1, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->version:I

    iget-object p0, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->assets:Ljava/util/List;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;-><init>(ILjava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getAssets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">;"
        }
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->assets:Ljava/util/List;

    return-object v0
.end method

.method public getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/amazon/kedu/ftue/assets/Asset;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->assets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amazon/kedu/ftue/assets/Asset;

    .line 66
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/amazon/kedu/ftue/assets/AssetManifest;->version:I

    return v0
.end method

.method public isRemoteAsset(Ljava/lang/String;)Z
    .locals 2

    .line 82
    const-class v0, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    invoke-virtual {p0, v0}, Lcom/amazon/kedu/ftue/assets/AssetManifest;->getFilteredAssets(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kedu/ftue/assets/RemoteAsset;

    .line 84
    invoke-virtual {v1}, Lcom/amazon/kedu/ftue/assets/Asset;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/commons/io/FilenameUtils;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
