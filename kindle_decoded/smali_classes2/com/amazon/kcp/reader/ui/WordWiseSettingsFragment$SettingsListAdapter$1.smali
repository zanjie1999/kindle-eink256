.class Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;
.super Ljava/lang/Object;
.source "WordWiseSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;

.field final synthetic val$checkbox:Landroid/widget/Checkable;

.field final synthetic val$checkboxView:Landroid/view/View;

.field final synthetic val$item:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    iput-object p3, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$checkbox:Landroid/widget/Checkable;

    iput-object p4, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$checkboxView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 227
    iget-object p1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;

    iget-object p1, p1, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;

    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;

    iget-object v1, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$checkbox:Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsListAdapter$1;->val$checkboxView:Landroid/view/View;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;->access$300(Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment;Lcom/amazon/kcp/reader/ui/WordWiseSettingsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    return-void
.end method
