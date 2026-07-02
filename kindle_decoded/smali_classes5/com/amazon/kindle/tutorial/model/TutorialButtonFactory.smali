.class public Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;
.super Ljava/lang/Object;
.source "TutorialButtonFactory.java"


# static fields
.field private static final ACTION_KEY:Ljava/lang/String; = "action"

.field private static final ENGLISH_KEY:Ljava/lang/String; = "en"

.field private static final TAG:Ljava/lang/String;

.field private static final TEXT_KEY:Ljava/lang/String; = "text"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    const-class v0, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 44
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/Buttons;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v1, "action"

    .line 49
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 51
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/model/ActionConfig;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ActionConfig;

    move-result-object v0

    :cond_0
    const-string/jumbo v1, "text"

    .line 54
    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-virtual {p1}, Lcom/amazon/kindle/tutorial/model/Buttons;->isTextRequired()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 57
    :cond_1
    sget-object p0, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "Required text missing for button %s"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Lazy;->format(Ljava/lang/String;[Ljava/lang/Object;)Lcom/amazon/kindle/log/Lazy;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Lcom/amazon/kindle/log/ILazy;)V

    .line 58
    new-instance p0, Lorg/json/JSONException;

    const-string p1, "This button requires text to be provided"

    invoke-direct {p0, p1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_2
    :goto_0
    new-instance p1, Lcom/amazon/kindle/tutorial/model/TutorialButton;

    invoke-direct {p1, v0, p0}, Lcom/amazon/kindle/tutorial/model/TutorialButton;-><init>(Lcom/amazon/kindle/tutorial/model/ActionConfig;Ljava/lang/String;)V

    return-object p1

    :cond_3
    return-object v0
.end method
