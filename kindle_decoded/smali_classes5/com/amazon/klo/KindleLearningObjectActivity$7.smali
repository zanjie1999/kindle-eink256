.class Lcom/amazon/klo/KindleLearningObjectActivity$7;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;->loadContent(Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;)V
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

    .line 517
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 521
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$1000(Lcom/amazon/klo/KindleLearningObjectActivity;I)V

    .line 522
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$1102(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z

    .line 523
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$002(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z

    .line 524
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$300(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/list/TermListView;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$7;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$1200(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/list/TermListView$OnScrollListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/klo/list/TermListView;->setOnScrollChangedListener(Lcom/amazon/klo/list/TermListView$OnScrollListener;)V

    return-void
.end method
