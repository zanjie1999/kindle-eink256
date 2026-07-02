.class public Lcom/amazon/kindle/tutorial/model/ActivationConfig;
.super Ljava/lang/Object;
.source "ActivationConfig.java"


# static fields
.field private static final ACTIONS_KEY:Ljava/lang/String; = "actions"

.field private static final CALLBACK_KEY:Ljava/lang/String; = "callback"

.field private static final CONDITION_KEY:Ljava/lang/String; = "condition"

.field private static final TRIGGER_KEY:Ljava/lang/String; = "trigger"


# instance fields
.field private final actionsConfig:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/tutorial/model/ActionConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final callbackConfig:Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

.field private final condition:Lcom/amazon/kindle/tutorial/ICondition;

.field private final triggerConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;


# direct methods
.method private constructor <init>(Lcom/amazon/kindle/tutorial/model/TriggerConfig;Lcom/amazon/kindle/tutorial/ICondition;Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/tutorial/model/TriggerConfig;",
            "Lcom/amazon/kindle/tutorial/ICondition;",
            "Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/tutorial/model/ActionConfig;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->triggerConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    .line 42
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->condition:Lcom/amazon/kindle/tutorial/ICondition;

    .line 43
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->callbackConfig:Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    .line 44
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->actionsConfig:Ljava/util/ArrayList;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActivationConfig;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "trigger"

    .line 66
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object v0

    const-string v1, "condition"

    .line 69
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 71
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/Conditions;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/ICondition;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "callback"

    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 77
    invoke-static {v3}, Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    const-string v4, "actions"

    .line 81
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 84
    :goto_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 85
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v5

    .line 86
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 90
    :cond_2
    new-instance p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    invoke-direct {p0, v0, v1, v3, v2}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;-><init>(Lcom/amazon/kindle/tutorial/model/TriggerConfig;Lcom/amazon/kindle/tutorial/ICondition;Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;Ljava/util/ArrayList;)V

    return-object p0
.end method


# virtual methods
.method public getActionsConfig()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/kindle/tutorial/model/ActionConfig;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->actionsConfig:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCallbackConfig()Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->callbackConfig:Lcom/amazon/kindle/tutorial/model/ActivationCallbackConfig;

    return-object v0
.end method

.method public getCondition()Lcom/amazon/kindle/tutorial/ICondition;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->condition:Lcom/amazon/kindle/tutorial/ICondition;

    return-object v0
.end method

.method public getTriggerConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->triggerConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    return-object v0
.end method
