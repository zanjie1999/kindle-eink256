.class public final Lcom/audible/hushpuppy/common/audiobook/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.java"


# static fields
.field private static final AUDIOBOOK_ASIN_PARAM:Ljava/lang/String; = "audioBookAsin"

.field private static final AUDIOBOOK_FORMAT_PARAM:Ljava/lang/String; = "audioBookFormat"

.field private static final EBOOK_ACR_PARAM:Ljava/lang/String; = "eBookACR"


# direct methods
.method public static getSampleSyncFilePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const-string p0, "%s-%s.sync"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSyncFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%s.sync"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
