.class public final Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;
.super Ljava/lang/Object;
.source "AaSettingListViewAdapter.kt"

# interfaces
.implements Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$ItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;-><init>(Ljava/util/List;Lcom/amazon/kindle/viewoptions/ui/listview/ViewHolderManager$ViewHolderType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 23
    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->access$startPerformanceMeasure(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)V

    .line 26
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-static {p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->access$getCurrentSelectedPosition$p(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 27
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter$onItemClickListener$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;

    invoke-static {p1, p2}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;->access$setCurrentSelectedPosition$p(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewAdapter;I)V

    return-void
.end method
