.class public Lcom/amazon/kindle/tutorial/model/ActionConfig;
.super Ljava/lang/Object;
.source "ActionConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final TAG:Ljava/lang/String;

.field private static final TOPIC_KEY:Ljava/lang/String; = "topic"


# instance fields
.field private final action:Ljava/lang/String;

.field private final topic:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    const-class v0, Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/ActionConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ActionConfig;->topic:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/ActionConfig;->action:Ljava/lang/String;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActionConfig;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const-string/jumbo v0, "topic"

    .line 36
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    .line 37
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 38
    new-instance v1, Lcom/amazon/kindle/tutorial/model/ActionConfig;

    invoke-direct {v1, v0, p0}, Lcom/amazon/kindle/tutorial/model/ActionConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActionConfig;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/ActionConfig;->topic:Ljava/lang/String;

    return-object v0
.end method
