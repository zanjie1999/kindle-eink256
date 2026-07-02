.class Lcom/amazon/kcp/library/ui/BookCoverView$1;
.super Ljava/lang/Object;
.source "BookCoverView.java"

# interfaces
.implements Lcom/amazon/kcp/cover/OnImageUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/ui/BookCoverView;->resetUpdatableCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/ui/BookCoverView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/ui/BookCoverView;)V
    .locals 0

    .line 281
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {v0}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$100(Lcom/amazon/kcp/library/ui/BookCoverView;)Lcom/amazon/kcp/library/ui/Cover;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/ui/Cover;->setCoverImage(Landroid/graphics/drawable/Drawable;)V

    .line 285
    iget-object v0, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v0, p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$202(Lcom/amazon/kcp/library/ui/BookCoverView;Z)Z

    .line 286
    iget-object p1, p0, Lcom/amazon/kcp/library/ui/BookCoverView$1;->this$0:Lcom/amazon/kcp/library/ui/BookCoverView;

    invoke-static {p1}, Lcom/amazon/kcp/library/ui/BookCoverView;->access$300(Lcom/amazon/kcp/library/ui/BookCoverView;)V

    return-void
.end method
