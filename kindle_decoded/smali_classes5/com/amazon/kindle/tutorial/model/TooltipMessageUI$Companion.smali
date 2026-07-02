.class public final Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;
.super Ljava/lang/Object;
.source "TooltipUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;
    .locals 14

    const-string/jumbo v0, "uiObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "title"

    .line 87
    invoke-static {p1, v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, "text"

    .line 88
    invoke-static {p1, v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "align"

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "image"

    .line 91
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 92
    invoke-static {v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getResourceLocationFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v0

    move-object v13, v0

    goto :goto_0

    :cond_0
    move-object v13, v1

    :goto_0
    const-string v0, ""

    const-string/jumbo v4, "orientation.landscape"

    .line 94
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 95
    invoke-static {v4}, Lcom/amazon/kindle/krx/tutorial/Orientation;->getOrientation(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v7

    const-string/jumbo v4, "orientation.portrait"

    .line 97
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {v0}, Lcom/amazon/kindle/krx/tutorial/Orientation;->getOrientation(Ljava/lang/String;)Lcom/amazon/kindle/krx/tutorial/Orientation;

    move-result-object v8

    const-string v0, "action"

    .line 100
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 101
    invoke-static {v0}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    const-string v0, "anchor"

    .line 103
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v0, "anchor.location"

    .line 104
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v3, :cond_2

    if-eqz v10, :cond_2

    const-string v0, "metricName"

    .line 110
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "accessibilityText"

    .line 111
    invoke-static {p1, v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 112
    sget-object v0, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;

    const-string v12, "anchorAccessibilityType"

    .line 113
    invoke-virtual {p1, v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-virtual {v0, p1}, Lcom/amazon/kindle/tutorial/model/TooltipAccessibilityType$Companion;->getClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 115
    new-instance p1, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    const-string/jumbo v0, "orientationLandscape"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "orientationPortrait"

    .line 116
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p1

    .line 115
    invoke-direct/range {v1 .. v13}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/tutorial/Orientation;Lcom/amazon/kindle/krx/tutorial/Orientation;Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;)V

    return-object p1

    .line 107
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "Tooltip message is missing elements."

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
