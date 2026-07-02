.class public Lcom/amazon/device/crashmanager/WhitelistAppArtifact;
.super Lcom/amazon/device/crashmanager/Artifact;
.source "WhitelistAppArtifact.java"


# static fields
.field private static final log:Lcom/amazon/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 12
    new-instance v0, Lcom/amazon/dp/logger/DPLogger;

    const-string v1, "WhitelistAppArtifact"

    invoke-direct {v0, v1}, Lcom/amazon/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;->log:Lcom/amazon/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/io/InputStream;J)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/device/crashmanager/Artifact;-><init>(Ljava/lang/String;Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method public shouldUploadArtifact()Z
    .locals 7

    .line 20
    sget-object v0, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;->log:Lcom/amazon/dp/logger/DPLogger;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v3, "shouldUploadArtifact"

    const-string v4, "Verifying that the artifact can be uploaded"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 21
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/crashmanager/source/WhitelistAppArtifactSource;->getWhiteListedAppPatternsForTag(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 22
    invoke-virtual {p0}, Lcom/amazon/device/crashmanager/Artifact;->getMetadataMap()Ljava/util/Map;

    move-result-object v2

    const-string v4, "appName"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 24
    sget-object v4, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;->log:Lcom/amazon/dp/logger/DPLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mAppName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Object;

    invoke-virtual {v4, v3, v5, v6}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 29
    :cond_0
    sget-object v0, Lcom/amazon/device/crashmanager/WhitelistAppArtifact;->log:Lcom/amazon/dp/logger/DPLogger;

    new-array v2, v1, [Ljava/lang/Object;

    const-string v4, "Artifact is not whitelisted to be uploaded"

    invoke-virtual {v0, v3, v4, v2}, Lcom/amazon/dp/logger/DPLoggerBase;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v1
.end method
