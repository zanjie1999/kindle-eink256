.class public final Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;
.super Ljava/lang/Object;
.source "A11YAnnouncementUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;
    .locals 1

    const-string/jumbo v0, "uiObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    .line 14
    invoke-static {p1, v0}, Lcom/amazon/kindle/tutorial/TutorialUIHelper;->getText(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "TutorialUIHelper.getText\u2026nd for A11YAnnouncement\")"

    .line 15
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;

    invoke-direct {v0, p1}, Lcom/amazon/kindle/tutorial/model/A11YAnnouncementUI;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 15
    :cond_0
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "message not found for A11YAnnouncement"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
