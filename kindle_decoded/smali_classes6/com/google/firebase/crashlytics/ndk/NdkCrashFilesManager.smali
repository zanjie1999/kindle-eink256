.class Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;
.super Ljava/lang/Object;
.source "NdkCrashFilesManager.java"

# interfaces
.implements Lcom/google/firebase/crashlytics/ndk/CrashFilesManager;


# static fields
.field private static final LATEST_SESSION_FIRST:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_SESSIONS:I = 0x8


# instance fields
.field private final rootPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    sget-object v0, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$NdkCrashFilesManager$FPB21gKV-CnU7akQxYuE6heblCY;->INSTANCE:Lcom/google/firebase/crashlytics/ndk/-$$Lambda$NdkCrashFilesManager$FPB21gKV-CnU7akQxYuE6heblCY;

    sput-object v0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->LATEST_SESSION_FIRST:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/io/File;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    return-void
.end method

.method static synthetic lambda$static$0(Ljava/io/File;Ljava/io/File;)I
    .locals 0

    .line 25
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static prepareDirectory(Ljava/io/File;)Ljava/io/File;
    .locals 1

    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static recursiveDelete(Ljava/io/File;)V
    .locals 4

    .line 72
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 74
    invoke-static {v3}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public cleanOldSessionFileDirectories()V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    sget-object v1, Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;->INSTANCE:Lcom/google/firebase/crashlytics/ndk/-$$Lambda$k1LMnpJLlrYtcSsQvSbPW-daMgg;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53
    array-length v1, v0

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 54
    sget-object v1, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->LATEST_SESSION_FIRST:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55
    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 56
    aget-object v1, v0, v2

    invoke-static {v1}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->recursiveDelete(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public deleteSessionFileDirectory(Ljava/lang/String;)V
    .locals 2

    .line 47
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->recursiveDelete(Ljava/io/File;)V

    return-void
.end method

.method public getSessionFileDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 42
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->prepareDirectory(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public hasSessionFileDirectory(Ljava/lang/String;)Z
    .locals 2

    .line 36
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/google/firebase/crashlytics/ndk/NdkCrashFilesManager;->rootPath:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method
