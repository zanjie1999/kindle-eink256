.class public Lcom/amazon/reader/notifications/impl/FPTChannelsManager;
.super Lcom/amazon/reader/notifications/impl/ChannelsManager;
.source "FPTChannelsManager.java"


# static fields
.field private static final FPT_CHANNELS_URL:Ljava/lang/String; = "https://d3ohh9b4v3oawh.cloudfront.net/FPT/%s/%s/%s"

.field private static final FPT_CHANNELS_VERSION:Ljava/lang/String; = "1.0"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "1.0"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "notificationChannels.json"

    aput-object v1, v0, p1

    const-string p1, "https://d3ohh9b4v3oawh.cloudfront.net/FPT/%s/%s/%s"

    .line 28
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected loadDefaultChannelsFile(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
