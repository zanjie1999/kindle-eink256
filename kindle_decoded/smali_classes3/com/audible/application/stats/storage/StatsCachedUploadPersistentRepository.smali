.class public Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;
.super Ljava/lang/Object;
.source "StatsCachedUploadPersistentRepository.java"

# interfaces
.implements Lcom/audible/application/stats/storage/IStatsCachedUploadRepository;


# static fields
.field private static final IS_NOT_NULL_AND:Ljava/lang/String; = " is not null and "

.field private static final IS_NULL:Ljava/lang/String; = " is null "

.field private static final IS_NULL_AND:Ljava/lang/String; = " is null and "

.field private static customerId:Ljava/lang/String;

.field private static marketplaceId:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    return-void
.end method

.method private createStatsContentValue(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 3

    if-eqz p2, :cond_10

    .line 171
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "uuid"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 175
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsin()Ljava/lang/String;

    move-result-object v0

    const-string v2, "asin"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_1
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsinOwned()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 178
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAsinOwned()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "asin_owned"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    :cond_2
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 181
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "event_type"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    :cond_3
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningStartTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 184
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningStartTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToDatabaseFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "event_timestamp"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :cond_4
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 187
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningEndTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToDatabaseFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "event_end_timestamp"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_5
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getLocalTimezone()Ljava/util/TimeZone;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getLocalTimezone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 190
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getLocalTimezone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertTimezoneToServiceFormat(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "local_timezone"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_6
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getPlayingImmersionReading()Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 193
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getPlayingImmersionReading()Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "playing_immersion_reading"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_7
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getNarrationSpeed()Ljava/lang/Float;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 196
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getNarrationSpeed()Ljava/lang/Float;

    move-result-object v0

    const-string v2, "narration_speed"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 198
    :cond_8
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getLengthOfBook()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 199
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getLengthOfBook()Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "length_of_book"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    :cond_9
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getDeliveryType()Lcom/audible/application/stats/integration/DeliveryType;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 202
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getDeliveryType()Lcom/audible/application/stats/integration/DeliveryType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/application/stats/integration/DeliveryType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v2, "delivery_type"

    invoke-virtual {p1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :cond_a
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningMode()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningMode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 205
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getListeningMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "listening_mode"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    :cond_b
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 208
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getSubscriptionId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "subscription_id"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_c
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getStore()Lcom/audible/application/stats/integration/StoreType;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 211
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getStore()Lcom/audible/application/stats/integration/StoreType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/application/stats/integration/StoreType;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "store"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    :cond_d
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventStartPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 214
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventStartPosition()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "event_start_position"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 216
    :cond_e
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventEndPosition()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 217
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getEventEndPosition()Ljava/lang/Long;

    move-result-object v0

    const-string v1, "event_end_position"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 220
    :cond_f
    invoke-virtual {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getContentDiscoverySources()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_10

    .line 221
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 222
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p2}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 223
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "content_discovery"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method private deleteInvalidStatsEvent(Landroid/database/Cursor;)V
    .locals 3

    :try_start_0
    const-string v0, "uuid"

    .line 154
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "uuid=?"

    .line 157
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 159
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository deleteInvalidStatsEvent - Failed to remove invalid stats element"

    .line 161
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static getCustomerId()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public static getMarketplaceId()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    return-object v0
.end method

.method private getStatsTableContentUri()Landroid/net/Uri;
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mStatsContentProviderConfiguration:Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;

    const-string v1, "StatsTable"

    invoke-interface {v0, v1}, Lcom/audible/mobile/stats/persistence/StatsContentProviderConfiguration;->getContentUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private mapCursorToStatsEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    const-string v1, "asin_owned"

    .line 83
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 86
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    const-string v3, "playing_immersion_reading"

    .line 88
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 90
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 91
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    const-string v4, "narration_speed"

    .line 93
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 95
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 96
    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    goto :goto_2

    :cond_2
    move-object v4, v0

    :goto_2
    const-string v5, "length_of_book"

    .line 98
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 100
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 101
    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    :cond_3
    const-string v2, "content_discovery"

    .line 103
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 107
    :try_start_0
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 108
    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 109
    new-instance v7, Lcom/audible/mobile/stats/domain/ContentDiscoverySource;

    invoke-virtual {v6, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/audible/mobile/stats/domain/ContentDiscoverySource;-><init>(Lorg/json/JSONObject;)V

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catch_0
    move-exception v2

    const-string v6, "StatsCachedUploadPersistentRepository mapCursorToStatsEvent - Failed to create ContentDiscoverySource list from database"

    .line 112
    invoke-static {v6, v2}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    :cond_4
    new-instance v2, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    invoke-direct {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;-><init>()V

    iget-object v6, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    .line 118
    invoke-virtual {v2, v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withContext(Landroid/content/Context;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v6, "uuid"

    .line 119
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withID(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v6, "asin"

    .line 120
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withAsin(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 121
    invoke-virtual {v2, v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withAsinOwned(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v1, "event_type"

    .line 122
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withEventType(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v1, "event_timestamp"

    .line 124
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->parseDateFromDatabase(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 123
    invoke-virtual {v2, v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withListeningStartTime(Ljava/util/Date;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v1, "event_end_timestamp"

    .line 126
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/application/stats/util/Util;->parseDateFromDatabase(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withListeningEndTime(Ljava/util/Date;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v1, "local_timezone"

    .line 127
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withLocalTimezone(Ljava/util/TimeZone;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 128
    invoke-virtual {v2, v3}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withPlayingImmersionReading(Ljava/lang/Boolean;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    invoke-virtual {v2, v4}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withNarrationSpeed(Ljava/lang/Float;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withLengthOfBook(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "delivery_type"

    .line 129
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/integration/DeliveryType;->fromValue(Ljava/lang/String;)Lcom/audible/application/stats/integration/DeliveryType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withDeliveryType(Lcom/audible/application/stats/integration/DeliveryType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "subscription_id"

    .line 130
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withSubscriptionId(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "store"

    .line 131
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/application/stats/integration/StoreType;->fromValue(Ljava/lang/String;)Lcom/audible/application/stats/integration/StoreType;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withStore(Lcom/audible/application/stats/integration/StoreType;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "listening_mode"

    .line 132
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withListeningMode(Ljava/lang/String;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "event_start_position"

    .line 133
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withEventStartPosition(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    const-string v0, "event_end_position"

    .line 134
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withEventEndPosition(Ljava/lang/Long;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    .line 135
    invoke-virtual {v2, v5}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->withContentDiscoverySources(Ljava/util/List;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;->build()Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v1, "StatsCachedUploadPersistentRepository mapCursorToStatsEvent - invalid stats event loaded, attempting to delete"

    .line 143
    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    .line 144
    invoke-direct {p0, p1}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->deleteInvalidStatsEvent(Landroid/database/Cursor;)V

    :cond_5
    return-object v0
.end method


# virtual methods
.method public clearErrorEvents([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V
    .locals 6

    .line 393
    array-length v0, p1

    if-lez v0, :cond_2

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 397
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    const-string v4, "uuid=?"

    .line 398
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    array-length v4, p1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const-string v4, " OR "

    .line 400
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    :cond_0
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 406
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository - Exception clearErrorEvents() : "

    .line 408
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "StatsCachedUploadPersistentRepository - [clearErrorEvents] deleted rows {}"

    aput-object v1, v0, v2

    .line 410
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v5

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public clearServerSyncedEvents(Ljava/util/Date;)V
    .locals 7

    const-string v0, " = ? AND "

    .line 417
    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 424
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customerId"

    .line 427
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "marketplace_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x3

    const-string v5, "synced"

    if-nez p1, :cond_1

    .line 430
    :try_start_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " =?"

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array p1, v0, [Ljava/lang/String;

    .line 431
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    aput-object v0, p1, v2

    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v0, p1, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p1, v1

    goto :goto_0

    .line 433
    :cond_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " =? AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "synced_timestamp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <=? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    .line 434
    sget-object v6, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    aput-object v6, v5, v2

    sget-object v6, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v6, v5, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v5, v0

    move-object p1, v5

    .line 437
    :goto_0
    iget-object v0, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4, p1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository - Exception clearServerSyncedEvents() : "

    .line 439
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_1
    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "StatsCachedUploadPersistentRepository - [clearServerSyncedEvents], number of deleted rows: "

    aput-object v1, v0, v2

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v3

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public clearStaleEvents()V
    .locals 7

    const-string v0, " = ? AND "

    .line 564
    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 569
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customerId"

    .line 570
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "marketplace_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "event_end_timestamp"

    .line 571
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is null and "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ?"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 572
    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v0, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v0, v5

    .line 574
    iget-object v2, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    new-array v1, v5, [Ljava/lang/Object;

    const-string v2, "StatsCachedUploadPersistentRepository - [clearStaleEvents] number of stale events cleared: "

    aput-object v2, v1, v3

    .line 575
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v4

    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "StatsCachedUploadPersistentRepository - Exception clearStaleEvents() : "

    .line 577
    invoke-static {v1, v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getReadyToDispatchEvents()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent;",
            ">;"
        }
    .end annotation

    const-string v0, " = ? AND "

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 279
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "customerId"

    .line 280
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "marketplace_id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "synced"

    .line 281
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complete"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ? "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x4

    new-array v11, v0, [Ljava/lang/String;

    .line 282
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    aput-object v0, v11, v4

    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v0, v11, v3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v2

    const/4 v0, 0x3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v11, v0

    .line 285
    iget-object v0, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "event_timestamp DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 287
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    new-array v0, v2, [Ljava/lang/Object;

    const-string v6, "StatsCachedUploadPersistentRepository - getReadyToDispatchEvents(), number of events returned from db: "

    aput-object v6, v0, v4

    .line 288
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    .line 289
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 292
    :cond_1
    invoke-direct {p0, v5}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mapCursorToStatsEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "StatsCachedUploadPersistentRepository - Exception getReadyToDispatchEvents() : "

    .line 299
    invoke-static {v6, v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 301
    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    new-array v0, v2, [Ljava/lang/Object;

    const-string v2, "StatsCachedUploadPersistentRepository - getReadyToDispatchEvents(), number of StatEvent added: "

    aput-object v2, v0, v4

    .line 303
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-object v1

    .line 301
    :goto_1
    invoke-static {v5}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public getServiceSyncedEvents()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ListeningStatsEvent;",
            ">;"
        }
    .end annotation

    const-string v0, " = ? AND "

    .line 232
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 234
    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 239
    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "customerId"

    .line 240
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "marketplace_id"

    .line 241
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "synced"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ? "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v11, v0, [Ljava/lang/String;

    .line 242
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    aput-object v0, v11, v2

    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v0, v11, v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v11, v3

    .line 245
    iget-object v0, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "event_timestamp DESC"

    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 247
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    new-array v0, v3, [Ljava/lang/Object;

    const-string v6, "StatsCachedUploadPersistentRepository - getServiceSyncedEvents(), number of events returned from db: "

    aput-object v6, v0, v2

    .line 248
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    .line 249
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 252
    :cond_1
    invoke-direct {p0, v5}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mapCursorToStatsEvent(Landroid/database/Cursor;)Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 254
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    :cond_2
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v6, "StatsCachedUploadPersistentRepository - Exception getServiceSyncedEvents() : "

    .line 259
    invoke-static {v6, v0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    :cond_3
    :goto_0
    invoke-static {v5}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    new-array v0, v3, [Ljava/lang/Object;

    const-string v3, "StatsCachedUploadPersistentRepository - getServiceSyncedEvents(), number of StatEvent added: "

    aput-object v3, v0, v2

    .line 263
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V

    return-object v1

    .line 261
    :goto_1
    invoke-static {v5}, Lcom/audible/application/stats/util/Util;->closeCursor(Landroid/database/Cursor;)V

    throw v0

    :cond_4
    :goto_2
    return-object v1
.end method

.method public recordListeningStatsEvent(Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Z)V
    .locals 2

    .line 362
    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 368
    :cond_0
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 370
    invoke-direct {p0, v0, p1}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->createStatsContentValue(Landroid/content/ContentValues;Lcom/audible/mobile/stats/domain/ListeningStatsEvent;)V

    const-string p1, "synced"

    const/4 v1, 0x0

    .line 372
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "complete"

    .line 373
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "customerId"

    .line 375
    sget-object p2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "marketplace_id"

    .line 376
    sget-object p2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "recordListeningStatsEvent -  inserting into audible-stats.db"

    .line 378
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 380
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "recordListeningStatsEvent - Exception insertNewEvent() : "

    .line 382
    invoke-static {p2, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setEventsToCompleted(Ljava/util/Date;)V
    .locals 9

    const-string v0, " = ? AND "

    .line 531
    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    .line 536
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customerId"

    .line 537
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "marketplace_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, " = ?"

    const-string v2, "event_end_timestamp"

    const-string v3, "complete"

    if-eqz p1, :cond_1

    .line 540
    :try_start_1
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 542
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not null and "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 544
    sget-object v4, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v0, v5

    sget-object v4, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v0, v6

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v0, v7

    .line 546
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 547
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v4, v3, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    if-eqz p1, :cond_2

    .line 549
    invoke-static {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToDatabaseFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    :cond_2
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v4, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    new-array v0, v7, [Ljava/lang/Object;

    const-string v1, "StatsCachedUploadPersistentRepository - [setEventToCompleted] number of stats events set complete: "

    aput-object v1, v0, v5

    .line 553
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v6

    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->d([Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository - Exception setEventToCompleted() : "

    .line 556
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setEventsToSynced([Lcom/audible/mobile/stats/domain/ListeningStatsEvent;Ljava/util/Date;)V
    .locals 6

    .line 448
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 453
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 454
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    .line 455
    :goto_0
    array-length v4, p1

    const/4 v5, 0x1

    if-ge v3, v4, :cond_1

    const-string v4, "uuid=?"

    .line 456
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    array-length v4, p1

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_0

    const-string v4, " OR "

    .line 458
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    :cond_0
    aget-object v4, p1, v3

    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 463
    :cond_1
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "synced"

    .line 464
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v3, "synced_timestamp"

    .line 465
    invoke-static {p2}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object p2, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v3, p1, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "StatsCachedUploadPersistentRepository - Exception setEventsToSynced() : "

    .line 470
    invoke-static {p2, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 473
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "StatsCachedUploadPersistentRepository - [setEventsToSynced] updated rows {}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 61
    sput-object p1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    .line 62
    sput-object p2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    return-void
.end method

.method public updateEventListeningPosition(Ljava/lang/Long;)V
    .locals 5

    const-string v0, " = ? AND "

    .line 507
    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 511
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customerId"

    .line 512
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "marketplace_id"

    .line 513
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ? "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 514
    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 516
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "event_end_position"

    .line 517
    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 519
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository - Exception updateEventListeningPosition() : "

    .line 522
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "StatsCachedUploadPersistentRepository - [updateEventListeningPosition] updated listening position"

    .line 525
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public updateEventListeningTime(Ljava/util/Date;)V
    .locals 5

    const-string v0, " = ? AND "

    .line 481
    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "customerId"

    .line 487
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "marketplace_id"

    .line 488
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "complete"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = ? "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 489
    sget-object v2, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->customerId:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x1

    sget-object v4, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->marketplaceId:Ljava/lang/String;

    aput-object v4, v0, v2

    const/4 v2, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    .line 491
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "event_end_timestamp"

    .line 492
    invoke-static {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToDatabaseFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    iget-object p1, p0, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p0}, Lcom/audible/application/stats/storage/StatsCachedUploadPersistentRepository;->getStatsTableContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "StatsCachedUploadPersistentRepository - Exception updateEventListeningTime() : "

    .line 497
    invoke-static {v0, p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-string p1, "StatsCachedUploadPersistentRepository - [updateEventListeningTime] updated listening time"

    .line 500
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
