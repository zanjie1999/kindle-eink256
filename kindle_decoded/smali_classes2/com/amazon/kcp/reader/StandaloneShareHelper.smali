.class public Lcom/amazon/kcp/reader/StandaloneShareHelper;
.super Ljava/lang/Object;
.source "StandaloneShareHelper.java"

# interfaces
.implements Lcom/amazon/kcp/reader/IShareHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;,
        Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_COMPRESS_QUALITY:I = 0x50

.field private static final MIME_TYPE_IMAGE:Ljava/lang/String; = "image/*"

.field private static final MIME_TYPE_TEXT:Ljava/lang/String; = "text/*"

.field private static final TAG:Ljava/lang/String;

.field public static background:I

.field public static darkBackground:I

.field public static darkColor:I

.field private static reftagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/reader/IShareHelper$ShareType;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static shareableApplication:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static unSupportShareBookTypes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field menuWindow:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

.field private final wechatDelegate:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    const/high16 v0, -0x50000000

    .line 103
    sput v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->background:I

    const/4 v0, 0x0

    .line 104
    sput v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->darkBackground:I

    const v0, -0xafafb0

    .line 105
    sput v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->darkColor:I

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    .line 140
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/google/common/base/Optional<",
            "Lcom/amazon/kindle/map/WechatDelegateInterface;",
            ">;>;)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    const/4 v2, 0x0

    const-string/jumbo v3, "weibo"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    const-string/jumbo v3, "wechat_friend"

    const/4 v5, 0x2

    invoke-direct {v1, v3, v4, v5}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    const-string/jumbo v3, "wechat_moment"

    const/4 v5, 0x3

    invoke-direct {v1, v3, v4, v5}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    const-string v3, "other"

    const/4 v4, 0x4

    invoke-direct {v1, v3, v2, v4}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;-><init>(Ljava/lang/String;ZI)V

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_CAROUSEL:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const-string v2, "kar_wh_ca"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const-string v2, "kar_wh_li"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const-string v2, "kar_wh_ho"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    sget-object v1, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const-string v2, "kar_pr_re"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_EBOOK_PDOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    sget-object v1, Lcom/amazon/kcp/library/models/BookType;->BT_OFFICE_DOC:Lcom/amazon/kcp/library/models/BookType;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 152
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->wechatDelegate:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/Map;
    .locals 1

    .line 80
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    return-object v0
.end method

.method private createShareableInformation(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Lcom/amazon/kcp/reader/share/ShareableInformation;
    .locals 8

    .line 296
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAsin()Ljava/lang/String;

    move-result-object v2

    .line 297
    invoke-interface {p2}, Lcom/amazon/kcp/library/ICoverCacheable;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getAuthor()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    .line 296
    invoke-direct/range {v0 .. v7}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->createShareableInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Lcom/amazon/kcp/reader/share/ShareableInformation;

    move-result-object p1

    return-object p1
.end method

.method private createShareableInformation(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Lcom/amazon/kcp/reader/share/ShareableInformation;
    .locals 4

    .line 317
    new-instance v0, Lcom/amazon/kcp/reader/share/ShareableInformation;

    invoke-direct {v0}, Lcom/amazon/kcp/reader/share/ShareableInformation;-><init>()V

    .line 319
    iput-object p4, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->title:Ljava/lang/String;

    .line 320
    iput-object p2, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->asin:Ljava/lang/String;

    .line 322
    iput-object p5, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->author:Ljava/lang/String;

    .line 325
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "http://www.amazon.cn/dp/"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->asin:Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, "/ref="

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p4, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    .line 326
    invoke-interface {p4, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    .line 328
    iget-object p2, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->author:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    const/4 p4, 0x1

    const/4 p5, 0x0

    if-nez p2, :cond_0

    .line 329
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p7, 0x7f100cda

    new-array v1, p4, [Ljava/lang/Object;

    iget-object v2, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->author:Ljava/lang/String;

    aput-object v2, v1, p5

    invoke-virtual {p2, p7, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->authorWrapper:Ljava/lang/String;

    .line 334
    :cond_0
    new-instance p2, Ljava/io/File;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p7

    invoke-interface {p7}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-virtual {p7}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p7

    const-string v1, "kindle_cover_share_temp.jpg"

    invoke-direct {p2, p7, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-string p7, "copy cover to temp path failure."

    if-eqz p6, :cond_1

    const/4 p3, 0x0

    .line 339
    :try_start_0
    new-instance p4, Ljava/io/FileOutputStream;

    invoke-direct {p4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :try_start_1
    sget-object p3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x50

    invoke-virtual {p6, p3, v1, p4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 344
    invoke-static {p4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    move p4, p3

    goto :goto_3

    :catch_0
    move-exception p3

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p4

    move-object v3, p4

    move-object p4, p3

    move-object p3, v3

    .line 342
    :goto_0
    :try_start_2
    sget-object p6, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    invoke-static {p6, p7, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 344
    invoke-static {p4}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object p3, p4

    :goto_1
    invoke-static {p3}, Lcom/amazon/kindle/io/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 345
    throw p1

    .line 347
    :cond_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p6

    invoke-interface {p6}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getCoverManager()Lcom/amazon/kindle/cover/ICoverImageService;

    move-result-object p6

    .line 348
    invoke-interface {p6, p3}, Lcom/amazon/kindle/cover/ICoverImageService;->getMediumCoverLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 351
    :try_start_3
    new-instance p6, Ljava/io/File;

    invoke-direct {p6, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p6, p2}, Lcom/google/common/io/Files;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception p3

    .line 354
    sget-object p4, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    invoke-static {p4, p7, p3}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    const/4 p4, 0x0

    :goto_3
    if-eqz p4, :cond_4

    .line 359
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x18

    if-lt p3, p4, :cond_3

    const-string p3, "com.amazon.kindle.file_provider"

    .line 360
    invoke-static {p1, p3, p2}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_4

    .line 361
    :cond_3
    invoke-static {p2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_4
    iput-object p1, v0, Lcom/amazon/kcp/reader/share/ShareableInformation;->imageUri:Landroid/net/Uri;

    :cond_4
    return-object v0
.end method

.method private generateIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Landroid/content/Intent;
    .locals 9

    .line 431
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "other"

    .line 432
    invoke-static {p2, v1}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "text/*"

    .line 436
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 438
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->getPackageName(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 439
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "image/*"

    .line 440
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 441
    iget-object v1, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->imageUri:Landroid/net/Uri;

    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 442
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 446
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string/jumbo v3, "weibo"

    .line 447
    invoke-static {p2, v3}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const-string v5, "android.intent.extra.TEXT"

    const/4 v6, 0x3

    const/4 v7, 0x2

    if-eqz p2, :cond_4

    .line 448
    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->shortUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 449
    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->shortUrl:Ljava/lang/String;

    iput-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    goto :goto_1

    .line 451
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_wb"

    invoke-virtual {p2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    .line 454
    :goto_1
    sget-object p2, Lcom/amazon/kcp/reader/StandaloneShareHelper$5;->$SwitchMap$com$amazon$kcp$reader$IShareHelper$ShareType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p2, p2, p5

    const/4 p5, 0x0

    const-string v8, ""

    if-eq p2, v2, :cond_3

    if-eq p2, v7, :cond_3

    if-eq p2, v6, :cond_3

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    goto :goto_2

    .line 464
    :cond_2
    invoke-direct {p0, p1, p4, v8}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->generateTextForSharingProgress(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const p2, 0x7f100cc7

    new-array p4, v7, [Ljava/lang/Object;

    aput-object p1, p4, p5

    .line 465
    iget-object p1, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    aput-object p1, p4, v2

    invoke-virtual {v1, p2, p4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_3
    const p1, 0x7f100cdc

    new-array p2, v6, [Ljava/lang/Object;

    .line 459
    iget-object p4, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->title:Ljava/lang/String;

    aput-object p4, p2, p5

    iget-object p4, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->authorWrapper:Ljava/lang/String;

    aput-object p4, p2, v2

    iget-object p3, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    aput-object p3, p2, v7

    invoke-virtual {v1, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 469
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 471
    :cond_4
    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->shortUrl:Ljava/lang/String;

    invoke-static {p2}, Lcom/amazon/kindle/util/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 472
    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->shortUrl:Ljava/lang/String;

    iput-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    goto :goto_3

    .line 474
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_ot"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    .line 476
    :goto_3
    sget-object p2, Lcom/amazon/kcp/reader/StandaloneShareHelper$5;->$SwitchMap$com$amazon$kcp$reader$IShareHelper$ShareType:[I

    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    move-result p5

    aget p2, p2, p5

    if-eq p2, v2, :cond_7

    if-eq p2, v7, :cond_7

    if-eq p2, v6, :cond_7

    if-eq p2, v4, :cond_7

    if-eq p2, v3, :cond_6

    goto :goto_4

    .line 487
    :cond_6
    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p4, p2}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->generateTextForSharingProgress(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 489
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_4

    .line 481
    :cond_7
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->title:Ljava/lang/String;

    iget-object p4, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->author:Ljava/lang/String;

    iget-object p5, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->bookUrl:Ljava/lang/String;

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->generateTextForSharingBook(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 484
    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 492
    :goto_4
    iget-object p1, p3, Lcom/amazon/kcp/reader/share/ShareableInformation;->title:Ljava/lang/String;

    const-string p2, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_5
    return-object v0
.end method

.method private generateTextForSharingBook(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const v0, 0x7f10043d

    .line 165
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 p2, 0x1

    aput-object p3, v0, p2

    const/4 p2, 0x2

    aput-object p4, v0, p2

    const-string p2, "http://amzn.to/1QXpxm0"

    .line 166
    invoke-static {p2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v0, p3

    .line 165
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generateTextForSharingProgress(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-nez p2, :cond_0

    .line 171
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getReaderController()Lcom/amazon/kcp/reader/IReaderController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0}, Lcom/amazon/kcp/reader/IReaderController;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 175
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getDocument()Lcom/amazon/android/docviewer/KindleDoc;

    move-result-object p2

    :cond_0
    if-nez p2, :cond_2

    if-nez p3, :cond_1

    const-string p3, ""

    :cond_1
    return-object p3

    .line 182
    :cond_2
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IListableBook;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 183
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/model/content/IListableBook;->getAuthor()Ljava/lang/String;

    move-result-object v1

    .line 184
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageStartPosition()I

    move-result v2

    .line 185
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBookEndPosition()I

    move-result v3

    int-to-float v4, v2

    int-to-float v5, v3

    div-float/2addr v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float v4, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-le v2, v6, :cond_4

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-ltz v7, :cond_4

    .line 188
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getBeginningPosition()I

    move-result v7

    if-lt v7, v2, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const/high16 v7, 0x42c60000    # 99.0f

    cmpl-float v7, v4, v7

    if-gtz v7, :cond_6

    .line 189
    invoke-interface {p2}, Lcom/amazon/android/docviewer/KindleDoc;->getPageEndPosition()I

    move-result p2

    if-lt p2, v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    goto :goto_3

    :cond_6
    :goto_2
    const/4 p2, 0x1

    .line 192
    :goto_3
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-nez v3, :cond_c

    .line 193
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    if-eqz v2, :cond_7

    const p2, 0x7f100cd6

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    aput-object p3, v2, v8

    .line 195
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_7
    if-eqz p2, :cond_8

    const p2, 0x7f100cc1

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object v1, v2, v6

    aput-object p3, v2, v8

    .line 198
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_8
    const p2, 0x7f100ccd

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    float-to-int v3, v4

    .line 202
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object v0, v2, v6

    aput-object v1, v2, v8

    aput-object p3, v2, v7

    .line 201
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_9
    if-eqz v2, :cond_a

    const p2, 0x7f100cd5

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v5

    aput-object p3, v1, v6

    .line 206
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_a
    if-eqz p2, :cond_b

    const p2, 0x7f100cc0

    new-array v1, v8, [Ljava/lang/Object;

    aput-object v0, v1, v5

    aput-object p3, v1, v6

    .line 208
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_4

    :cond_b
    const p2, 0x7f100ccc

    new-array v1, v7, [Ljava/lang/Object;

    float-to-int v2, v4

    .line 211
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    aput-object p3, v1, v8

    .line 210
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 215
    :cond_c
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz v2, :cond_d

    const p2, 0x7f100cd4

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v5

    aput-object p3, v0, v6

    .line 217
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_d
    if-eqz p2, :cond_e

    const p2, 0x7f100cbf

    new-array v0, v8, [Ljava/lang/Object;

    aput-object v1, v0, v5

    aput-object p3, v0, v6

    .line 219
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_e
    const p2, 0x7f100ccb

    new-array v0, v7, [Ljava/lang/Object;

    float-to-int v2, v4

    .line 222
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v5

    aput-object v1, v0, v6

    aput-object p3, v0, v8

    .line 221
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_f
    if-eqz v2, :cond_10

    const p2, 0x7f100cd3

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v5

    .line 226
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_10
    if-eqz p2, :cond_11

    const p2, 0x7f100cbe

    new-array v0, v6, [Ljava/lang/Object;

    aput-object p3, v0, v5

    .line 228
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_11
    const p2, 0x7f100cca

    new-array v0, v8, [Ljava/lang/Object;

    float-to-int v1, v4

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v5

    aput-object p3, v0, v6

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_4
    return-object p1
.end method

.method private getPackageName(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 641
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "image/*"

    .line 642
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v1, 0x0

    .line 644
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 647
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 648
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 649
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const-string p1, ""

    return-object p1
.end method

.method private getShareableSocialNetworkList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 405
    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$4;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/reader/StandaloneShareHelper$4;-><init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private isSocialAppInstalled(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2

    const-string v0, "other"

    .line 632
    invoke-static {p2, v0}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 636
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->getPackageName(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    .line 637
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    return p1
.end method

.method private openShareDialog(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Lcom/amazon/kcp/reader/share/ShareableInformation;)V
    .locals 9

    .line 278
    invoke-direct {p0}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->getShareableSocialNetworkList()Ljava/util/List;

    move-result-object v0

    .line 280
    new-instance v1, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    new-instance v8, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;

    move-object v2, v8

    move-object v3, p0

    move-object v4, p4

    move-object v5, p1

    move-object v6, p5

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/amazon/kcp/reader/StandaloneShareHelper$2;-><init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;)V

    invoke-direct {v1, p1, v0, v8, p4}, Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;-><init>(Landroid/app/Activity;Ljava/util/List;Landroid/view/View$OnClickListener;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    iput-object v1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->menuWindow:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    const/4 p1, 0x0

    const/16 p3, 0x51

    .line 290
    invoke-virtual {v1, p2, p3, p1, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private shareByIntent(Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 6

    .line 501
    invoke-direct {p0, p1, p4}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->isSocialAppInstalled(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const p2, 0x7f100198

    const/4 p3, 0x0

    .line 502
    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 506
    invoke-direct/range {v0 .. v5}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->generateIntent(Landroid/app/Activity;Ljava/lang/String;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Landroid/content/Intent;

    move-result-object p2

    .line 508
    invoke-virtual {p1, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 509
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->menuWindow:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    if-eqz p1, :cond_1

    .line 510
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method private shareBySdk(Lcom/amazon/kcp/reader/share/ShareableInformation;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .line 516
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x5031c5d7

    const-string/jumbo v2, "wechat_moment"

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const v1, 0x5bfb3d39

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "wechat_friend"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    if-eq v0, v3, :cond_3

    .line 531
    sget-object p1, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t dispatch shareBySdk by giving socialNetwork value, "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 520
    :cond_3
    invoke-static {p2, v2}, Lcom/amazon/kindle/util/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/amazon/kindle/map/WechatDelegateInterface$WechatSharingType;->MOMENT:Lcom/amazon/kindle/map/WechatDelegateInterface$WechatSharingType;

    goto :goto_2

    :cond_4
    sget-object p2, Lcom/amazon/kindle/map/WechatDelegateInterface$WechatSharingType;->FRIEND:Lcom/amazon/kindle/map/WechatDelegateInterface$WechatSharingType;

    .line 523
    :goto_2
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->wechatDelegate:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 524
    iget-object v0, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->wechatDelegate:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kindle/map/WechatDelegateInterface;

    invoke-interface {v0, p1, p2, p3}, Lcom/amazon/kindle/map/WechatDelegateInterface;->shareToWechat(Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/kindle/map/WechatDelegateInterface$WechatSharingType;Landroid/os/Bundle;)V

    .line 526
    :cond_5
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->menuWindow:Lcom/amazon/kcp/reader/StandaloneShareHelper$SharePopupWindow;

    if-eqz p1, :cond_6

    .line 527
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_6
    :goto_3
    return-void
.end method

.method static useDarkStyle(Landroid/content/Context;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Z
    .locals 3

    .line 671
    sget-object v0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->PROGRESS_READER:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    .line 672
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object p1

    .line 673
    invoke-virtual {p1}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object p1

    .line 674
    sget-object v0, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->NIGHT:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    if-ne v0, p1, :cond_0

    instance-of p0, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 676
    :cond_1
    sget-object p0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_LIBRARY:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    if-eq p1, p0, :cond_2

    sget-object p0, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_CAROUSEL:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    if-ne p1, p0, :cond_4

    .line 679
    :cond_2
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p0

    invoke-interface {p0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 681
    invoke-interface {p0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object p0

    .line 682
    invoke-interface {p0}, Lcom/amazon/kindle/krx/theme/IThemeManager;->areMultipleThemesSupported()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 683
    sget-object p1, Lcom/amazon/kindle/krx/theme/ThemeArea;->OUT_OF_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    invoke-interface {p0, p1}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object p0

    sget-object p1, Lcom/amazon/kindle/krx/theme/Theme;->DARK:Lcom/amazon/kindle/krx/theme/Theme;

    if-ne p0, p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method private static verifyBookTypeSupported(Landroid/content/Context;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Z
    .locals 3

    .line 265
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/reader/StandaloneShareHelper;->reftagMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcom/amazon/kindle/krx/metrics/MetricType;->INFO:Lcom/amazon/kindle/krx/metrics/MetricType;

    const-string v2, "KAR_SOCIAL_SHARE"

    invoke-virtual {v0, v2, p2, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/krx/metrics/MetricType;)V

    .line 266
    sget-object p2, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 267
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f100cc3

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    .line 268
    invoke-static {p0, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 269
    sget-object p0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Share book type not supported for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V
    .locals 9

    .line 240
    invoke-interface {p4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object v0

    invoke-static {p1, v0, p5}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->verifyBookTypeSupported(Landroid/content/Context;Lcom/amazon/kcp/library/models/BookType;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p4, p5}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->createShareableInformation(Landroid/content/Context;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)Lcom/amazon/kcp/reader/share/ShareableInformation;

    move-result-object v6

    .line 245
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewKfcShareUxEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    sget-object v0, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;->INSTANCE:Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;

    invoke-virtual {v0}, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$Holder;->getProvider()Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;

    move-result-object v0

    .line 247
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getLibraryController()Lcom/amazon/kcp/library/ILibraryController;

    move-result-object v1

    invoke-interface {p4}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getContentMetadata()Lcom/amazon/kindle/content/ContentMetadata;

    move-result-object p4

    invoke-interface {v1, p4}, Lcom/amazon/kcp/library/ILibraryController;->getKrxBook(Lcom/amazon/kindle/content/ContentMetadata;)Lcom/amazon/kindle/krx/content/IBook;

    move-result-object p4

    .line 248
    new-instance v8, Lcom/amazon/kcp/reader/StandaloneShareHelper$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, v6

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/amazon/kcp/reader/StandaloneShareHelper$1;-><init>(Lcom/amazon/kcp/reader/StandaloneShareHelper;Lcom/amazon/kcp/reader/share/ShareableInformation;Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    invoke-interface {v0, p4, p5, v8}, Lcom/amazon/kindle/share/IKindlePlayerUrlProvider;->getKindlePlayerUrl(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Lcom/amazon/kindle/share/IKindlePlayerUrlProvider$UrlCallback;)V

    return-void

    :cond_1
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p5

    .line 257
    invoke-direct/range {v1 .. v6}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->openShareDialog(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Lcom/amazon/kcp/reader/share/ShareableInformation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 259
    sget-object p2, Lcom/amazon/kcp/reader/StandaloneShareHelper;->TAG:Ljava/lang/String;

    const-string p3, "share failure."

    invoke-static {p2, p3, p1}, Lcom/amazon/kindle/log/Log;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public share(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shareToSocial(Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;Lcom/amazon/kcp/reader/IShareHelper$ShareType;Landroid/os/Bundle;)V
    .locals 4

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StandaloneShareHelper.shareToSocial("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    .line 419
    sget-object v0, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareableApplication:Ljava/util/Map;

    invoke-interface {v0, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;

    iget-boolean v0, v0, Lcom/amazon/kcp/reader/StandaloneShareHelper$SocialNetworkInformation;->enableSdkShare:Z

    if-eqz v0, :cond_0

    .line 422
    invoke-direct {p0, p2, p4, p6}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareBySdk(Lcom/amazon/kcp/reader/share/ShareableInformation;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 424
    :cond_0
    invoke-direct/range {p0 .. p5}, Lcom/amazon/kcp/reader/StandaloneShareHelper;->shareByIntent(Landroid/app/Activity;Lcom/amazon/kcp/reader/share/ShareableInformation;Lcom/amazon/android/docviewer/KindleDoc;Ljava/lang/String;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    .line 426
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/kindle/util/PerfHelper;->LogPerformanceMarkerForQA(Ljava/lang/String;Z)V

    return-void
.end method

.method public showNewShareOption(Landroid/app/Activity;Lcom/amazon/kcp/library/ILibraryDisplayItem;)Z
    .locals 2

    .line 661
    invoke-static {}, Lcom/amazon/kcp/debug/DebugUtils;->isNewKfcShareUxEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 665
    :cond_0
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getType()Lcom/amazon/kcp/library/models/BookType;

    move-result-object p2

    .line 666
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05002a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/amazon/kcp/reader/StandaloneShareHelper;->unSupportShareBookTypes:Ljava/util/Set;

    .line 667
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method
