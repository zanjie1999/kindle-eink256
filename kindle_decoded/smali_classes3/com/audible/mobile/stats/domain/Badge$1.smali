.class Lcom/audible/mobile/stats/domain/Badge$1;
.super Ljava/lang/Object;
.source "Badge.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/stats/domain/Badge;->getBitmap()Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/audible/mobile/stats/domain/Badge;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lcom/audible/mobile/stats/domain/Badge;I)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    iput p2, p0, Lcom/audible/mobile/stats/domain/Badge$1;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 156
    iget v0, p0, Lcom/audible/mobile/stats/domain/Badge$1;->val$level:I

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/Badge;->access$000(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v0

    goto :goto_0

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/Badge;->access$000(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->val$level:I

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_1

    .line 160
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-static {v0}, Lcom/audible/mobile/stats/domain/Badge;->access$000(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/domain/BadgeMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/audible/mobile/stats/domain/BadgeMetadata;->getLevelMetadata()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->val$level:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/audible/mobile/stats/domain/BadgeIcon;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 164
    :goto_0
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-static {v1}, Lcom/audible/mobile/stats/domain/Badge;->access$100(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/BadgeIconFetcher;

    move-result-object v1

    invoke-interface {v0}, Lcom/audible/mobile/stats/domain/BadgeIcon;->getBadgeImageId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/audible/mobile/stats/BadgeIconFetcher;->getImageCacheFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-virtual {v1, v0}, Lcom/audible/mobile/stats/domain/Badge;->loadBitmapSynchronous(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 167
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-static {v1}, Lcom/audible/mobile/stats/domain/Badge;->access$100(Lcom/audible/mobile/stats/domain/Badge;)Lcom/audible/mobile/stats/BadgeIconFetcher;

    move-result-object v1

    invoke-interface {v1}, Lcom/audible/mobile/stats/BadgeIconFetcher;->fetchBadgeIcons()Ljava/util/concurrent/FutureTask;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    .line 169
    iget-object v1, p0, Lcom/audible/mobile/stats/domain/Badge$1;->this$0:Lcom/audible/mobile/stats/domain/Badge;

    invoke-virtual {v1, v0}, Lcom/audible/mobile/stats/domain/Badge;->loadBitmapSynchronous(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_2
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 151
    invoke-virtual {p0}, Lcom/audible/mobile/stats/domain/Badge$1;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
