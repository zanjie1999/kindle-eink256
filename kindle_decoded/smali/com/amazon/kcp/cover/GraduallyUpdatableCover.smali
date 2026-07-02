.class public Lcom/amazon/kcp/cover/GraduallyUpdatableCover;
.super Lcom/amazon/kcp/cover/UpdatableCover;
.source "GraduallyUpdatableCover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final UI_HANDLER:Landroid/os/Handler;


# instance fields
.field private final book:Lcom/amazon/kcp/library/ILibraryDisplayItem;

.field private final bookId:Lcom/amazon/kindle/model/content/IBookID;

.field private final isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->UI_HANDLER:Landroid/os/Handler;

    .line 29
    const-class v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kcp/library/ILibraryDisplayItem;II)V
    .locals 1

    .line 62
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Ljava/lang/String;II)V

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 63
    invoke-interface {p2}, Lcom/amazon/kcp/library/ILibraryDisplayItem;->getCoverBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    .line 64
    iput-object p2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->book:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-void
.end method

.method constructor <init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Lcom/amazon/kindle/model/content/IBookID;II)V
    .locals 1

    .line 55
    invoke-interface {p2}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3, p4}, Lcom/amazon/kcp/cover/UpdatableCover;-><init>(Lcom/amazon/kcp/cover/ICoverCacheManager;Ljava/lang/String;II)V

    .line 32
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    iput-object p2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->book:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 27
    sget-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kcp/library/ILibraryDisplayItem;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->book:Lcom/amazon/kcp/library/ILibraryDisplayItem;

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Lcom/amazon/kindle/model/content/IBookID;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->bookId:Lcom/amazon/kindle/model/content/IBookID;

    return-object p0
.end method

.method static synthetic access$300(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method genTempLocalCoverAsync(Lcom/amazon/kindle/cover/ImageSizes$Type;)V
    .locals 2

    .line 74
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {p0, v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->setTempCover(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;

    invoke-direct {v0, p0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$1;-><init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Lcom/amazon/kindle/cover/ImageSizes$Type;)V

    .line 110
    sget-object p1, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->UI_HANDLER:Landroid/os/Handler;

    new-instance v1, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$2;

    invoke-direct {v1, p0, v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$2;-><init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Landroid/os/AsyncTask;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isTmpCover()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method protected notifyListener()V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 150
    invoke-super {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->notifyListener()V

    return-void
.end method

.method public setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V
    .locals 0

    .line 143
    invoke-super {p0, p1}, Lcom/amazon/kcp/cover/UpdatableCover;->setOnUpdateListener(Lcom/amazon/kcp/cover/OnImageUpdateListener;)V

    .line 144
    invoke-virtual {p0}, Lcom/amazon/kcp/cover/UpdatableCover;->getBookid()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->setTempCover(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setTempCover(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 123
    iget-object v0, p0, Lcom/amazon/kcp/cover/UpdatableCover;->listener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    .line 124
    iget-boolean v1, p0, Lcom/amazon/kcp/cover/UpdatableCover;->isMutable:Z

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 128
    iget-object v1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->isTmpCover:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 129
    invoke-interface {v0, p1}, Lcom/amazon/kcp/cover/OnImageUpdateListener;->onUpdate(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 132
    :cond_1
    sget-object v1, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->UI_HANDLER:Landroid/os/Handler;

    new-instance v2, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;-><init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Lcom/amazon/kcp/cover/OnImageUpdateListener;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
