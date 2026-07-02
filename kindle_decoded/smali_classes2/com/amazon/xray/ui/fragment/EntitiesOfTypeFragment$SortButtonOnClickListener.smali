.class Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;
.super Ljava/lang/Object;
.source "EntitiesOfTypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SortButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V
    .locals 0

    .line 320
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 323
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    iget-object v2, v1, Lcom/amazon/xray/ui/fragment/XrayFragment;->activity:Lcom/amazon/xray/ui/activity/XrayActivity;

    invoke-static {v1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$800(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$ViewHolder;->sortButton:Landroid/widget/Button;

    invoke-direct {v0, v2, v1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {p1, v0}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$702(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;

    .line 324
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$700(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    sget v1, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_relevance:I

    .line 325
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 324
    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 326
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$700(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    sget v2, Lcom/amazon/kindle/xray/R$string;->xray_sort_by_name:I

    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 327
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$700(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Landroid/widget/PopupMenu;

    move-result-object p1

    new-instance v0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;

    iget-object v1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortOnMenuItemClickListener;-><init>(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$1;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 328
    iget-object p1, p0, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment$SortButtonOnClickListener;->this$0:Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;

    invoke-static {p1}, Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;->access$700(Lcom/amazon/xray/ui/fragment/EntitiesOfTypeFragment;)Landroid/widget/PopupMenu;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->show()V

    return-void
.end method
