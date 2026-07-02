.class Lcom/amazon/klo/KindleLearningObjectActivity$5$1;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/klo/KindleLearningObjectActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/klo/KindleLearningObjectActivity$5;


# direct methods
.method constructor <init>(Lcom/amazon/klo/KindleLearningObjectActivity$5;)V
    .locals 0

    .line 296
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5$1;->this$1:Lcom/amazon/klo/KindleLearningObjectActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$5$1;->this$1:Lcom/amazon/klo/KindleLearningObjectActivity$5;

    iget-object v0, v0, Lcom/amazon/klo/KindleLearningObjectActivity$5;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {v0}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$800(Lcom/amazon/klo/KindleLearningObjectActivity;)Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$900(Lcom/amazon/klo/KindleLearningObjectActivity;Lcom/amazon/klo/KindleLearningObjectActivity$ActivityState;)V

    return-void
.end method
