.class Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;
.super Ljava/lang/Object;
.source "FileStorageJSONParser.java"


# static fields
.field private static final JSON_APP_VERSION_ID:Ljava/lang/String; = "app_version"

.field private static final JSON_SESSION_INFO:Ljava/lang/String; = "session_info"

.field private static final JSON_SESSION_MARKETPLACE_ID:Ljava/lang/String; = "marketplace_id"

.field private static final JSON_SESSION_SESSION_ID:Ljava/lang/String; = "session_id"

.field private static final JSON_TREATMENT_ASSIGNMENTS:Ljava/lang/String; = "treatment_assignments"

.field private static final JSON_TREATMENT_ASSIGNMENT_CAN_TRIGGER:Ljava/lang/String; = "can_trigger"

.field private static final JSON_TREATMENT_ASSIGNMENT_DATE_MODIFIED:Ljava/lang/String; = "date_modified"

.field private static final JSON_TREATMENT_ASSIGNMENT_IS_LOCKED:Ljava/lang/String; = "is_locked"

.field private static final JSON_TREATMENT_ASSIGNMENT_KEEP_IN_CACHE_DATE_IN_MILLIS:Ljava/lang/String; = "keep_in_cache_date_in_millis"

.field private static final JSON_TREATMENT_ASSIGNMENT_SUGGESTED_EXPIRATION:Ljava/lang/String; = "suggested_expiration"

.field private static final JSON_TREATMENT_ASSIGNMENT_TREATMENT:Ljava/lang/String; = "treatment"

.field private static final JSON_TREATMENT_ASSIGNMENT_VERSION:Ljava/lang/String; = "version"

.field private static final JSON_TREATMENT_ASSIGNMENT_WEBLAB:Ljava/lang/String; = "weblab"


# instance fields
.field private mRoot:Lorg/json/JSONObject;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method getApplicationVersion()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSessionInfo()Lcom/amazon/weblab/mobile/model/SessionInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string/jumbo v1, "session_info"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 166
    new-instance v1, Lcom/amazon/weblab/mobile/model/SessionInfo;

    const-string/jumbo v2, "session_id"

    .line 167
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "marketplace_id"

    .line 168
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/amazon/weblab/mobile/model/SessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method getTreatmentAssignments(Ljava/lang/String;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string/jumbo v0, "treatment_assignments"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 183
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 186
    iget-object v1, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 188
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 189
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "keep_in_cache_date_in_millis"

    .line 195
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :cond_1
    move-wide v12, v3

    .line 202
    new-instance v3, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    const-string/jumbo v4, "weblab"

    .line 203
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "treatment"

    .line 204
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "version"

    .line 205
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/util/Date;

    const-string v4, "date_modified"

    .line 206
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v9, v4, v5}, Ljava/util/Date;-><init>(J)V

    new-instance v10, Ljava/util/Date;

    const-string/jumbo v4, "suggested_expiration"

    .line 208
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-direct {v10, v4, v5}, Ljava/util/Date;-><init>(J)V

    const-string v4, "can_trigger"

    .line 209
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v11

    move-object v5, v3

    invoke-direct/range {v5 .. v13}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;ZJ)V

    const-string v4, "is_locked"

    .line 212
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 211
    invoke-virtual {v3, v2}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->setLocked(Z)V

    .line 213
    invoke-virtual {v3}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method putApplicationVersion(Ljava/lang/String;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string v1, "app_version"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 137
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion cannot be null nor empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method putSessionInfo(Lcom/amazon/weblab/mobile/model/SessionInfo;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 78
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 79
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getSessionId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "session_id"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    invoke-virtual {p1}, Lcom/amazon/weblab/mobile/model/SessionInfo;->getMarketplaceId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "marketplace_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string/jumbo v1, "session_info"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 75
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "sessionInfo cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method putTreatmentAssignments(Ljava/util/Collection;)Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/amazon/weblab/mobile/model/TreatmentAssignment;",
            ">;)",
            "Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Lorg/json/JSONException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 100
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 104
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 105
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;

    .line 106
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 107
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->canTrigger()Z

    move-result v3

    const-string v4, "can_trigger"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getDateModified()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string v5, "date_modified"

    .line 108
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 111
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getSuggestedExpiration()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-string/jumbo v5, "suggested_expiration"

    .line 110
    invoke-virtual {v2, v5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 112
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->isLocked()Z

    move-result v3

    const-string v4, "is_locked"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getTreatment()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "treatment"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getVersion()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "version"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getWeblabName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "weblab"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v1}, Lcom/amazon/weblab/mobile/model/TreatmentAssignment;->getKeepInCacheDateInMillis()J

    move-result-wide v3

    const-string v1, "keep_in_cache_date_in_millis"

    invoke-virtual {v2, v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 117
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 120
    :cond_0
    iget-object p1, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    const-string/jumbo v1, "treatment_assignments"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object p0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "treatmentAssignments cannot be null nor empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/amazon/weblab/mobile/repository/FileStorageJSONParser;->mRoot:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
