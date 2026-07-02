.class public Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;
.super Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;
.source "WhitelistAppArtifactSource.java"


# static fields
.field private static mWhitelistedAppPatternPerTag:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;->mWhitelistedAppPatternPerTag:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/DropBoxManager;",
            "Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/regex/Pattern;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;-><init>(Landroid/os/DropBoxManager;Lcom/amazon/device/crashmanager/utils/CrashTimestampUtil;Ljava/util/Set;)V

    .line 31
    sput-object p3, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;->mWhitelistedAppPatternPerTag:Ljava/util/Map;

    return-void
.end method

.method public static getWhiteListedAppPatternsForTag(Ljava/lang/String;)Ljava/util/regex/Pattern;
    .locals 1

    .line 46
    sget-object v0, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;->mWhitelistedAppPatternPerTag:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/regex/Pattern;

    return-object p0
.end method


# virtual methods
.method public getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;
    .locals 4

    .line 36
    invoke-super {p0, p1, p2}, Lcom/amazon/device/crashmanager/source/DropBoxArtifactSource;->getNextArtifact(Lcom/amazon/client/metrics/common/MetricEvent;Ljava/lang/String;)Lcom/amazon/device/crashmanager/Artifact;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 38
    new-instance p2, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;

    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 40
    invoke-virtual {p1}, Lcom/amazon/device/crashmanager/Artifact;->getCreationTimeUTCMillis()J

    move-result-wide v2

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
