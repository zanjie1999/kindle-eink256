.class public Lcom/amazon/kcp/cover/UpdatableCover;
.super Ljava/lang/Object;
.source "UpdatableCover.java"

# interfaces
.implements Lcom/amazon/kindle/cover/ICover;


# instance fields
.field private final coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

.field private coverFileName:Ljava/lang/String;

.field private future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;

.field private image:Landroid/graphics/drawable/Drawable;

.field protected isMutable:Z

.field protected listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Ljava/lang/String;II)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 41
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    .line 53
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    .line 54
    iput-object p2, p0, Lcom/amazon/kcp/cover/UpdatableCover;->id:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxWidth:I

    .line 56
    iput p4, p0, Lcom/amazon/kcp/cover/UpdatableCover;->maxHeight:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Ljava/lang/String;II)V

    return-void
.end method

.method private makeImmutable()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    return-void
.end method

.method private setCoverFileName(Ljava/lang/String;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->coverFileName:Ljava/lang/String;

    return-void
.end method

.method private setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->image:Landroid/graphics/drawable/Drawable;

    .line 100
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->notifyListener()V

    return-void
.end method


# virtual methods
.method public cancelUpdates()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->coverCache:Lcom/amazon/kcp/cover/ICoverCacheManager;

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {v0, p0}, Lcom/amazon/kcp/cover/ICoverCacheManager;->cancel(Lcom/amazon/kcp/cover/UpdatableCover;)V

    :cond_0
    const/4 v0, 0x0

    .line 91
    iput-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    return-void
.end method

.method public finalizeCover(Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-direct {p0, p1}, Lcom/amazon/kcp/cover/UpdatableCover;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 146
    invoke-direct {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->makeImmutable()V

    .line 147
    invoke-direct {p0, p2}, Lcom/amazon/kcp/cover/UpdatableCover;->setCoverFileName(Ljava/lang/String;)V

    return-void
.end method

.method public getBookid()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getCoverId()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverSize()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCoverType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->coverFileName:Ljava/lang/String;

    return-object v0
.end method

.method getFuture()Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->future:Ljava/util/concurrent/Future;

    return-object v0
.end method

.method public getLastRetryDate()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isTmpCover()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyListener()V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    if-eqz v0, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->image:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/cover/OnImageUpdateListener;->onUpdate(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 79
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->notifyListener()V

    return-void
.end method
