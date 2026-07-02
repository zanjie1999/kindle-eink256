.class Lcom/audible/mobile/stats/domain/Badge$2;
.super Ljava/lang/Object;
.source "Badge.java"

# interfaces
.implements Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/audible/mobile/stats/domain/Badge;->getBitmap()Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fetchBadgeBitmapFutureTask:Ljava/util/concurrent/FutureTask;


# direct methods
.method constructor <init>(Lcom/audible/mobile/stats/domain/Badge;Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .line 177
    iput-object p2, p0, Lcom/audible/mobile/stats/domain/Badge$2;->val$fetchBadgeBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/audible/mobile/stats/domain/Badge$2;->val$fetchBadgeBitmapFutureTask:Ljava/util/concurrent/FutureTask;

    invoke-virtual {v0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method
