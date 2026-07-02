.class final Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;
.super Ljava/lang/Object;
.source "RatingAndReviewingController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;->publishHeightChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;


# direct methods
.method constructor <init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;->this$0:Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 957
    new-instance v0, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;

    invoke-direct {v0, p0}, Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1$1;-><init>(Lcom/amazon/readingactions/ui/widget/RatingAndReviewingController$publishHeightChange$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 962
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
