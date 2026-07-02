.class Lcom/amazon/klo/KindleLearningObjectActivity$1;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Lcom/amazon/klo/list/TermListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/klo/KindleLearningObjectActivity;
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

    .line 102
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$1;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(Lcom/amazon/klo/list/TermListView;IIII)V
    .locals 0

    .line 106
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$1;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$002(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z

    return-void
.end method
