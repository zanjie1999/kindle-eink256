.class Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity$1;
.super Ljava/lang/Object;
.source "SubcategorySelectionActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;

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

    .line 70
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;

    invoke-static {p1, p3}, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->access$000(Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;I)V

    return-void
.end method
