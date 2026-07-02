.class public Lcom/amazon/kindle/content/ExtendedMetadataWrapper;
.super Ljava/lang/Object;
.source "ExtendedMetadataWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private m_data:Lorg/json/JSONObject;

.field private m_dataString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_dataString:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_dataString:Ljava/lang/String;

    return-void
.end method

.method private getJSONObject()Lorg/json/JSONObject;
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_data:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_dataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_dataString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    iput-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_data:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 138
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_data:Lorg/json/JSONObject;

    :goto_1
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_dataString:Ljava/lang/String;

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->m_data:Lorg/json/JSONObject;

    return-object v0
.end method


# virtual methods
.method public appendString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_1

    .line 74
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 75
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    .line 77
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 78
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    :cond_0
    invoke-virtual {v1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 82
    sget-object v1, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on trying to append a string in the extended metadata with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and value "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 102
    invoke-direct {p0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 104
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object p1

    .line 108
    :cond_0
    instance-of v0, p1, Lorg/json/JSONArray;

    if-eqz v0, :cond_3

    .line 109
    check-cast p1, Lorg/json/JSONArray;

    .line 110
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 113
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 115
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_0

    .line 56
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception on trying to add a string in the extended metadata with key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and value "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/amazon/kindle/content/ExtendedMetadataWrapper;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
