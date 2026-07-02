.class Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "DiagnosticArtifactProcessor.java"


# static fields
.field public static final DIAGNOSTIC_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mDiagnosticHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "DiagnosticArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    .line 26
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "SYSTEM_BOOT"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_LAST_KMSG"

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_RECOVERY_LOG"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_RESTART"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->DIAGNOSTIC_ARTIFACT_TAGS:Ljava/util/Set;

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

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 37
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    return-void
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 48
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v0, "ContentType"

    const-string v1, "Diagnostic"

    invoke-interface {p1, v0, v1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 51
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p1, p2, p3, v0}, Lcom/amazon/whispersync/device/utils/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/DiagnosticArtifactProcessor;->DIAGNOSTIC_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
