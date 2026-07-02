.class Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "DefaultArtifactProcessor.java"


# static fields
.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 14
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "DefaultArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DefaultArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/whispersync/device/utils/DetUtil;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
