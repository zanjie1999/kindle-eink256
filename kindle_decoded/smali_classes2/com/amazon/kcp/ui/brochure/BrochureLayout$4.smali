.class Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;
.super Ljava/lang/Object;
.source "BrochureLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureLayout;->initializeActionButton(Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

.field final synthetic val$listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureLayout;Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    iput-object p2, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;->val$listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 333
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;->val$listener:Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;

    if-eqz p1, :cond_0

    .line 334
    iget-object v0, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v0}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$1100(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Lcom/amazon/kcp/ui/brochure/BrochureAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/ui/brochure/BrochureLayout$4;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureLayout;

    invoke-static {v1}, Lcom/amazon/kcp/ui/brochure/BrochureLayout;->access$000(Lcom/amazon/kcp/ui/brochure/BrochureLayout;)Landroidx/viewpager/widget/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/kcp/ui/brochure/BrochureAdapter;->getSlide(I)Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/brochure/BrochureOptions$BrochureListener;->performAction(Lcom/amazon/kindle/krx/ui/brochure/IBrochureSlide;)V

    :cond_0
    return-void
.end method
