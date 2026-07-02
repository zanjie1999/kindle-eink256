.class Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;
.super Ljava/lang/Object;
.source "GraduallyUpdatableCover.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->setTempCover(Landroid/graphics/drawable/Drawable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

.field final synthetic val$curListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

.field final synthetic val$tmpCover:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;Lcom/amazon/kcp/cover/OnImageUpdateListener;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 132
    iput-object p1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    iput-object p2, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->val$curListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    iput-object p3, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->val$tmpCover:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->this$0:Lcom/amazon/kcp/cover/GraduallyUpdatableCover;

    invoke-static {v0}, Lcom/amazon/kcp/cover/GraduallyUpdatableCover;->access$300(Lcom/amazon/kcp/cover/GraduallyUpdatableCover;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 136
    iget-object v0, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->val$curListener:Lcom/amazon/kcp/cover/OnImageUpdateListener;

    iget-object v1, p0, Lcom/amazon/kcp/cover/GraduallyUpdatableCover$3;->val$tmpCover:Landroid/graphics/drawable/Drawable;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/cover/OnImageUpdateListener;->onUpdate(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
