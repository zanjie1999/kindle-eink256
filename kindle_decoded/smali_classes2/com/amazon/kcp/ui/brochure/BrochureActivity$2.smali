.class Lcom/amazon/kcp/ui/brochure/BrochureActivity$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BrochureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/ui/brochure/BrochureActivity;->finishAmazingly()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/ui/brochure/BrochureActivity;)V
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity$2;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 306
    iget-object p1, p0, Lcom/amazon/kcp/ui/brochure/BrochureActivity$2;->this$0:Lcom/amazon/kcp/ui/brochure/BrochureActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/ui/brochure/BrochureActivity;->finish()V

    return-void
.end method
