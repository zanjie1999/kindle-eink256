.class Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;
.super Ljava/lang/Object;
.source "GraduallyUpdatableCover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/cover/GraduallyUpdatableCover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedTempLocalCovers"
.end annotation


# static fields
.field static tempLocalCovers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->tempLocalCovers:Ljava/util/WeakHashMap;

    return-void
.end method

.method static getCover(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 38
    sget-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->tempLocalCovers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static putCover(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 42
    sget-object v0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$CachedTempLocalCovers;->tempLocalCovers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
