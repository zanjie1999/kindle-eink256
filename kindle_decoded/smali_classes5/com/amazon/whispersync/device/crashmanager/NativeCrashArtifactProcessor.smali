.class Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;
.super Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;
.source "NativeCrashArtifactProcessor.java"


# static fields
.field private static final NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

.field public static final NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final REVISION:Ljava/lang/String; = "Revision"

.field private static final STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

.field private static final log:Lcom/amazon/whispersync/dp/logger/DPLogger;


# instance fields
.field private final mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

.field private final mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

.field private final mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v1, "NativeCrashArtifactProcessor"

    invoke-direct {v0, v1}, Lcom/amazon/whispersync/dp/logger/DPLogger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    const-string v0, "^pid: .+>>> (.+?) <<<.*$"

    .line 39
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

    const-string v0, "#\\d+\\s+pc\\s+[\\w\\d]+\\s+([^\\+^\\r^\\n]+)"

    .line 49
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    .line 59
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    const-string v1, "SYSTEM_TOMBSTONE"

    .line 60
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;)V
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
            ">;",
            "Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;",
            "Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;-><init>(Lcom/amazon/whispersync/device/utils/DetUtil;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz p5, :cond_1

    if-eqz p6, :cond_0

    .line 77
    iget-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-virtual {p5, p1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessorFactory;->construct(Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    .line 79
    new-instance p1, Ljava/util/HashMap;

    const/4 p2, 0x2

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(I)V

    .line 81
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "Process"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    const-string p3, "hasForegroundActivities"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance p2, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;

    iget-object p3, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mHeaderWriter:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderWriter;

    invoke-direct {p2, p1, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$DefaultHeaderProcessor;-><init>(Ljava/util/Map;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    iput-object p2, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    .line 87
    iput-object p6, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    return-void

    .line 73
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Duplicate count must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 70
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Metrics header processor factory must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected addSpecificHeaders(Lcom/amazon/whispersync/device/crashmanager/Artifact;Ljava/io/BufferedReader;Ljava/io/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mMetricsHeaderProcessor:Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;

    invoke-virtual {p1}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/whispersync/device/crashmanager/MetricsHeaderProcessor;->setProcessTag(Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    const-string v1, "ContentType"

    const-string v2, "NativeCrash"

    invoke-interface {v0, v1, v2, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 227
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mDetUtil:Lcom/amazon/whispersync/device/utils/DetUtil;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0, p2, p3, v1}, Lcom/amazon/whispersync/device/utils/DetUtil;->processHeaders(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)V

    .line 230
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {p0, p2, p3, v0}, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->extractNativeCrashInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 235
    iget-object v0, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mCrashDuplicateCount:Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;

    invoke-interface {v0, p2}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorStorageUtil;->getCount(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 242
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->mNativeHeaderProcessor:Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CrashDuplicateCount"

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    .line 247
    :cond_0
    invoke-virtual {p1, p2}, Lcom/amazon/whispersync/device/crashmanager/Artifact;->setCrashDescriptor(Ljava/lang/String;)V

    return-void
.end method

.method public canProcessTag(Ljava/lang/String;)Z
    .locals 1

    .line 92
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->NATIVE_CRASH_ARTIFACT_TAGS:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected extractNativeCrashInfoFromCrashBody(Ljava/io/BufferedReader;Ljava/io/Writer;Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/16 v0, 0x6400

    .line 112
    invoke-virtual {p1, v0}, Ljava/io/BufferedReader;->mark(I)V

    .line 114
    :try_start_0
    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Ljava/io/BufferedReader;->read([CII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    .line 121
    new-instance p1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lcom/amazon/whispersync/device/crashmanager/AbstractDetArtifactProcessor;->mBuffer:[C

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 126
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return-object v3

    .line 132
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v3

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Could not find process information from native crash."

    const-string v5, "extractNativeCrashInfoFromCrashBody"

    if-nez v0, :cond_2

    .line 143
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_2
    const-string v6, "Revision"

    .line 146
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 147
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 149
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v5, v4, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    .line 158
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    sget-object v6, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->NATIVE_APP_NAME_REGEX:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 164
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 167
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "Process"

    .line 168
    invoke-interface {p3, v6, v0, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    goto :goto_0

    .line 170
    :cond_4
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array v6, v2, [Ljava/lang/Object;

    const-string v7, "Could not extract \'Process\' from native crash."

    invoke-virtual {v0, v5, v7, v6}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v0, 0x0

    :goto_1
    const/16 v6, 0x64

    if-ge v0, v6, :cond_9

    .line 180
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_4

    .line 186
    :cond_5
    sget-object v7, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 187
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->find()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 190
    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 193
    :goto_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_3

    .line 198
    :cond_6
    sget-object v2, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->STACKFRAME_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 201
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 206
    :cond_7
    :goto_3
    invoke-static {v4}, Lcom/amazon/whispersync/device/crashmanager/CrashDescriptorUtil;->calculateCrashDescriptor(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "CrashDescriptor"

    .line 207
    invoke-interface {p3, v0, p1, p2}, Lcom/amazon/whispersync/device/utils/DetUtil$HeaderProcessor;->process(Ljava/lang/String;Ljava/lang/String;Ljava/io/Writer;)V

    return-object p1

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 211
    :cond_9
    :goto_4
    sget-object p1, Lcom/amazon/whispersync/device/crashmanager/NativeCrashArtifactProcessor;->log:Lcom/amazon/whispersync/dp/logger/DPLogger;

    new-array p2, v2, [Ljava/lang/Object;

    const-string p3, "Could not find stack trace in native crash."

    invoke-virtual {p1, v5, p3, p2}, Lcom/amazon/whispersync/dp/logger/DPLogger;->warn(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :catchall_0
    move-exception p2

    .line 116
    invoke-virtual {p1}, Ljava/io/BufferedReader;->reset()V

    throw p2
.end method
