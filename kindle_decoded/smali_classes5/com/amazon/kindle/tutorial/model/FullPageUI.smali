.class public Lcom/amazon/kindle/tutorial/model/FullPageUI;
.super Ljava/lang/Object;
.source "FullPageUI.java"

# interfaces
.implements Lcom/amazon/kindle/tutorial/UserInterface;


# static fields
.field private static final BODY_KEY:Ljava/lang/String; = "body"

.field private static final FORCE_CENTER_CONTENT_KEY:Ljava/lang/String; = "forceCenterContent"

.field private static final IMAGE_KEY:Ljava/lang/String; = "image"

.field private static final LAYOUT_KEY:Ljava/lang/String; = "layout"

.field private static final MEDIA_ASPECT_RATIO:Ljava/lang/String; = "mediaAspectRatio"

.field private static final MEDIA_SCREEN_HEIGHT_PERCENTAGE:Ljava/lang/String; = "mediaScreenHeightPercentage"

.field private static final TAG:Ljava/lang/String;

.field private static final TITLE_KEY:Ljava/lang/String; = "title"

.field private static final URL_PLACEHOLDER:Ljava/lang/String; = "{{URL}}"

.field private static final VIDEO_KEY:Ljava/lang/String; = "video"

.field private static final WRAP_CONTENT_KEY:Ljava/lang/String; = "wrapContent"


# instance fields
.field private body:Ljava/lang/String;

.field private forceCenterContent:Z

.field private hasImage:Z

.field private hasVideo:Z

.field private image:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

.field private layoutOrder:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private localizedUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mediaAspectRatio:I

.field private mediaScreenHeightPercentage:I

.field private negativeTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private neutralTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private positiveTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

.field private title:Ljava/lang/String;

.field private video:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

.field private wrapContent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/FullPageUI;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 71
    new-instance v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;

    invoke-direct {v0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;-><init>()V

    :try_start_0
    const-string/jumbo v1, "title"

    .line 74
    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->title:Ljava/lang/String;

    const-string v1, "body"

    .line 75
    invoke-static {p0, v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->body:Ljava/lang/String;

    .line 76
    invoke-static {p0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getLocalizedUrls(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->localizedUrls:Ljava/util/Map;

    const-string v1, "image"

    .line 77
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 79
    iput-boolean v2, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage:Z

    .line 81
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getResourceLocationFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->image:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    :cond_0
    const-string/jumbo v1, "video"

    .line 84
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 86
    iput-boolean v2, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo:Z

    .line 87
    invoke-static {v1}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getResourceLocationFromJsonObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->video:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    .line 90
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "layout"

    .line 91
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    .line 93
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 94
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 97
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->layoutOrder:Ljava/util/List;

    .line 99
    invoke-static {}, Lcom/amazon/kindle/tutorial/model/Buttons;->getButtonsKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 100
    sget-object v3, Lcom/amazon/kindle/tutorial/model/Buttons;->POSITIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {v1, v3}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v3

    iput-object v3, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->positiveTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 101
    sget-object v3, Lcom/amazon/kindle/tutorial/model/Buttons;->NEGATIVE:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {v1, v3}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v3

    iput-object v3, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->negativeTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    .line 102
    sget-object v3, Lcom/amazon/kindle/tutorial/model/Buttons;->NEUTRAL:Lcom/amazon/kindle/tutorial/model/Buttons;

    invoke-static {v1, v3}, Lcom/amazon/kindle/tutorial/model/TutorialButtonFactory;->extractButton(Lorg/json/JSONObject;Lcom/amazon/kindle/tutorial/model/Buttons;)Lcom/amazon/kindle/tutorial/model/TutorialButton;

    move-result-object v1

    iput-object v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->neutralTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    const-string/jumbo v1, "wrapContent"

    .line 103
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->wrapContent:Z

    const-string v1, "forceCenterContent"

    .line 104
    invoke-virtual {p0, v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->forceCenterContent:Z

    const-string v1, "mediaScreenHeightPercentage"

    const/4 v3, -0x1

    .line 105
    invoke-virtual {p0, v1, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->mediaScreenHeightPercentage:I

    const-string v1, "mediaAspectRatio"

    .line 106
    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    iput p0, v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->mediaAspectRatio:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 110
    sget-object v0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->TAG:Ljava/lang/String;

    const-string v1, "Fail to parse ui field!"

    invoke-static {v0, v1, p0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method private getLocalizedUrl()Ljava/lang/String;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->localizedUrls:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 179
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAuthenticationManager()Lcom/amazon/kcp/application/IAuthenticationManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kindle/services/authentication/TokenKey;->PFM:Lcom/amazon/kindle/services/authentication/TokenKey;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/application/IAuthenticationManager;->getToken(Lcom/amazon/kindle/services/authentication/TokenKey;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/Marketplace;->US:Lcom/amazon/kcp/application/Marketplace;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/Marketplace;->getInstance(Ljava/lang/String;Lcom/amazon/kcp/application/Marketplace;)Lcom/amazon/kcp/application/Marketplace;

    move-result-object v0

    .line 180
    iget-object v1, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->localizedUrls:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/amazon/kcp/application/Marketplace;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->localizedUrls:Ljava/util/Map;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->body:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->body:Ljava/lang/String;

    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/FullPageUI;->getLocalizedUrl()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{{URL}}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getImageMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->image:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    return-object v0
.end method

.method public getLayoutOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->layoutOrder:Ljava/util/List;

    return-object v0
.end method

.method public getMediaAspectRatio()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->mediaAspectRatio:I

    return v0
.end method

.method public getMediaScreenHeightPercentage()I
    .locals 1

    .line 167
    iget v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->mediaScreenHeightPercentage:I

    return v0
.end method

.method public getNegativeTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->negativeTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getNeutralTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->neutralTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getPositiveTutorialButton()Lcom/amazon/kindle/tutorial/model/TutorialButton;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->positiveTutorialButton:Lcom/amazon/kindle/tutorial/model/TutorialButton;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoMetadata()Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->video:Lcom/amazon/kindle/tutorial/model/TutorialResourceMetadata;

    return-object v0
.end method

.method public getWrapContent()Z
    .locals 1

    .line 160
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->wrapContent:Z

    return v0
.end method

.method public hasImage()Z
    .locals 1

    .line 148
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasImage:Z

    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->hasVideo:Z

    return v0
.end method

.method public isForceCenterContent()Z
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/amazon/kindle/tutorial/model/FullPageUI;->forceCenterContent:Z

    return v0
.end method
