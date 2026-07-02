.class public Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;
.super Ljava/lang/Object;
.source "LocalyticsSessionHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler$SessionTypes;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-static {p1, p2}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->createLocalyticsSessionForKey(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    return-void
.end method

.method public static createLocalyticsSessionForKey(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;
    .locals 4

    .line 73
    invoke-static {p0}, Lcom/amazon/kcp/application/KindleObjectFactorySingleton;->getInstance(Landroid/content/Context;)Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getAccountProvider()Lcom/amazon/kindle/services/authentication/IAccountProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/services/authentication/IAccountProvider;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 76
    sget-object v1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LocalyticsLogger ; create Localytics session ;  localyticsKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " ; "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v1, v3, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 79
    new-instance v1, Lcom/localytics/android/LocalyticsSession;

    invoke-direct {v1, p0, p1, v0}, Lcom/localytics/android/LocalyticsSession;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static createLocalyticsSessionForParentAsin(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;
    .locals 0

    .line 91
    invoke-static {p1}, Lcom/amazon/nwstd/metrics/MetricsUtils;->getLocalyticsParentAsinAppKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->createLocalyticsSessionForKey(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;

    move-result-object p0

    return-object p0
.end method

.method public static createUpsellLocalyticsSession(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;
    .locals 0

    .line 104
    invoke-static {p0, p1}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->createLocalyticsSessionForKey(Landroid/content/Context;Ljava/lang/String;)Lcom/localytics/android/LocalyticsSession;

    move-result-object p0

    return-object p0
.end method

.method private upload()V
    .locals 3

    .line 175
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    invoke-virtual {v0}, Lcom/localytics/android/LocalyticsSession;->upload()V

    .line 178
    sget-object v0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "LocalyticsLogger ; upload"

    invoke-static {v0, v1, v2}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public closeLocalyticsSession(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocalyticsSession;->close(Ljava/util/List;)V

    .line 136
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "LocalyticsLogger ; close session"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    invoke-direct {p0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->upload()V

    return-void
.end method

.method public openLocalyticsSession(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 123
    invoke-direct {p0}, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->upload()V

    .line 126
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocalyticsSession;->open(Ljava/util/List;)V

    .line 127
    sget-object p1, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "LocalyticsLogger ; open session"

    invoke-static {p1, v0, v1}, Lcom/amazon/kcp/log/Log;->log(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    invoke-virtual {v0, p1, p2, p3}, Lcom/localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/localytics/android/LocalyticsSession;->tagEvent(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;J)V

    return-void
.end method

.method public tagScreen(Ljava/lang/String;)V
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/amazon/nwstd/metrics/loggers/LocalyticsSessionHandler;->mLocalyticsSession:Lcom/localytics/android/LocalyticsSession;

    invoke-virtual {v0, p1}, Lcom/localytics/android/LocalyticsSession;->tagScreen(Ljava/lang/String;)V

    return-void
.end method
