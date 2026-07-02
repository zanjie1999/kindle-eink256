.class public Lcom/amazon/reader/notifications/impl/GCMChannelsManager;
.super Lcom/amazon/reader/notifications/impl/ChannelsManager;
.source "GCMChannelsManager.java"


# static fields
.field private static final GCM_CHANNELS_URL:Ljava/lang/String; = "https://d3ohh9b4v3oawh.cloudfront.net/3P/%s/%s/%s"

.field private static final GCM_CHANNELS_VERSION:Ljava/lang/String; = "1.3"

.field private static final JP_MARKETPLACE_ID:Ljava/lang/String; = "A1VC38T7YXB528"

.field private static final TAG:Ljava/lang/String; = "GCMChannelsManager"

.field private static final US_MARKETPLACE_ID:Ljava/lang/String; = "ATVPDKIKX0DER"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected getUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "1.3"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 p1, 0x2

    const-string v1, "notificationChannels.json"

    aput-object v1, v0, p1

    const-string p1, "https://d3ohh9b4v3oawh.cloudfront.net/3P/%s/%s/%s"

    .line 36
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected loadDefaultChannelsFile(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GCMChannelsManager"

    :try_start_0
    const-string v1, "ATVPDKIKX0DER"

    .line 44
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "A1VC38T7YXB528"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/amazon/reader/notifications/impl/ChannelsManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    const-string v1, "notificationChannels.json"

    invoke-virtual {p1, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/amazon/reader/notifications/impl/ChannelsManager;->writeToChannelsFile(Ljava/io/InputStream;)V

    const-string p1, "Using default channels file"

    .line 47
    invoke-static {v0, p1}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Exception thrown while loading default channels file"

    .line 50
    invoke-static {v0, v1, p1}, Lcom/amazon/reader/notifications/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
