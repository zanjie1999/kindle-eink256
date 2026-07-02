.class public Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;
.super Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;
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


# instance fields
.field private final mDiagnosticHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "SYSTEM_BOOT"

    .line 26
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_LAST_KMSG"

    .line 27
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_RECOVERY_LOG"

    .line 28
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_RESTART"

    .line 29
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "SYSTEM_BSP_DIAG"

    .line 30
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v1, "PERF_WTF"

    .line 31
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;->DIAGNOSTIC_ARTIFACT_TAGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/device/utils/det/DetUtil;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0, p1, p2, p3}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/device/utils/det/DetUtil;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDefaultHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    iput-object p1, p0, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    return-void
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    const-string p4, "ContentType"

    const-string v0, "Diagnostic"

    invoke-interface {p1, p4, v0, p3}, Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 54
    iget-object p1, p0, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/device/utils/det/DetUtil;

    iget-object p4, p0, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;->mDiagnosticHeaderProcessor:Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;

    invoke-virtual {p1, p2, p3, p4}, Lcom/amazon/device/utils/det/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/device/utils/det/DetUtil$HeaderProcessor;)Ljava/lang/String;

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 44
    sget-object v0, Lcom/amazon/device/crashmanager/processor/DiagnosticArtifactProcessor;->DIAGNOSTIC_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1, p2}, Lcom/amazon/device/crashmanager/processor/AbstractDetArtifactProcessor;->processArtifact(Lcom/amazon/device/crashmanager/Artifact;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method
