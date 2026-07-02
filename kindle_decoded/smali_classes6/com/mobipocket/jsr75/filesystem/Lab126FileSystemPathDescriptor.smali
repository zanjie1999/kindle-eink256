.class public abstract Lcom/mobipocket/jsr75/filesystem/Lab126FileSystemPathDescriptor;
.super Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;
.source "Lab126FileSystemPathDescriptor.java"


# static fields
.field static final DICTIONARY_PATH:Ljava/lang/String; = "/system/etc/labdictionary/"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "/system/etc/labdictionary/"

    .line 26
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/mobipocket/jsr75/filesystem/AndroidFileSystemPathDescriptor;-><init>(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method public static isPreloadedDictionaryPath(Ljava/lang/String;)Z
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string v0, "/system/etc/labdictionary/"

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method protected getBookDir()Ljava/lang/String;
    .locals 1

    const-string v0, "Books"

    return-object v0
.end method

.method protected getDocsDir()Ljava/lang/String;
    .locals 1

    const-string v0, "Documents"

    return-object v0
.end method

.method protected getFileObserver()Landroid/os/FileObserver;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
