.class public Lcom/amazon/kindle/tutorial/UserInterfaceFactory;
.super Ljava/lang/Object;
.source "UserInterfaceFactory.java"


# direct methods
.method public static getUserInterface(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/UserInterface;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TOOLTIP:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    sget-object p0, Lcom/amazon/kindle/tutorial/model/TooltipUI;->Factory:Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/tutorial/model/TooltipUI$Factory;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipUI;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->DIALOG:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 24
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/FullPageUI;

    move-result-object p0

    return-object p0

    .line 26
    :cond_1
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->FULL_PAGE:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 27
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/FullPageUI;

    move-result-object p0

    return-object p0

    .line 29
    :cond_2
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->BROCHURE:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/BrochureUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/BrochureUI;

    move-result-object p0

    return-object p0

    .line 32
    :cond_3
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->TOAST:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 33
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/ToastUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/ToastUI;

    move-result-object p0

    return-object p0

    .line 35
    :cond_4
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->ALERT:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 36
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/AlertUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/AlertUI;

    move-result-object p0

    return-object p0

    .line 38
    :cond_5
    sget-object v0, Lcom/amazon/kindle/tutorial/TutorialType;->A11Y_ANNOUNCEMENT:Lcom/amazon/kindle/tutorial/TutorialType;

    invoke-virtual {v0}, Lcom/amazon/kindle/tutorial/TutorialType;->getStringTypeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 39
    invoke-static {p1}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;->fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p0, 0x0

    return-object p0
.end method
