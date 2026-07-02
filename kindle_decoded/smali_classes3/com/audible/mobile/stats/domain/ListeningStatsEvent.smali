.class public Lcom/audible/mobile/stats/domain/ListeningStatsEvent;
.super Lorg/json/JSONObject;
.source "ListeningStatsEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/stats/domain/ListeningStatsEvent$Builder;
    }
.end annotation


# static fields
.field private static final ASIN:Ljava/lang/String; = "asin"

.field private static final ASIN_OWNED:Ljava/lang/String; = "asin_owned"

.field private static final AVAILABLE_TIME_ZONE_IDS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CONTENT_DISCOVER_SOURCE:Ljava/lang/String; = "content_discovery_source"

.field private static final DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;

.field private static final DEFAULT_EVENT_TYPE:Ljava/lang/String; = "Listening"

.field private static final DEFAULT_TIME_ZONE_ID:Ljava/lang/String; = "UTC"

.field private static final DELIVERY_TYPE:Ljava/lang/String; = "delivery_type"

.field private static final EVENT_END_POSITION:Ljava/lang/String; = "event_end_position"

.field private static final EVENT_END_TIMESTAMP:Ljava/lang/String; = "event_end_timestamp"

.field private static final EVENT_START_POSITION:Ljava/lang/String; = "event_start_position"

.field private static final EVENT_TIMESTAMP:Ljava/lang/String; = "event_timestamp"

.field private static final EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final LENGTH_OF_BOOK:Ljava/lang/String; = "length_of_book"

.field private static final LISTENING_MODE:Ljava/lang/String; = "listening_mode"

.field private static final LOCAL_TIMEZONE:Ljava/lang/String; = "local_timezone"

.field private static final NARRATION_SPEED:Ljava/lang/String; = "narration_speed"

.field private static final PLAYING_IMMERSION_READING:Ljava/lang/String; = "playing_immersion_reading"

.field private static final STORE:Ljava/lang/String; = "store"

.field private static final SUBSCRIPTION_ID:Ljava/lang/String; = "subscription_id"

.field private static final VALID_TIME_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

.field private static final VERSION_OF_APP:Ljava/lang/String; = "version_of_app"


# instance fields
.field private final asin:Ljava/lang/String;

.field private final asinOwned:Ljava/lang/Boolean;

.field private final contentDiscoverySources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;

.field private final deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

.field private eventEndPosition:Ljava/lang/Long;

.field private final eventStartPosition:Ljava/lang/Long;

.field private final eventStartTime:Ljava/util/Date;

.field private eventStopTime:Ljava/util/Date;

.field private final eventType:Ljava/lang/String;

.field private id:Ljava/util/UUID;

.field private final lengthOfBook:Ljava/lang/Long;

.field private final listeningMode:Ljava/lang/String;

.field private final localTimezone:Ljava/util/TimeZone;

.field private mAlarmIntent:Landroid/app/PendingIntent;

.field private mAlarmMgr:Landroid/app/AlarmManager;

.field private mEventUpdatedTime:Ljava/util/Date;

.field private final narrationSpeed:Ljava/lang/Float;

.field private final playingImmersionReading:Ljava/lang/Boolean;

.field private final store:Lcom/audible/application/stats/integration/StoreType;

.field private final subscriptionId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 66
    sget-object v0, Lcom/audible/application/stats/integration/DeliveryType;->DOWNLOAD:Lcom/audible/application/stats/integration/DeliveryType;

    sput-object v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;

    .line 90
    new-instance v0, Ljava/util/HashSet;

    invoke-static {}, Ljava/util/TimeZone;->getAvailableIDs()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->AVAILABLE_TIME_ZONE_IDS:Ljava/util/Set;

    const-string v0, "^[a-zA-Z0-9_/+-]+$"

    .line 91
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->VALID_TIME_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Float;Ljava/lang/Long;Lcom/audible/application/stats/integration/DeliveryType;Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Ljava/util/TimeZone;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Lcom/audible/application/stats/integration/StoreType;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Float;",
            "Ljava/lang/Long;",
            "Lcom/audible/application/stats/integration/DeliveryType;",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            "Ljava/util/TimeZone;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/audible/application/stats/integration/StoreType;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p14

    move-object/from16 v11, p15

    move-object/from16 v12, p17

    move-object/from16 v13, p18

    .line 252
    invoke-direct/range {p0 .. p0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    iput-object v1, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->asin:Ljava/lang/String;

    .line 254
    iput-object v2, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->asinOwned:Ljava/lang/Boolean;

    .line 255
    iput-object v3, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->playingImmersionReading:Ljava/lang/Boolean;

    .line 256
    iput-object v4, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->narrationSpeed:Ljava/lang/Float;

    .line 257
    iput-object v5, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->lengthOfBook:Ljava/lang/Long;

    if-nez p6, :cond_0

    .line 258
    sget-object v14, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->DEFAULT_DELIVERY_TYPE:Lcom/audible/application/stats/integration/DeliveryType;

    goto :goto_0

    :cond_0
    move-object/from16 v14, p6

    :goto_0
    iput-object v14, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    .line 259
    iput-object v6, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->listeningMode:Ljava/lang/String;

    .line 260
    iput-object v7, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartTime:Ljava/util/Date;

    .line 261
    iput-object v8, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStopTime:Ljava/util/Date;

    .line 262
    iput-object v9, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->localTimezone:Ljava/util/TimeZone;

    if-nez p11, :cond_1

    const-string v14, "Listening"

    goto :goto_1

    :cond_1
    move-object/from16 v14, p11

    .line 263
    :goto_1
    iput-object v14, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventType:Ljava/lang/String;

    move-object/from16 v14, p13

    .line 264
    iput-object v14, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->context:Landroid/content/Context;

    .line 265
    iput-object v7, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mEventUpdatedTime:Ljava/util/Date;

    .line 266
    iput-object v10, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->contentDiscoverySources:Ljava/util/List;

    .line 267
    iput-object v11, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->subscriptionId:Ljava/lang/String;

    .line 268
    iput-object v12, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartPosition:Ljava/lang/Long;

    .line 269
    iput-object v13, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventEndPosition:Ljava/lang/Long;

    if-nez p16, :cond_2

    .line 271
    sget-object v15, Lcom/audible/application/stats/StatsManager;->DEFAULT_STORE_TYPE:Lcom/audible/application/stats/integration/StoreType;

    goto :goto_2

    :cond_2
    move-object/from16 v15, p16

    :goto_2
    iput-object v15, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->store:Lcom/audible/application/stats/integration/StoreType;

    .line 272
    invoke-virtual {v15}, Lcom/audible/application/stats/integration/StoreType;->getValue()Ljava/lang/String;

    move-result-object v15

    const-string v7, "store"

    invoke-virtual {v0, v7, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    iget-object v7, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventType:Ljava/lang/String;

    const-string v15, "event_type"

    invoke-virtual {v0, v15, v7}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "asin"

    .line 275
    invoke-virtual {v0, v7, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "asin_owned"

    .line 276
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "playing_immersion_reading"

    .line 277
    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "narration_speed"

    .line 278
    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "length_of_book"

    .line 279
    invoke-virtual {v0, v1, v5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    iget-object v1, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    invoke-virtual {v1}, Lcom/audible/application/stats/integration/DeliveryType;->getValue()Ljava/lang/String;

    move-result-object v1

    const-string v2, "delivery_type"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "listening_mode"

    .line 281
    invoke-virtual {v0, v1, v6}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    invoke-static/range {p8 .. p8}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "event_timestamp"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    invoke-static/range {p13 .. p13}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getAppVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_of_app"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v8, :cond_4

    .line 287
    invoke-virtual {v0, v8}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->setListeningEndTime(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    .line 288
    :cond_3
    new-instance v1, Lorg/json/JSONException;

    const-string v2, "eventStopTime - eventStartTime must be > 5 seconds!"

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    :goto_3
    if-nez v9, :cond_5

    .line 291
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertTimezoneToServiceFormat(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 292
    :cond_5
    invoke-static/range {p10 .. p10}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertTimezoneToServiceFormat(Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object v1

    :goto_4
    const-string v2, "local_timezone"

    .line 291
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz v10, :cond_7

    .line 294
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    .line 295
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    .line 296
    :goto_5
    invoke-interface/range {p14 .. p14}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 297
    invoke-interface {v10, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    const-string v2, "content_discovery_source"

    .line 299
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    if-eqz v11, :cond_8

    const-string v1, "subscription_id"

    .line 303
    invoke-virtual {v0, v1, v11}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_8
    if-eqz v12, :cond_9

    const-string v1, "event_start_position"

    .line 307
    invoke-virtual {v0, v1, v12}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_9
    if-eqz v13, :cond_a

    const-string v1, "event_end_position"

    .line 311
    invoke-virtual {v0, v1, v13}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    if-nez p12, :cond_b

    .line 315
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->id:Ljava/util/UUID;

    goto :goto_6

    .line 317
    :cond_b
    invoke-static/range {p12 .. p12}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    iput-object v1, v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->id:Ljava/util/UUID;

    :goto_6
    return-void
.end method

.method public static convertDateToDatabaseFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 3

    .line 142
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 143
    invoke-virtual {v0, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;
    .locals 1

    .line 148
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertDateToServiceFormat(Ljava/util/Date;Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 5

    .line 161
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getRawOffset()I

    move-result p0

    int-to-long v3, p0

    sub-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 163
    invoke-virtual {p1, v0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 164
    new-instance p0, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {p1}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 165
    invoke-virtual {p1, p0}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v0

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using UTC time zone for date conversion because device\'s time zone ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is invalid."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 175
    :goto_0
    new-instance p1, Ljava/text/SimpleDateFormat;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ss\'Z\'"

    invoke-direct {p1, v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 176
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static convertTimezoneToServiceFormat(Ljava/util/TimeZone;)Ljava/lang/String;
    .locals 2

    .line 190
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 193
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Using UTC time zone because device\'s time zone ID ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") is invalid."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    const-string p0, "UTC"

    return-object p0
.end method

.method public static getAppVersion(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 206
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 207
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "Unable to get the package information"

    .line 209
    invoke-static {v2, p0}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    move-object v0, p0

    .line 216
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v2, 0x14

    if-le p0, v2, :cond_1

    .line 217
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 220
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppVersion set as "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static isValidTimeZoneId(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 200
    sget-object v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->AVAILABLE_TIME_ZONE_IDS:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->VALID_TIME_ZONE_ID_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public cancelListeningTimeUpdateTimer()V
    .locals 2

    .line 462
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 489
    instance-of v0, p1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    if-eqz v0, :cond_0

    .line 490
    check-cast p1, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;

    invoke-virtual {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->getID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAsin()Ljava/lang/String;
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->asin:Ljava/lang/String;

    return-object v0
.end method

.method public getAsinOwned()Ljava/lang/Boolean;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->asinOwned:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getContentDiscoverySources()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/audible/mobile/stats/domain/ContentDiscoverySource;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->contentDiscoverySources:Ljava/util/List;

    return-object v0
.end method

.method public getDeliveryType()Lcom/audible/application/stats/integration/DeliveryType;
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->deliveryType:Lcom/audible/application/stats/integration/DeliveryType;

    return-object v0
.end method

.method public getEventEndPosition()Ljava/lang/Long;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventEndPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getEventStartPosition()Ljava/lang/Long;
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartPosition:Ljava/lang/Long;

    return-object v0
.end method

.method public getEventType()Ljava/lang/String;
    .locals 1

    .line 384
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventType:Ljava/lang/String;

    return-object v0
.end method

.method public getEventUpdatedTime()Ljava/util/Date;
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mEventUpdatedTime:Ljava/util/Date;

    return-object v0
.end method

.method public getID()Ljava/util/UUID;
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->id:Ljava/util/UUID;

    return-object v0
.end method

.method public getLengthOfBook()Ljava/lang/Long;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->lengthOfBook:Ljava/lang/Long;

    return-object v0
.end method

.method public getListeningEndTime()Ljava/util/Date;
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStopTime:Ljava/util/Date;

    return-object v0
.end method

.method public getListeningMode()Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->listeningMode:Ljava/lang/String;

    return-object v0
.end method

.method public getListeningStartTime()Ljava/util/Date;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartTime:Ljava/util/Date;

    return-object v0
.end method

.method public getLocalTimezone()Ljava/util/TimeZone;
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->localTimezone:Ljava/util/TimeZone;

    return-object v0
.end method

.method public getNarrationSpeed()Ljava/lang/Float;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->narrationSpeed:Ljava/lang/Float;

    return-object v0
.end method

.method public getPlayingImmersionReading()Ljava/lang/Boolean;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->playingImmersionReading:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getStore()Lcom/audible/application/stats/integration/StoreType;
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->store:Lcom/audible/application/stats/integration/StoreType;

    return-object v0
.end method

.method public getSubscriptionId()Ljava/lang/String;
    .locals 1

    .line 429
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->subscriptionId:Ljava/lang/String;

    return-object v0
.end method

.method public setEventEndPosition(Ljava/lang/Long;)Z
    .locals 1

    .line 361
    :try_start_0
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventEndPosition:Ljava/lang/Long;

    .line 362
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartPosition:Ljava/lang/Long;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const-string v0, "event_end_position"

    .line 363
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 366
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return p1
.end method

.method public setEventUpdatedTime()V
    .locals 7

    .line 469
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 475
    iget-object v2, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mEventUpdatedTime:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mEventUpdatedTime:Ljava/util/Date;

    .line 476
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    mul-long v4, v4, v2

    cmp-long v2, v0, v4

    if-gez v2, :cond_0

    .line 477
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mEventUpdatedTime:Ljava/util/Date;

    :cond_0
    return-void
.end method

.method public setListeningEndTime(Ljava/util/Date;)Z
    .locals 7

    const/4 v0, 0x0

    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStartTime:Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 335
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    div-long/2addr v5, v3

    sub-long/2addr v5, v1

    const-wide/16 v1, 0x5

    cmp-long v3, v5, v1

    if-gtz v3, :cond_0

    return v0

    .line 339
    :cond_0
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->eventStopTime:Ljava/util/Date;

    const-string v1, "event_end_timestamp"

    .line 340
    invoke-static {p1}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->convertDateToServiceFormat(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    .line 342
    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/Throwable;)V

    return v0
.end method

.method public setListeningTimeUpdateTimer()V
    .locals 9

    .line 442
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmMgr:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->cancelListeningTimeUpdateTimer()V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->context:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 447
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmMgr:Landroid/app/AlarmManager;

    .line 448
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/audible/application/stats/receivers/AlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 449
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 450
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmMgr:Landroid/app/AlarmManager;

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1e

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    add-long/2addr v3, v7

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 452
    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v5

    iget-object v7, p0, Lcom/audible/mobile/stats/domain/ListeningStatsEvent;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 450
    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method
