.class Lcom/amazon/device/ads/MobileAdsLogger;
.super Ljava/lang/Object;
.source "MobileAdsLogger.java"

# interfaces
.implements Lcom/amazon/device/ads/Logger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/device/ads/MobileAdsLogger$Level;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOGTAG_PREFIX:Ljava/lang/String; = "AmazonMobileAds"

.field private static final DEFAULT_MAX_LENGTH:I = 0x3e8


# instance fields
.field private final debugProperties:Lcom/amazon/device/ads/DebugProperties;

.field private final logger:Lcom/amazon/device/ads/Logger;

.field private maxLength:I

.field private final settings:Lcom/amazon/device/ads/Settings;


# direct methods
.method public constructor <init>(Lcom/amazon/device/ads/Logger;)V
    .locals 2

    .line 26
    invoke-static {}, Lcom/amazon/device/ads/DebugProperties;->getInstance()Lcom/amazon/device/ads/DebugProperties;

    move-result-object v0

    invoke-static {}, Lcom/amazon/device/ads/Settings;->getInstance()Lcom/amazon/device/ads/Settings;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;-><init>(Lcom/amazon/device/ads/Logger;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;)V

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/Logger;Lcom/amazon/device/ads/DebugProperties;Lcom/amazon/device/ads/Settings;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    .line 19
    iput v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->maxLength:I

    const-string v0, "AmazonMobileAds"

    .line 30
    invoke-interface {p1, v0}, Lcom/amazon/device/ads/Logger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    .line 31
    iput-object p2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    .line 32
    iput-object p3, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    return-void
.end method

.method private varargs doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsLogger;->canLog()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_6

    .line 258
    :cond_0
    invoke-direct {p0, p3, p4}, Lcom/amazon/device/ads/MobileAdsLogger;->formatAndSplit(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 260
    sget-object p4, Lcom/amazon/device/ads/MobileAdsLogger$1;->$SwitchMap$com$amazon$device$ads$MobileAdsLogger$Level:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p4, p4, v0

    const/4 v0, 0x1

    if-eq p4, v0, :cond_5

    const/4 v0, 0x2

    if-eq p4, v0, :cond_4

    const/4 v0, 0x3

    if-eq p4, v0, :cond_3

    const/4 v0, 0x4

    if-eq p4, v0, :cond_2

    const/4 v0, 0x5

    if-eq p4, v0, :cond_1

    goto :goto_0

    .line 275
    :cond_1
    iget-object p4, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {p4, p3}, Lcom/amazon/device/ads/Logger;->w(Ljava/lang/String;)V

    goto :goto_0

    .line 272
    :cond_2
    iget-object p4, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {p4, p3}, Lcom/amazon/device/ads/Logger;->v(Ljava/lang/String;)V

    goto :goto_0

    .line 269
    :cond_3
    iget-object p4, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {p4, p3}, Lcom/amazon/device/ads/Logger;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_4
    iget-object p4, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {p4, p3}, Lcom/amazon/device/ads/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_5
    iget-object p4, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    invoke-interface {p4, p3}, Lcom/amazon/device/ads/Logger;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private varargs formatAndSplit(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 284
    array-length v0, p2

    if-lez v0, :cond_0

    .line 286
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 288
    :cond_0
    iget p2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->maxLength:I

    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->split(Ljava/lang/String;I)Ljava/lang/Iterable;

    move-result-object p1

    return-object p1
.end method

.method private split(Ljava/lang/String;I)Ljava/lang/Iterable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 298
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int v3, v1, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method


# virtual methods
.method public canLog()Z
    .locals 4

    .line 62
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->debugProperties:Lcom/amazon/device/ads/DebugProperties;

    if-nez v0, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v2, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v3, "loggingEnabled"

    invoke-virtual {v2, v3, v1}, Lcom/amazon/device/ads/Settings;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "debug.logging"

    invoke-virtual {v0, v2, v1}, Lcom/amazon/device/ads/DebugProperties;->getDebugPropertyAsBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs d(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 156
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->DEBUG:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 225
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs e(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 180
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->ERROR:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public enableLogging(Z)V
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->settings:Lcom/amazon/device/ads/Settings;

    const-string/jumbo v1, "loggingEnabled"

    invoke-virtual {v0, v1, p1}, Lcom/amazon/device/ads/Settings;->putTransientBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final enableLoggingWithSetterNotification(Z)V
    .locals 2

    const-string v0, "Debug logging"

    if-nez p1, :cond_0

    .line 83
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->enableLogging(Z)V

    if-eqz p1, :cond_1

    .line 90
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 91
    invoke-static {}, Lcom/amazon/device/ads/Version;->getRawSDKVersion()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "Amazon Mobile Ads API Version: %s"

    invoke-virtual {p0, v0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs forceLog(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    .line 251
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 189
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs i(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 132
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->INFO:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 238
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/device/ads/MobileAdsLogger;->doLog(ZLcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public logSetterNotification(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4

    .line 107
    invoke-virtual {p0}, Lcom/amazon/device/ads/MobileAdsLogger;->canLog()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 113
    :cond_0
    instance-of v0, p2, Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_2

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 115
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "enabled"

    goto :goto_0

    :cond_1
    const-string p1, "disabled"

    :goto_0
    aput-object p1, v0, v1

    const-string p1, "%s has been %s."

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    .line 119
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s has been set: %s"

    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 198
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs v(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 144
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->VERBOSE:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 216
    invoke-virtual {p0, p1, v0}, Lcom/amazon/device/ads/MobileAdsLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public varargs w(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 168
    sget-object v0, Lcom/amazon/device/ads/MobileAdsLogger$Level;->WARN:Lcom/amazon/device/ads/MobileAdsLogger$Level;

    invoke-virtual {p0, v0, p1, p2}, Lcom/amazon/device/ads/MobileAdsLogger;->log(Lcom/amazon/device/ads/MobileAdsLogger$Level;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/amazon/device/ads/MobileAdsLogger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;

    return-object p0
.end method

.method public withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/MobileAdsLogger;
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/amazon/device/ads/MobileAdsLogger;->logger:Lcom/amazon/device/ads/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AmazonMobileAds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/device/ads/Logger;->withLogTag(Ljava/lang/String;)Lcom/amazon/device/ads/Logger;

    return-object p0
.end method
