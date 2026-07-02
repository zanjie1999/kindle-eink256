.class Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;
.super Ljava/lang/Object;
.source "ReviewBookActivity.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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

    .line 474
    iput-object p1, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x1

    const/16 p3, 0x8

    if-ne p2, p3, :cond_0

    .line 478
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    invoke-static {p2, p1, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    goto :goto_0

    :cond_0
    const/16 p3, 0x9

    if-ne p2, p3, :cond_1

    .line 480
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    goto :goto_0

    :cond_1
    const/16 p3, 0xa

    if-ne p2, p3, :cond_2

    .line 482
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    goto :goto_0

    :cond_2
    const/16 p3, 0xb

    if-ne p2, p3, :cond_3

    .line 484
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    goto :goto_0

    :cond_3
    const/16 p3, 0xc

    if-ne p2, p3, :cond_4

    .line 486
    iget-object p2, p0, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity$5;->this$0:Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;

    const/4 p3, 0x5

    invoke-static {p2, p3, p1}, Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;->access$900(Lcom/amazon/ea/ui/widget/ratingandreview/ReviewBookActivity;IZ)V

    :goto_0
    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method
