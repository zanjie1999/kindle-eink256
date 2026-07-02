.class Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$3;
.super Ljava/lang/Object;
.source "PageFlipFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->onFragmentShown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;)V
    .locals 0

    .line 397
    iput-object p1, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$3;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 400
    iget-object v0, p0, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment$3;->this$0:Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 401
    invoke-static {}, Lcom/amazon/kindle/nln/pageflip/PageFlipFragment;->updateBreadcrumbShift()V

    return-void
.end method
