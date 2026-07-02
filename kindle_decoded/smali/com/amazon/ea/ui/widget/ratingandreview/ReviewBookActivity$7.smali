.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$7;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->bindRatingBar()V
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

    .line 504
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 507
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const/4 v0, 0x1

    const-string v1, "ClearedRating"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 508
    sget-object p1, Lcom/amazon/ea/metrics/M;->session:Lcom/amazon/ea/metrics/Profiler;

    const-string v1, "DidAnything"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/ea/metrics/Profiler;->condSet(ZLjava/lang/String;)Z

    .line 509
    iget-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$7;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    return-void
.end method
