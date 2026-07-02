.class public Lcom/amazon/kindle/tutorial/model/BrochureUI;
.super Ljava/lang/Object;
.source "BrochureUI.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# static fields
.field private static final PAGES_KEY:Ljava/lang/String; = "pages"


# instance fields
.field private doneButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private nextButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private pages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/FullPageUI;",
            ">;"
        }
    .end annotation
.end field

.field private prevButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private xButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/BrochureUI;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/model/BrochureUI;-><init>()V

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v2, "pages"

    .line 36
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    .line 38
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 39
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 40
    invoke-static {v4}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/FullPageUI;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 42
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 54
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->pages:Ljava/util/List;

    .line 56
    invoke-static {}, Lcom/amazon/kindle/tutorial/model/Buttons;->getButtonsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 57
    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->NEXT:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->nextButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 58
    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->PREV:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->prevButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 59
    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->DONE:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->doneButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 60
    sget-object v1, Lcom/amazon/kindle/tutorial/model/Buttons;->X:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object p0

    iput-object p0, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->xButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 62
    iget-object p0, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->nextButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    if-eqz p0, :cond_3

    .line 66
    iget-object p0, v0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->doneButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    if-eqz p0, :cond_2

    return-object v0

    .line 67
    :cond_2
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Button configuration for \'done\' is required."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 63
    :cond_3
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "Button configuration for \'next\' is required."

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_4
    new-instance p0, Lorg/json/JSONException;

    const-string v0, "No pages were configured for this brochure!"

    invoke-direct {p0, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDoneButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->doneButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getNextButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->nextButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getPages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amazon/kindle/tutorial/model/FullPageUI;",
            ">;"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->pages:Ljava/util/List;

    return-object v0
.end method

.method public getPrevButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->prevButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getXButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/BrochureUI;->xButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method
