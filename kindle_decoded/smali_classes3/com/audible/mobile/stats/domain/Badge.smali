.class public Lcom/audible/mobile/stats/domain/Badge;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;
    }
.end annotation


# static fields
.field private static badgeBitmapExecutorService:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final mBadgeFetcher:Lcom/audible/mobile/stats/BadgeIconFetcher;

.field private final mBadgeMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

.field private final mCustomerBadgeProgress:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/audible/mobile/stats/domain/Badge;->badgeBitmapExecutorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcom/audible/mobile/stats/BadgeIconFetcher;Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;Lcom/audible/mobile/stats/domain/BadgeMetadata;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p3, p0, Lcom/audible/mobile/stats/domain/Badge;->mBadgeMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

    .line 64
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/Badge;->mBadgeFetcher:Lcom/audible/mobile/stats/BadgeIconFetcher;

    .line 65
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/Badge;->mCustomerBadgeProgress:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    return-void
.end method

.method static synthetic access$000(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/domain/BadgeMetadata;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/audible/mobile/stats/domain/Badge;->mBadgeMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

    return-object p0
.end method

.method static synthetic access$100(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/BadgeIconFetcher;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/audible/mobile/stats/domain/Badge;->mBadgeFetcher:Lcom/audible/mobile/stats/BadgeIconFetcher;

    return-object p0
.end method


# virtual methods
.method public getBitmap()Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;
    .locals 3

    .line 149
    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/Badge;->getLevel()I

    move-result v0

    .line 151
    new-instance v1, Ljava/util/concurrent/FutureTask;

    new-instance v2, Lcom/audible/mobile/stats/domain/Badge$1;

    invoke-direct {v2, p0, v0}, Lcom/audible/mobile/stats/domain/Badge$1;-><init>(Lcom/audible/mobile/stats/domain/Badge;I)V

    invoke-direct {v1, v2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 175
    sget-object v0, Lcom/audible/mobile/stats/domain/Badge;->badgeBitmapExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    new-instance v0, Lcom/audible/mobile/stats/domain/Badge$2;

    invoke-direct {v0, p0, v1}, Lcom/audible/mobile/stats/domain/Badge$2;-><init>(Lcom/audible/mobile/stats/domain/Badge;Ljava/util/concurrent/FutureTask;)V

    return-object v0
.end method

.method public getLevel()I
    .locals 6

    .line 122
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge;->mCustomerBadgeProgress:Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/CustomerBadgeProgress;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Badge getLevel CustomerBadgeProgress is assigned a value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/Badge;->getMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v2

    .line 131
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x1

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/audible/mobile/stats/domain/LevelMetadata;

    .line 132
    invoke-virtual {v4}, Lcom/audible/mobile/stats/domain/LevelMetadata;->getLevelMetadataId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Badge getLevel "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " Level: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/audible/application/stats/util/LogController;->d(Ljava/lang/String;)V

    move v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMetadata()Lcom/audible/mobile/stats/domain/BadgeMetadata;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge;->mBadgeMetadata:Lcom/audible/mobile/stats/domain/BadgeMetadata;

    return-object v0
.end method

.method protected loadBitmapSynchronous(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 4

    .line 76
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 80
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :try_start_1
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 88
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object p1

    :catch_1
    move-exception p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    move-object v0, v1

    .line 84
    :goto_0
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bitmap file was not found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/audible/application/stats/util/LogController;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_1

    .line 88
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v1, :cond_0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 91
    :catch_3
    :cond_0
    throw p1

    :catch_4
    :cond_1
    :goto_2
    return-object v1
.end method
