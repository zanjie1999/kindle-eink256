.class Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;
.super Ljava/lang/Object;
.source "DebugSettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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

    .line 104
    iget-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object p1, p1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 106
    iget-object p2, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;->this$0:Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    iget-object p3, p2, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailView:Landroid/widget/ExpandableListView;

    iget-object p4, p2, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailsListAdapterFactory:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

    invoke-virtual {p4, p2, p1}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
