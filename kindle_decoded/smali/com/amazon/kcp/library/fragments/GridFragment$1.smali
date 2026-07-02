.class Lcom/amazon/kcp/library/fragments/GridFragment$1;
.super Ljava/lang/Object;
.source "GridFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/GridFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/GridFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/GridFragment;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GridFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/GridFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GridFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/GridFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/GridFragment;->mGrid:Lcom/amazon/kcp/library/fragments/HeaderGridView;

    invoke-virtual {v0, v0}, Landroid/widget/GridView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
