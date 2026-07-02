.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ReviewBookActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;


# direct methods
.method constructor <init>(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)V
    .locals 0

    .line 292
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    .line 295
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 296
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$1;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    sget v0, Lcom/amazon/kindle/ea/R$string;->endactions_review_accessibility_selected_rating:I

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$000(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;)Landroid/widget/RatingBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RatingBar;->getRating()F

    move-result v2

    float-to-int v2, v2

    .line 296
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
