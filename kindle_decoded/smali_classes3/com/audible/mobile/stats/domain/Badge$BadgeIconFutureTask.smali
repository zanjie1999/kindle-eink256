.class public interface abstract Lcom/audible/mobile/stats/domain/Badge$BadgeIconFutureTask;
.super Ljava/lang/Object;
.source "Badge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/audible/mobile/stats/domain/Badge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BadgeIconFutureTask"
.end annotation


# virtual methods
.method public abstract get()Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation
.end method
