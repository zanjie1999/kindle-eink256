.class public Lcom/amazon/kindle/speedreading/amplifier/sidecar/SidecarFileUtils;
.super Ljava/lang/Object;
.source "SidecarFileUtils.java"


# static fields
.field private static final SIDECAR_DB_NAME_FORMAT:Ljava/lang/String; = "AMPLIFY.%s.%s.db"

.field private static final SIDECAR_DOWNLOAD_NAME_FORMAT:Ljava/lang/String; = "AMPLIFY.%s.%s.db.download"


# direct methods
.method private static getSafeGuid(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string v0, ":"

    const-string v1, "_"

    .line 56
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getSidecarFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 3

    .line 35
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lcom/amazon/kindle/speedreading/amplifier/sidecar/SidecarFileUtils;->getSafeGuid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v1, p1

    const-string p0, "AMPLIFY.%s.%s.db"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
