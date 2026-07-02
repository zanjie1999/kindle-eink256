.class public Lcom/audible/mobile/stats/domain/ContentDiscoverySource;
.super Lorg/json/JSONObject;
.source "ContentDiscoverySource.java"


# static fields
.field private static final ID:Ljava/lang/String; = "id"

.field private static final TYPE:Ljava/lang/String; = "type"


# instance fields
.field private final id:Ljava/lang/String;

.field private final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 25
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 32
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/ContentDiscoverySource;->type:Ljava/lang/String;

    .line 33
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/ContentDiscoverySource;->id:Ljava/lang/String;

    const-string v0, "type"

    .line 34
    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "id"

    .line 35
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "id must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "type must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string v0, "type"

    .line 46
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/audible/mobile/stats/domain/ContentDiscoverySource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
