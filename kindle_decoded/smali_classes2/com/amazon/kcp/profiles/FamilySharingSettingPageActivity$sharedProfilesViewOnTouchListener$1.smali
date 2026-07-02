.class final Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;
.super Ljava/lang/Object;
.source "FamilySharingSettingPageActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;->sharedProfilesViewOnTouchListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 75
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;

    const-class v1, Lcom/amazon/kcp/profiles/content/sharing/YourShareableItemsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 76
    iget-object v0, p0, Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity$sharedProfilesViewOnTouchListener$1;->this$0:Lcom/amazon/kcp/profiles/FamilySharingSettingPageActivity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
