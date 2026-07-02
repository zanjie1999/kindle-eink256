.class Lcom/amazon/kcp/cover/BadgeableCover$1;
.super Ljava/lang/Object;
.source "BadgeableCover.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/cover/BadgeableCover;->setUpdatableCover(Lcom/amazon/kcp/cover/UpdatableCover;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/cover/BadgeableCover;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/cover/BadgeableCover;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$1;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/amazon/kcp/cover/BadgeableCover$1;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/cover/BadgeableCover;->setCoverDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 225
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$1;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->updateBadges()V

    .line 226
    iget-object p1, p0, Lcom/amazon/kcp/cover/BadgeableCover$1;->this$0:Lcom/amazon/kcp/cover/BadgeableCover;

    invoke-virtual {p1}, Lcom/amazon/kcp/cover/BadgeableCover;->notifyDoneUpdate()V

    return-void
.end method
