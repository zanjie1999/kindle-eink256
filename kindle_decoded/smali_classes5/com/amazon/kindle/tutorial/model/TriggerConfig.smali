.class public Lcom/amazon/kindle/tutorial/model/TriggerConfig;
.super Ljava/lang/Object;
.source "TriggerConfig.java"


# static fields
.field private static final ACTIVITY_FOREGROUND_CHECK_KEY:Ljava/lang/String; = "activityForegroundCheck"

.field private static final EVENT_KEY:Ljava/lang/String; = "event"

.field private static final TOPIC_KEY:Ljava/lang/String; = "topic"


# instance fields
.field private final activityForegroundCheck:Z

.field private final event:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->topic:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->event:Ljava/lang/String;

    .line 23
    iput-boolean p3, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->activityForegroundCheck:Z

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TriggerConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "topic"

    .line 64
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "event"

    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activityForegroundCheck"

    .line 68
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 71
    :goto_0
    new-instance v2, Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    invoke-direct {v2, v0, v1, p0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 46
    :cond_0
    instance-of v1, p1, Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 49
    :cond_1
    check-cast p1, Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    .line 50
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 51
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getActivityForegroundCheck()Z
    .locals 1

    .line 38
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->activityForegroundCheck:Z

    return v0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->event:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getTopic()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x11

    add-int/lit8 v0, v0, 0x1f

    .line 60
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->getEvent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    mul-int/lit8 v1, v1, 0x11

    add-int/2addr v0, v1

    return v0
.end method
