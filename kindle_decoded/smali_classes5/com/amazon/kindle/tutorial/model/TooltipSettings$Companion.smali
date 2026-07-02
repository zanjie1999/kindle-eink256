.class public final Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;
.super Ljava/lang/Object;
.source "TooltipUI.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/tutorial/model/TooltipSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/amazon/kindle/tutorial/model/TooltipSettings$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromJSONObject(Lorg/json/JSONObject;)Lcom/amazon/kindle/tutorial/model/TooltipSettings;
    .locals 8

    const-string/jumbo v0, "uiObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "disableClickAnywhere"

    .line 137
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v1, "dismissOnRestart"

    .line 138
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v0, "titleUppercase"

    const/4 v1, 0x1

    .line 139
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const-string/jumbo v0, "titleFont"

    .line 140
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "textFont"

    .line 141
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 143
    new-instance p1, Lcom/amazon/kindle/tutorial/model/TooltipSettings;

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kindle/tutorial/model/TooltipSettings;-><init>(ZZZLjava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method
