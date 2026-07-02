.class public Lcom/amazon/ea/util/SidecarFileUtil;
.super Ljava/lang/Object;
.source "SidecarFileUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;
    }
.end annotation


# static fields
.field private static final EA_SIDECAR_FILE_FORMAT:Ljava/lang/String; = "EndActions.data.%s.asc"

.field private static final SA_SIDECAR_FILE_FORMAT:Ljava/lang/String; = "StartActions.data.%s.asc"

.field private static final TAG:Ljava/lang/String; = "com.amazon.ea.util.SidecarFileUtil"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 54
    invoke-static {p0, p1}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarName(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object p0, p1

    :goto_0
    return-object p0
.end method

.method public static getSidecarFileSize(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)I
    .locals 3

    .line 34
    sget-object v0, Lcom/amazon/ea/EndActionsPlugin;->sdk:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getApplicationManager()Lcom/amazon/kindle/krx/application/IApplicationManager;

    move-result-object v0

    .line 35
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getBookId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/amazon/kindle/krx/application/IApplicationManager;->getSidecarDirectoryForBook(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/amazon/ea/util/SidecarFileUtil;->getSidecarFile(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    return v2

    .line 41
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide p0

    long-to-int p1, p0

    return p1
.end method

.method public static getSidecarName(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/ea/util/SidecarFileUtil$SidecarFileType;)Ljava/lang/String;
    .locals 4

    .line 66
    sget-object v0, Lcom/amazon/ea/util/SidecarFileUtil$1;->$SwitchMap$com$amazon$ea$util$SidecarFileUtil$SidecarFileType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    .line 72
    sget-object p0, Lcom/amazon/ea/util/SidecarFileUtil;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown sidecar type.  Will return null.  Type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/ea/logging/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 70
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "StartActions.data.%s.asc"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-array p1, v2, [Ljava/lang/Object;

    .line 68
    invoke-interface {p0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object p0

    aput-object p0, p1, v1

    const-string p0, "EndActions.data.%s.asc"

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
