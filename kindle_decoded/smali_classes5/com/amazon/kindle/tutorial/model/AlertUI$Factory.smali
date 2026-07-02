.class public final Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;
.super Ljava/lang/Object;
.source "AlertUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/AlertUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/AlertUI$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AlertUI;
    .locals 6

    const-string/jumbo v0, "uiObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "body"

    .line 21
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 24
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "message"

    .line 25
    invoke-static {v4, v5}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 28
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "title"

    .line 36
    invoke-static {p1, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    new-instance v1, Lcom/amazon/kindle/tutorial/model/AlertUI;

    invoke-direct {v1, p1, v0}, Lcom/amazon/kindle/tutorial/model/AlertUI;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v1

    .line 33
    :cond_2
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "There are no messages for AlertUI"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
