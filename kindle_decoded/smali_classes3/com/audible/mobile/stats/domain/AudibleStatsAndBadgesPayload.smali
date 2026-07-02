.class public abstract Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;
.super Lorg/json/JSONObject;
.source "AudibleStatsAndBadgesPayload.java"


# instance fields
.field private mLocale:Ljava/lang/String;

.field private mStore:Lcom/audible/application/stats/integration/StoreType;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, v0}, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;-><init>(Lcom/audible/application/stats/integration/StoreType;)V

    return-void
.end method

.method public constructor <init>(Lcom/audible/application/stats/integration/StoreType;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 40
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->mLocale:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->mStore:Lcom/audible/application/stats/integration/StoreType;

    const-string p1, "locale"

    .line 42
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    iget-object p1, p0, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->mStore:Lcom/audible/application/stats/integration/StoreType;

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Lcom/audible/application/stats/integration/StoreType;->getValue()Ljava/lang/String;

    move-result-object p1

    const-string v0, "store"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method


# virtual methods
.method public toRestfulString()Ljava/lang/String;
    .locals 4

    const-string v0, ";"

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "locale="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->mLocale:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "Failed to add LOCALE parameter"

    .line 55
    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    .line 58
    :goto_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "store="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/audible/mobile/stats/domain/AudibleStatsAndBadgesPayload;->mStore:Lcom/audible/application/stats/integration/StoreType;

    invoke-virtual {v3}, Lcom/audible/application/stats/integration/StoreType;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string v0, "Failed to add STORE parameter"

    .line 61
    invoke-static {v0}, Lcom/audible/application/stats/util/LogController;->w(Ljava/lang/String;)V

    .line 63
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
