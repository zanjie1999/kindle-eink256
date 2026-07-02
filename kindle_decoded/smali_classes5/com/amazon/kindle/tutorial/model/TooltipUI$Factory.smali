.class public final Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;
.super Ljava/lang/Object;
.source "TooltipUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/TooltipUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipUI;
    .locals 6

    const-string/jumbo v0, "uiObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "pages"

    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 40
    sget-object v5, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;

    invoke-virtual {v5, v4}, Lcom/amazon/kindle/tutorial/model/TooltipMessageUI$Companion;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipMessageUI;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    sget-object v1, Lcom/amazon/kindle/tutorial/model/TooltipSettings;->Companion:Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;

    invoke-virtual {v1, p1}, Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    move-result-object v1

    .line 51
    invoke-static {}, Lcom/amazon/kindle/tutorial/model/Buttons;->getButtonsKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const-string v2, "next"

    .line 55
    invoke-static {p1, v2}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "done"

    .line 56
    invoke-static {p1, v3}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    move-object p1, v2

    .line 59
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    if-eqz v2, :cond_3

    if-eqz p1, :cond_3

    goto :goto_2

    .line 60
    :cond_3
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "One or both of the button texts couldn\'t be processed correctly for a MultiTooltip"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 64
    :cond_4
    :goto_2
    new-instance v3, Lcom/amazon/kindle/tutorial/model/TooltipUI;

    invoke-direct {v3, v0, v1, v2, p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI;-><init>(Ljava/util/List;Lcom/amazon/kindle/tutorial/model/TooltipSettings;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 46
    :cond_5
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "There was an error in processing JSON!"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
