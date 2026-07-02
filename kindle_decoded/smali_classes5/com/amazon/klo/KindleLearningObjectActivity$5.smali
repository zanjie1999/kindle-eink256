.class Lcom/amazon/klo/KindleLearningObjectActivity$5;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

.field final synthetic val$currentBook:Lcom/amazon/kindle/krx/content/IBook;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity;Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    iput-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$700(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/sidecar/SidecarHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->val$currentBook:Lcom/amazon/kindle/krx/content/IBook;

    invoke-virtual {v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->init(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 295
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    new-instance v1, Lcom/amazon/klo/KindleLearningObjectActivity$5$1;

    invoke-direct {v1, p0}, Lcom/amazon/klo/KindleLearningObjectActivity$5$1;-><init>(Lcom/amazon/klo/KindleLearningObjectActivity$5;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
