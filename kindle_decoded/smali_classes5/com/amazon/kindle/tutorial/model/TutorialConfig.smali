.class public Lcom/amazon/kindle/tutorial/model/TutorialConfig;
.super Ljava/lang/Object;
.source "TutorialConfig.java"


# static fields
.field private static final ACTIVATION_KEY:Ljava/lang/String; = "activation"

.field private static final APP_EXPAN_RESOURCE_SET:Ljava/lang/String; = "appExpanResourceSet"

.field private static final CUSTOM_USER_INTERFACE_KEY:Ljava/lang/String; = "customKey"

.field private static final DEACTIVATION_KEY:Ljava/lang/String; = "deactivation"

.field private static final DEFAULT_DISPLAY_COUNT_LIMIT:I = 0x1

.field private static final DEFAULT_PRIORITY:I = 0x0

.field private static final DISPLAY_COUNT_LIMIT_KEY:Ljava/lang/String; = "displayCountLimit"

.field private static final ID_KEY:Ljava/lang/String; = "id"

.field private static final NAME_KEY:Ljava/lang/String; = "name"

.field private static final PRIORITY_KEY:Ljava/lang/String; = "priority"

.field private static final RESOURCE_SET_NAME:Ljava/lang/String; = "resourceSetName"

.field private static final RESOURCE_SET_VERSION:Ljava/lang/String; = "resourceSetVersion"

.field private static final TAG:Ljava/lang/String;

.field private static final TYPE_KEY:Ljava/lang/String; = "type"

.field private static final USER_INTERFACE_KEY:Ljava/lang/String; = "ui"


# instance fields
.field private activationConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ActivationConfig;",
            ">;"
        }
    .end annotation
.end field

.field private appExpanResourceSetMetadata:Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

.field private customUserInterfaceKey:Ljava/lang/String;

.field private deactivationConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;

.field private displayCountLimit:I

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private priority:I

.field private type:Ljava/lang/String;

.field private userInterface:Lcom/amazon/kindle/tutorial/UserInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-class v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->activationConfigs:Ljava/util/List;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TutorialConfig;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazon/kindle/tutorial/InvalidTutorialConfigurationException;
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;-><init>()V

    :try_start_0
    const-string v1, "id"

    .line 72
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->id:Ljava/lang/String;

    const-string/jumbo v1, "type"

    .line 73
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->type:Ljava/lang/String;

    const-string v1, "appExpanResourceSet"

    .line 74
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 75
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getAppExpanResourceSetMetadataFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->appExpanResourceSetMetadata:Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    const-string/jumbo v1, "priority"

    const/4 v2, 0x0

    .line 76
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->priority:I

    const-string v1, "customKey"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->customUserInterfaceKey:Ljava/lang/String;

    .line 78
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "ui"

    .line 79
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 80
    iget-object v3, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->type:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/amazon/kindle/tutorial/UserInterfaceFactory;->getUserInterface(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/UserInterface;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->userInterface:Lcom/amazon/kindle/tutorial/UserInterface;

    :cond_0
    const-string v1, "activation"

    .line 83
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 85
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 86
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 87
    invoke-static {v3}, Lcom/amazon/kindle/tutorial/model/ActivationConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActivationConfig;

    move-result-object v3

    .line 88
    iget-object v4, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->activationConfigs:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-string v1, "deactivation"

    .line 92
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 94
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/model/TriggerConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->deactivationConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    const-string v1, "name"

    const-string v2, ""

    .line 100
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->name:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "displayCountLimit"

    .line 101
    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->displayCountLimit:I

    return-object v0

    :catch_0
    move-exception p0

    .line 97
    new-instance v0, Lcom/amazon/kindle/tutorial/InvalidTutorialConfigurationException;

    const-string v1, "Failure parsing required fields from configuration"

    invoke-direct {v0, v1, p0}, Lcom/amazon/kindle/tutorial/InvalidTutorialConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static getAppExpanResourceSetMetadataFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string/jumbo v0, "resourceSetName"

    .line 112
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "resourceSetVersion"

    .line 113
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    .line 115
    new-instance v1, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;-><init>(Ljava/lang/String;I)V

    return-object v1
.end method


# virtual methods
.method public getActivationConfigs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ActivationConfig;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->activationConfigs:Ljava/util/List;

    return-object v0
.end method

.method public getAppExpanResourceSetMetadata()Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->appExpanResourceSetMetadata:Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    return-object v0
.end method

.method public getCustomUserInterfaceKey()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->customUserInterfaceKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeactivationConfig()Lcom/amazon/kindle/tutorial/model/TriggerConfig;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->deactivationConfig:Lcom/amazon/kindle/tutorial/model/TriggerConfig;

    return-object v0
.end method

.method public getDisplayCountLimit()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->displayCountLimit:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->priority:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getUserInterface()Lcom/amazon/kindle/tutorial/UserInterface;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->userInterface:Lcom/amazon/kindle/tutorial/UserInterface;

    return-object v0
.end method

.method public isRemoteResourceDependent()Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->appExpanResourceSetMetadata:Lcom/amazon/kindle/tutorial/model/AppExpanResourceSetMetadata;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcom/amazon/kindle/tutorial/model/TutorialConfig;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Tutorial[id=%s,name=%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
