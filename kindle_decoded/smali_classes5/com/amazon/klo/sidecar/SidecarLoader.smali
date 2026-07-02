.class public Lcom/amazon/klo/sidecar/SidecarLoader;
.super Ljava/lang/Object;
.source "SidecarLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "com.amazon.klo.sidecar.SidecarLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateDnaDrawingPos(Lorg/json/JSONObject;)V
    .locals 13

    const-string v0, "erl"

    .line 230
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "srl"

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    sub-int/2addr v0, v1

    const-string/jumbo v1, "terms"

    .line 232
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 234
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 236
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 237
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "locs"

    .line 238
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    .line 241
    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2

    .line 243
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->optJSONArray(I)Lorg/json/JSONArray;

    move-result-object v8

    .line 244
    invoke-virtual {v8, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v9

    const/4 v10, 0x2

    .line 245
    :goto_2
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_1

    .line 247
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->optInt(I)I

    move-result v11

    add-int/2addr v11, v9

    mul-int/lit8 v11, v11, 0x64

    .line 248
    div-int/2addr v11, v0

    add-int/lit8 v12, v6, 0x1

    if-lt v11, v12, :cond_0

    .line 252
    invoke-virtual {v3, v11}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move v6, v11

    :cond_0
    add-int/lit8 v10, v10, 0x2

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :try_start_0
    const-string/jumbo v5, "pos"

    .line 260
    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    .line 264
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v4

    const-string v5, "exception when pushing positions"

    if-eqz v4, :cond_3

    .line 266
    sget-object v4, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v4, v5, v3}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 268
    :cond_3
    sget-object v3, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v3, v5}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static checkGuid(Lorg/json/JSONObject;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "embeddedId"

    .line 275
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getSidecarJson(Lcom/amazon/kindle/krx/content/IBook;)Lorg/json/JSONObject;
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 35
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v1

    .line 36
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v1, v0

    move-object v2, v1

    .line 38
    :goto_0
    invoke-static {v1, v2}, Lcom/amazon/klo/KindleLearningObjectPlugin;->getSidecarFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_2

    .line 41
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SDK not ready, could not determine sidecar filename for asin "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :cond_1
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    const-string v1, "SDK not ready, could not determine sidecar filename"

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 48
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_4

    .line 50
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 52
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sidecar for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " doesn\'t exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_3
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    const-string v1, "Sidecar doesn\'t exist"

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 58
    :cond_4
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Sidecar at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-static {v2}, Lcom/amazon/klo/sidecar/SidecarLoader;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    .line 64
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to read file: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 70
    :cond_5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    invoke-static {p0, v2}, Lcom/amazon/klo/sidecar/SidecarLoader;->parse(Lcom/amazon/kindle/krx/content/IBook;Lorg/json/JSONObject;)V

    .line 93
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/klo/sidecar/SidecarLoader;->checkGuid(Lorg/json/JSONObject;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    return-object v2

    :cond_6
    return-object v0

    :catch_0
    move-exception p0

    .line 83
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v1

    const-string v2, "Unexpected exception trying to open sidecar"

    if-eqz v1, :cond_7

    .line 85
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    :cond_7
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :catch_1
    move-exception p0

    .line 74
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v1

    const-string v2, "JSON object building error"

    if-eqz v1, :cond_8

    .line 76
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, p0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    :cond_8
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v2}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static parse(Lcom/amazon/kindle/krx/content/IBook;Lorg/json/JSONObject;)V
    .locals 10

    const-string/jumbo v0, "topic"

    const-string v1, "erl"

    const-string/jumbo v2, "srl"

    const-string/jumbo v3, "type"

    :try_start_0
    const-string/jumbo v4, "terms"

    .line 166
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 167
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "id"

    if-ge v6, v7, :cond_1

    .line 169
    :try_start_1
    invoke-virtual {v4, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 170
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 172
    invoke-virtual {v7, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "character"

    .line 173
    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 174
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 176
    invoke-virtual {v7, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "chapters"

    .line 180
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    .line 183
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 185
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v8, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 190
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 192
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v6, "name"

    .line 193
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, v6, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    :cond_3
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    if-eqz v0, :cond_4

    .line 199
    invoke-virtual {v0, v5}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string/jumbo v4, "start"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 198
    invoke-virtual {p1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 202
    :cond_4
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5

    if-eqz v0, :cond_5

    .line 206
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result p0

    sub-int/2addr p0, v3

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p0

    const-string v0, "end"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 204
    invoke-virtual {p1, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 210
    :cond_5
    invoke-static {p1}, Lcom/amazon/klo/sidecar/SidecarLoader;->calculateDnaDrawingPos(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 214
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result p1

    const-string v0, "Caught JSON exception when parsing sidecar"

    if-eqz p1, :cond_6

    .line 216
    sget-object p1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 218
    :cond_6
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private static readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 7

    const-string v0, "failed to close sidecar file"

    const/16 v1, 0x1000

    new-array v1, v1, [C

    const/4 v2, 0x0

    .line 119
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const-string v5, "UTF-8"

    invoke-direct {v3, v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v5

    long-to-int p0, v5

    invoke-direct {v4, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 126
    :goto_0
    invoke-virtual {v3, v1}, Ljava/io/InputStreamReader;->read([C)I

    move-result p0

    const/4 v5, -0x1

    if-eq p0, v5, :cond_0

    const/4 v5, 0x0

    .line 128
    invoke-virtual {v4, v1, v5, p0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 147
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 151
    :catch_0
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_2
    move-exception p0

    move-object v3, v2

    .line 135
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    const-string v4, "Sidecar loading error"

    invoke-static {v1, v4, p0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 139
    :cond_1
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    const-string v1, "Sidecar reading error"

    invoke-static {p0, v1}, Lcom/amazon/klo/sdk/KRX;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_2

    .line 147
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    .line 151
    :catch_3
    sget-object p0, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_3
    return-object v2

    :catchall_1
    move-exception p0

    move-object v2, v3

    :goto_4
    if-eqz v2, :cond_3

    .line 147
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    .line 151
    :catch_4
    sget-object v1, Lcom/amazon/klo/sidecar/SidecarLoader;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/klo/sdk/KRX;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_3
    :goto_5
    throw p0
.end method
