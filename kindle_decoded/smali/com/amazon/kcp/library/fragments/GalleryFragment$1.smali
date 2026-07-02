.class Lcom/amazon/kcp/library/fragments/GalleryFragment$1;
.super Ljava/lang/Object;
.source "GalleryFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 54
    iput-object p1, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/GalleryFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/amazon/kcp/library/fragments/GalleryFragment$1;->this$0:Lcom/amazon/kcp/library/fragments/GalleryFragment;

    iget-object v0, v0, Lcom/amazon/kcp/library/fragments/GalleryFragment;->mGallery:Lcom/amazon/kcp/widget/Gallery;

    invoke-virtual {v0, v0}, Landroid/widget/AdapterView;->focusableViewAvailable(Landroid/view/View;)V

    return-void
.end method
