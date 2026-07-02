.class Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;
.super Ljava/lang/Object;
.source "KindleLearningObjectDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 493
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;->this$1:Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;->this$1:Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;

    iget-object v0, v0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6;->this$0:Lcom/amazon/klo/KindleLearningObjectDetailActivity;

    sget v1, Lcom/amazon/klo/R$id;->klo_video_content:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    .line 498
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 499
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 500
    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectDetailActivity$6$1;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
