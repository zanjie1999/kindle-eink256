.class final Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder$1;
.super Ljava/lang/Object;
.source "AaSettingListViewBaseViewHolder.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 18
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->getData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/viewoptions/ui/listview/AaSettingListViewBaseViewHolder;->onItemViewClick(Ljava/lang/Object;)V

    return-void
.end method
