.class Lcom/facebook/AppEventsLogger$AppEvent;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L

.field private static final validatedIdentifiers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isImplicit:Z

.field private jsonObject:Lorg/json/JSONObject;

.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1176
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 7

    const-string v0, "AppEvents"

    .line 1185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1187
    invoke-direct {p0, p2}, Lcom/facebook/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1189
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->name:Ljava/lang/String;

    .line 1191
    iput-boolean p5, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    .line 1192
    new-instance p5, Lorg/json/JSONObject;

    invoke-direct {p5}, Lorg/json/JSONObject;-><init>()V

    iput-object p5, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "_eventName"

    .line 1195
    invoke-virtual {p5, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1196
    iget-object p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string p5, "_logTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {p2, p5, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1197
    iget-object p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string p5, "_ui"

    invoke-static {p1}, Lcom/facebook/internal/Utility;->getActivityName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p3, :cond_0

    .line 1200
    iget-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string p2, "_valueToSum"

    invoke-virtual {p3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {p1, p2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1203
    :cond_0
    iget-boolean p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    if-eqz p1, :cond_1

    .line 1204
    iget-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string p2, "_implicitlyLogged"

    const-string p3, "1"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1207
    :cond_1
    invoke-static {}, Lcom/facebook/Settings;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1209
    iget-object p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string p3, "_appVersion"

    invoke-virtual {p2, p3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    if-eqz p4, :cond_5

    .line 1213
    invoke-virtual {p4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 1215
    invoke-direct {p0, p2}, Lcom/facebook/AppEventsLogger$AppEvent;->validateIdentifier(Ljava/lang/String;)V

    .line 1217
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    .line 1218
    instance-of p5, p3, Ljava/lang/String;

    if-nez p5, :cond_4

    instance-of p5, p3, Ljava/lang/Number;

    if-eqz p5, :cond_3

    goto :goto_1

    .line 1219
    :cond_3
    new-instance p1, Lcom/facebook/FacebookException;

    const-string p4, "Parameter value \'%s\' for key \'%s\' should be a string or a numeric type."

    const/4 p5, 0x2

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p3, p5, v1

    aput-object p2, p5, v2

    invoke-static {p4, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1227
    :cond_4
    :goto_1
    iget-object p5, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 1231
    :cond_5
    iget-boolean p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    if-nez p1, :cond_6

    .line 1232
    sget-object p1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    const-string p2, "Created app event \'%s\'"

    new-array p3, v2, [Ljava/lang/Object;

    iget-object p4, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {p4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {p1, v0, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 1238
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    new-array p3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v1

    const-string p1, "JSON encoding for app event failed: \'%s\'"

    invoke-static {p2, v0, p1, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 1240
    iput-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    :cond_6
    :goto_2
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1250
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    .line 1251
    iput-boolean p2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZLcom/facebook/AppEventsLogger$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1171
    invoke-direct {p0, p1, p2}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private validateIdentifier(Ljava/lang/String;)V
    .locals 5

    const/16 v0, 0x28

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 1270
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v0, :cond_0

    goto :goto_1

    .line 1280
    :cond_0
    sget-object v3, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v3

    .line 1281
    :try_start_0
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1282
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_2

    const-string v0, "^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"

    .line 1285
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1286
    sget-object v0, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    monitor-enter v0

    .line 1287
    :try_start_1
    sget-object v1, Lcom/facebook/AppEventsLogger$AppEvent;->validatedIdentifiers:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1288
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 1290
    :cond_1
    new-instance v0, Lcom/facebook/FacebookException;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    const-string p1, "Skipping event named \'%s\' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_1
    move-exception p1

    .line 1282
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    :cond_3
    :goto_1
    if-nez p1, :cond_4

    const-string p1, "<None Provided>"

    .line 1274
    :cond_4
    new-instance v3, Lcom/facebook/FacebookException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    const-string p1, "Identifier \'%s\' must be less than %d characters"

    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .line 1317
    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;ZLcom/facebook/AppEventsLogger$1;)V

    return-object v0
.end method


# virtual methods
.method public getIsImplicit()Z
    .locals 1

    .line 1255
    iget-boolean v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    return v0
.end method

.method public getJSONObject()Lorg/json/JSONObject;
    .locals 1

    .line 1259
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 1322
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "_eventName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->isImplicit:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent;->jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string v1, "\"%s\", implicit: %b, json: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
