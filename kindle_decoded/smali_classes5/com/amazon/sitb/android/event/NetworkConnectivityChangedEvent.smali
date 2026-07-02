.class public Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;
.super Ljava/lang/Object;
.source "NetworkConnectivityChangedEvent.java"

# interfaces
.implements Lcom/amazon/kindle/krx/events/IEvent;


# instance fields
.field private final connected:Z

.field private final extraInfo:Ljava/lang/String;

.field private final failover:Z

.field private final networkInfo:Landroid/net/NetworkInfo;

.field private final otherNetworkInfo:Landroid/net/NetworkInfo;

.field private final reason:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/net/NetworkInfo;Landroid/net/NetworkInfo;ZZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->networkInfo:Landroid/net/NetworkInfo;

    .line 30
    iput-object p2, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->otherNetworkInfo:Landroid/net/NetworkInfo;

    .line 31
    iput-boolean p3, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->failover:Z

    .line 32
    iput-boolean p4, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->connected:Z

    .line 33
    iput-object p5, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->reason:Ljava/lang/String;

    .line 34
    iput-object p6, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->extraInfo:Ljava/lang/String;

    return-void
.end method

.method private toString(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 4

    if-nez p1, :cond_0

    const-string p1, "<none>"

    return-object p1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 92
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amazon/sitb/android/utils/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 94
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s%s (%s)"

    .line 91
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public isBlocking()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isConnected()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->connected:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/Object;

    .line 76
    iget-object v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->networkInfo:Landroid/net/NetworkInfo;

    .line 77
    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->toString(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->connected:Z

    .line 78
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->reason:Ljava/lang/String;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->extraInfo:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->otherNetworkInfo:Landroid/net/NetworkInfo;

    .line 81
    invoke-direct {p0, v1}, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->toString(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-boolean v1, p0, Lcom/amazon/sitb/android/event/NetworkConnectivityChangedEvent;->failover:Z

    .line 82
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string v1, "NetworkConnectivityChangedEvent (affected network: %s, connected: %s, reason: %s, extra info: %s, other network: %s, failover: %s)"

    .line 76
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
