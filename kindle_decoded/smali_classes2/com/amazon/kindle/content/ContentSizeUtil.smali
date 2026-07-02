.class public Lcom/amazon/kindle/content/ContentSizeUtil;
.super Ljava/lang/Object;
.source "ContentSizeUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/amazon/kindle/content/ContentSizeUtil;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/content/ContentSizeUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getContentFile(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 75
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getContentSize(Lcom/amazon/kindle/model/content/IBookID;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, -0x1

    if-eqz p0, :cond_2

    .line 53
    :try_start_0
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-static {p1}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 55
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    return-wide v0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/amazon/kindle/content/ContentSizeUtil;->getExclusiveBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/amazon/kindle/content/ContentSizeUtil;->sizeOfDirectory(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {p0}, Lcom/amazon/kindle/content/ContentSizeUtil;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/amazon/kindle/content/ContentSizeUtil;->sizeOfDirectory(Ljava/lang/String;)J

    move-result-wide v5

    add-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_1

    .line 61
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {p0}, Lcom/amazon/kindle/content/ContentSizeUtil;->getExclusiveBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kindle/content/ContentSizeUtil;->sizeOfDirectory(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-long v3, v2, p0

    :cond_1
    return-wide v3

    :catch_0
    move-exception p0

    .line 67
    sget-object v2, Lcom/amazon/kindle/content/ContentSizeUtil;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while getting size of the item: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-wide v0
.end method

.method private static getExclusiveBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 2

    .line 101
    invoke-static {}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getInstance()Lcom/amazon/kcp/application/AndroidDeviceClassFactory;

    move-result-object v0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/application/AndroidDeviceClassFactory;->getPathDescriptor(Landroid/content/Context;)Lcom/amazon/kindle/io/IPathDescriptor;

    move-result-object v0

    .line 102
    invoke-interface {v0, p0}, Lcom/amazon/kindle/io/IPathDescriptor;->getBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;
    .locals 1

    .line 112
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getMultipleProfileHelper()Lcom/amazon/kcp/application/IMultipleProfileHelper;

    move-result-object v0

    .line 113
    invoke-interface {v0, p0}, Lcom/amazon/kcp/application/IMultipleProfileHelper;->getSharedBookPath(Lcom/amazon/kindle/model/content/IBookID;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static sizeOfDirectory(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {p0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-static {p0}, Lcom/amazon/kindle/content/ContentSizeUtil;->getContentFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 87
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-static {p0}, Lcom/amazon/kindle/utils/FileUtilsWrapper;->sizeOfDirectory(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method
