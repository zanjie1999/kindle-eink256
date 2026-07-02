.class public Lcom/amazon/kindle/tutorial/model/ToastUI;
.super Ljava/lang/Object;
.source "ToastUI.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;
    }
.end annotation


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final METRICS_KEY:Ljava/lang/String; = "metricName"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public final actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

.field public final anchors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;",
            ">;"
        }
    .end annotation
.end field

.field public final message:Ljava/lang/String;

.field public final metricsName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/tutorial/model/ToastUI;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/ToastUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/amazon/kindle/tutorial/model/ActionConfig;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/amazon/kindle/tutorial/model/ToastUI;->anchors:Ljava/util/List;

    .line 47
    iput-object p2, p0, Lcom/amazon/kindle/tutorial/model/ToastUI;->message:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/amazon/kindle/tutorial/model/ToastUI;->actionConfig:Lcom/amazon/kindle/tutorial/model/ActionConfig;

    .line 49
    iput-object p4, p0, Lcom/amazon/kindle/tutorial/model/ToastUI;->metricsName:Ljava/lang/String;

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ToastUI;
    .locals 9

    const/4 v0, 0x0

    .line 55
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "anchors"

    .line 56
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 58
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 59
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 61
    new-instance v5, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;

    const-string/jumbo v6, "parent"

    .line 62
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "index"

    const/4 v8, -0x1

    .line 63
    invoke-virtual {v4, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-direct {v5, v6, v4}, Lcom/amazon/kindle/tutorial/model/ToastUI$Anchor;-><init>(Ljava/lang/String;I)V

    .line 61
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "message"

    .line 70
    invoke-static {p0, v2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    const-string v3, "action"

    .line 76
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 79
    invoke-static {v3}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v3

    goto :goto_1

    :cond_2
    move-object v3, v0

    :goto_1
    const-string v4, "metricName"

    .line 82
    invoke-virtual {p0, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 83
    new-instance v4, Lcom/amazon/kindle/tutorial/model/ToastUI;

    invoke-direct {v4, v1, v2, v3, p0}, Lcom/amazon/kindle/tutorial/model/ToastUI;-><init>(Ljava/util/List;Ljava/lang/String;Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;)V

    return-object v4

    .line 67
    :cond_3
    new-instance p0, Lorg/json/JSONException;

    const-string v1, "There is no Anchor point for the Toast"

    invoke-direct {p0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    sget-object p0, Lcom/amazon/kindle/tutorial/model/ToastUI;->TAG:Ljava/lang/String;

    const-string v1, "Couldn\'t parse an anchor for Toast"

    invoke-static {p0, v1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method
