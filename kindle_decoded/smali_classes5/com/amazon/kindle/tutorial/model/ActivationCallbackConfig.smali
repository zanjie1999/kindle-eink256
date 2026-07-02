.class public Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;
.super Ljava/lang/Object;
.source "ActivationCallbackConfig.java"


# static fields
.field private static final TOPIC_KEY:Ljava/lang/String; = "topic"


# instance fields
.field private final topic:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;->topic:Ljava/lang/String;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "topic"

    .line 29
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 30
    new-instance v0, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    invoke-direct {v0, p0}, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;->topic:Ljava/lang/String;

    return-object v0
.end method
