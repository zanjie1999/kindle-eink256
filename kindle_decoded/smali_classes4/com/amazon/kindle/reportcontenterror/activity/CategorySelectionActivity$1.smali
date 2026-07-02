.class Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity$1;
.super Ljava/lang/Object;
.source "CategorySelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 68
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;

    invoke-static {p1, p3}, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->access$000(Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;I)V

    return-void
.end method
