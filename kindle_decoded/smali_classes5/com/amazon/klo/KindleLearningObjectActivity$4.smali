.class Lcom/amazon/klo/KindleLearningObjectActivity$4;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;->initHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/klo/KindleLearningObjectActivity;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$400()Lcom/amazon/klo/KLOTutorialProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$500(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/IKLOHeaderBar;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/klo/IKLOHeaderBar;->getSelectedChapterPosition()I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$600(Lcom/amazon/klo/KindleLearningObjectActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$700(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/sidecar/SidecarHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$500(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/IKLOHeaderBar;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/klo/IKLOHeaderBar;->getSelectedChapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amazon/klo/sidecar/SidecarHandler;->getSelectorTerms(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 202
    invoke-static {}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$400()Lcom/amazon/klo/KLOTutorialProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/amazon/klo/KLOTutorialProvider;->onXrayOpened(I)V

    .line 203
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$4;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$602(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z

    :cond_0
    return-void
.end method
