.class public Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;
.super Ljava/lang/Object;
.source "RtlaCrashDetailsCollectable.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/CrashDetailsCollectable;


# static fields
.field static final DEFAULT_SESSION_ID:Ljava/lang/String; = "000-0000000-0000000"

.field static final EMPTY_STRING:Ljava/lang/String; = ""

.field static final RTLA_PAGE_TYPE_KEY:Ljava/lang/String; = "RtlaPageType"

.field static final RTLA_SESSION_ID_KEY:Ljava/lang/String; = "RtlaSessionId"

.field static final RTLA_SUBPAGE_TYPE_KEY:Ljava/lang/String; = "RtlaSubPageType"

.field static final RTLA_USER_AGENT_KEY:Ljava/lang/String; = "RtlaUserAgent"

.field static final RTLA_WEB_LAB_KEY:Ljava/lang/String; = "RtlaWebLabs"


# instance fields
.field private final mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;


# direct methods
.method public constructor <init>(Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->validateCrashDetails(Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;)V

    .line 28
    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    return-void
.end method

.method private defaultOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    return-object p2

    :cond_0
    return-object p1
.end method

.method private formatWebLabs(Ljava/util/List;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 80
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private validateCrashDetails(Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    .line 64
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "RtlaCrashDetails must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public collect(Ljava/lang/Throwable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {p1}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getSessionId()Ljava/lang/String;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {v0}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {v1}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getPageType()Ljava/lang/String;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {v2}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getSubPageType()Ljava/lang/String;

    move-result-object v2

    .line 37
    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 38
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {v4}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getActiveWebLabs()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 39
    iget-object v4, p0, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->mRtlaCrashDetails:Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;

    invoke-interface {v4}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetails;->getActiveWebLabs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 43
    :cond_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v5, "000-0000000-0000000"

    .line 45
    invoke-direct {p0, p1, v5}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->defaultOnNull(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v5, "RtlaSessionId"

    invoke-interface {v4, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_1

    const-string p1, "RtlaUserAgent"

    .line 47
    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_2

    const-string p1, "RtlaPageType"

    .line 50
    invoke-interface {v4, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz v2, :cond_3

    const-string p1, "RtlaSubPageType"

    .line 53
    invoke-interface {v4, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 56
    invoke-direct {p0, v3}, Lcom/amazon/whispersync/device/crashmanager/rtla/RtlaCrashDetailsCollectable;->formatWebLabs(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RtlaWebLabs"

    invoke-interface {v4, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v4
.end method
