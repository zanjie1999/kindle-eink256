.class public Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;
.super Ljava/lang/Object;
.source "GotoSignupPageAction.java"

# interfaces
.implements Lcom/amazon/kcp/notifications/actions/NotificationUriAction;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getCampaignName(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3

    const-string v0, "campaign"

    const-string v1, "actionData"

    .line 49
    :try_start_0
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 57
    sget-object v0, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;->TAG:Ljava/lang/String;

    const-string v1, "Exception thrown while trying to get campaign name"

    invoke-static {v0, v1, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public isDataAvailable(Landroid/os/Bundle;)Z
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;->getCampaignName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 38
    sget-object p1, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;->TAG:Ljava/lang/String;

    const-string v0, "Campaign name cannot be null/empty"

    invoke-static {p1, v0}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public performAction(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/amazon/kcp/notifications/ChannelSignupDialog;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    invoke-direct {p0, p2}, Lcom/amazon/kcp/notifications/actions/GotoSignupPageAction;->getCampaignName(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "channelId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
