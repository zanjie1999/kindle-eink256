.class Lcom/amazon/klo/KindleLearningObjectActivity$2;
.super Ljava/lang/Object;
.source "KindleLearningObjectActivity.java"

# interfaces
.implements Lcom/amazon/klo/IKLOHeaderBar$IKLOOnNavigationMenuItemClickListener;


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

    .line 111
    iput-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$2;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationMenuItemClick(Ljava/lang/String;I)Z
    .locals 2

    .line 115
    invoke-static {}, Lcom/amazon/klo/KLOMetricManager;->markFilterSelectionChanged()V

    .line 116
    iget-object v0, p0, Lcom/amazon/klo/KindleLearningObjectActivity$2;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    const/4 v1, 0x0

    invoke-static {v0, p2, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$100(Lcom/amazon/klo/KindleLearningObjectActivity;IZ)Z

    .line 117
    iget-object p2, p0, Lcom/amazon/klo/KindleLearningObjectActivity$2;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {p2, p1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$202(Lcom/amazon/klo/KindleLearningObjectActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    iget-object p1, p0, Lcom/amazon/klo/KindleLearningObjectActivity$2;->this$0:Lcom/amazon/klo/KindleLearningObjectActivity;

    invoke-static {p1, v1}, Lcom/amazon/klo/KindleLearningObjectActivity;->access$002(Lcom/amazon/klo/KindleLearningObjectActivity;Z)Z

    const/4 p1, 0x1

    return p1
.end method
