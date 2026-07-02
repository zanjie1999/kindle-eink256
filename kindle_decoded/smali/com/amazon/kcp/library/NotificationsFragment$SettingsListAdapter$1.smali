.class Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;
.super Ljava/lang/Object;
.source "NotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->populateCheckboxView(Landroid/view/View;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

.field final synthetic val$checkbox:Landroid/widget/Checkable;

.field final synthetic val$checkboxView:Landroid/view/View;

.field final synthetic val$item:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    iput-object p2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    iput-object p3, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$checkbox:Landroid/widget/Checkable;

    iput-object p4, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$checkboxView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 397
    iget-object p1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->this$1:Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;

    iget-object p1, p1, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter;->this$0:Lcom/amazon/kcp/library/NotificationsFragment;

    iget-object v0, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$item:Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;

    iget-object v1, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$checkbox:Landroid/widget/Checkable;

    iget-object v2, p0, Lcom/amazon/kcp/library/NotificationsFragment$SettingsListAdapter$1;->val$checkboxView:Landroid/view/View;

    invoke-static {p1, v0, v1, v2}, Lcom/amazon/kcp/library/NotificationsFragment;->access$300(Lcom/amazon/kcp/library/NotificationsFragment;Lcom/amazon/kcp/library/NotificationsFragment$SettingsItem;Landroid/widget/Checkable;Landroid/view/View;)V

    return-void
.end method
