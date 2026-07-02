.class public Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;
.super Ljava/lang/Object;
.source "WordWiseFileSystemHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;
    }
.end annotation


# static fields
.field private static final DEFAULT_SIDECAR_LANGUAGE:Ljava/lang/String; = "en"

.field private static final GLOSS_DICTIONARY_DIRECTORY_NAME:Ljava/lang/String; = "wordwise"

.field private static final GLOSS_DICTIONARY_FILE_NAME_FORMAT:Ljava/lang/String; = "WordWise.%s.db"

.field private static final GLOSS_KNOWN_SENSE_FILE_NAME_FORMAT:Ljava/lang/String; = "WordWise.KnownSense.%s.db"

.field private static final GLOSS_OVERRIDE_FILE_NAME_FORMAT:Ljava/lang/String; = "WordWise.Override.%s.%s.db"

.field private static final GLOSS_SIDECAR_FILE_NAME_FORMAT:Ljava/lang/String; = "WordWise.%s.%s.db"

.field private static final GLOSS_SIDECAR_FILE_NAME_WITH_GUID_FORMAT:Ljava/lang/String; = "WordWise.%s.%s.%s.db"

.field private static final GLOSS_SIDECAR_FILE_PREFIX:Ljava/lang/String; = "WordWise.%s.%s"

.field private static final TAG:Ljava/lang/String;

.field protected static sInstance:Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;


# instance fields
.field private sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

.field private wordwiseDatabasesLocation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sInstance:Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method

.method private final getAllWordWiseSidecarDirs(Lcom/amazon/kindle/krx/content/IBook;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 395
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getV1WordwiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getV2WordwiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-object v0
.end method

.method private getEscapedGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const-string v0, "\\W+"

    const-string v1, "_"

    .line 212
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;
    .locals 1

    .line 72
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sInstance:Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    if-nez v0, :cond_0

    .line 73
    new-instance v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    invoke-direct {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;-><init>()V

    sput-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sInstance:Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    .line 76
    :cond_0
    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sInstance:Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;

    return-object v0
.end method

.method private final getV1WordwiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->wordwiseDatabasesLocation:Ljava/lang/String;

    return-object p1
.end method

.method private final getV2WordwiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getDbFriendlySidecarDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getGlossDictionaryDirectory()Ljava/io/File;
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->wordwiseDatabasesLocation:Ljava/lang/String;

    invoke-static {v0}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 104
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->wordwiseDatabasesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "wordwise"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getGlossDictionaryFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryDirectory()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 120
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getGlossDictionaryFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 121
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object v1
.end method

.method public getGlossDictionaryFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 133
    invoke-static {p1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "WordWise.%s.db"

    .line 136
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWordWiseKnownSenseFileName()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "en"

    aput-object v2, v0, v1

    const-string v1, "WordWise.KnownSense.%s.db"

    .line 279
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWordWiseOverrideFile(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 269
    :cond_0
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-static {v1}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    .line 274
    :cond_1
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseOverrideFileName(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWordWiseOverrideFileName(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "WordWise.Override.%s.%s.db"

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, p1, v1

    aput-object v2, p1, v0

    .line 252
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "en"

    aput-object v4, v2, v1

    .line 255
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getWordWiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_1

    .line 380
    iget-object v0, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-nez v0, :cond_0

    goto :goto_0

    .line 384
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getV2WordwiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getWordWiseSidecarFileNameWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "WordWise.%s.%s.db"

    if-nez p1, :cond_0

    new-array p1, v2, [Ljava/lang/Object;

    const-string v2, ""

    aput-object v2, p1, v1

    aput-object v2, p1, v0

    .line 149
    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-array v2, v2, [Ljava/lang/Object;

    const-string v4, "en"

    aput-object v4, v2, v1

    .line 152
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v0

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWordWiseSidecarFileNameWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "WordWise.%s.%s.%s.db"

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    new-array v3, v3, [Ljava/lang/Object;

    const-string v5, "en"

    aput-object v5, v3, v2

    .line 198
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-direct {p0, p2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getEscapedGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-array p1, v3, [Ljava/lang/Object;

    const-string p2, ""

    aput-object p2, p1, v2

    aput-object p2, p1, v1

    aput-object p2, p1, v0

    .line 195
    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getWordWiseSidecarFileWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getAllWordWiseSidecarDirs(Lcom/amazon/kindle/krx/content/IBook;)[Ljava/lang/String;

    move-result-object v1

    .line 171
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 172
    invoke-static {v4}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v0

    .line 176
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileNameWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 177
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 182
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileNameWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .annotation runtime Lcom/amazon/kindle/krx/strictmode/SuppressStrictMode;
        violations = {
            .enum Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;->DiskReadViolation:Lcom/amazon/kindle/krx/strictmode/StrictModeViolation;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getAllWordWiseSidecarDirs(Lcom/amazon/kindle/krx/content/IBook;)[Ljava/lang/String;

    move-result-object v1

    .line 230
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    aget-object v4, v1, v3

    .line 231
    invoke-static {v4}, Lcom/amazon/kcp/wordwise/util/WordWiseUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-object v0

    .line 235
    :cond_1
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileNameWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 236
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    return-object v5

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 241
    :cond_3
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarDirPath(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileNameWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-object v0
.end method

.method public initialize(Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 3

    .line 84
    iput-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "databases"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->wordwiseDatabasesLocation:Ljava/lang/String;

    .line 89
    iget-object p1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p1

    sget-object v0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WordWise databases directory for sidecars, overrides and dictionaries: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->wordwiseDatabasesLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/logging/ILogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeWordWiseOverrideFile(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 293
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getAllWordWiseSidecarDirs(Lcom/amazon/kindle/krx/content/IBook;)[Ljava/lang/String;

    move-result-object v0

    .line 294
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 295
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseOverrideFileName(Lcom/amazon/kindle/krx/content/IBook;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    :try_start_0
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 301
    new-instance v3, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-journal"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 302
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 303
    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 306
    iget-object v4, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v4}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    const-string v6, "Failed to delete Override database"

    invoke-interface {v4, v5, v6, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public removeWordWiseSidecarFile(Lcom/amazon/kindle/krx/content/IBook;ZZ)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "Failed to delete Sidecar database"

    if-eqz p3, :cond_3

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const-string p3, "en"

    const/4 v1, 0x0

    aput-object p3, p2, v1

    .line 329
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p3

    const/4 v2, 0x1

    aput-object p3, p2, v2

    const-string p3, "WordWise.%s.%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 330
    iget-object p3, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p3}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p3

    sget-object v2, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prefix for removing WWsidecars : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lcom/amazon/kindle/krx/logging/ILogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getAllWordWiseSidecarDirs(Lcom/amazon/kindle/krx/content/IBook;)[Ljava/lang/String;

    move-result-object p1

    .line 333
    array-length p3, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    aget-object v3, p1, v2

    .line 334
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 336
    new-instance v3, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;

    invoke-direct {v3, p0, p2}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper$WordWiseFileNameFilter;-><init>(Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 338
    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 340
    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v6

    .line 342
    iget-object v7, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v7}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v7

    sget-object v8, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    invoke-interface {v7, v8, v0, v6}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 352
    :cond_3
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsinAndGuid(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Ljava/io/File;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 353
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p3}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 355
    :try_start_1
    invoke-virtual {p3}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p3

    .line 357
    iget-object v1, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object v1

    sget-object v2, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    invoke-interface {v1, v2, v0, p3}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    if-eqz p2, :cond_5

    .line 363
    invoke-virtual {p0, p1}, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->getWordWiseSidecarFileWithAsin(Lcom/amazon/kindle/krx/content/IBook;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 366
    :try_start_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    :catch_2
    move-exception p1

    .line 368
    iget-object p2, p0, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLogger()Lcom/amazon/kindle/krx/logging/ILogger;

    move-result-object p2

    sget-object p3, Lcom/amazon/kcp/wordwise/util/WordWiseFileSystemHelper;->TAG:Ljava/lang/String;

    invoke-interface {p2, p3, v0, p1}, Lcom/amazon/kindle/krx/logging/ILogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_4
    return-void
.end method
