.class Lcom/amazon/kcp/library/fragments/GalleryFragment$2;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/fragments/GalleryFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/fragments/GalleryFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/fragments/GalleryFragment;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment$2;->this$0:Lcom/amazon/kcp/library/fragments/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment$2;->this$0:Lcom/amazon/kcp/library/fragments/GalleryFragment;

    move-object v1, p1

    check-cast v1, Lcom/amazon/kcp/widget/Gallery;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/kcp/library/fragments/GalleryFragment;->onGalleryItemClick(Lcom/amazon/kcp/widget/Gallery;Landroid/view/View;IJ)V

    return-void
.end method
