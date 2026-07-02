.class Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$3;
.super Ljava/lang/Object;
.source "SocialSharingActivity.java"

# interfaces
.implements Lcom/amazon/kindle/socialsharing/ui/activity/BaseAlertDialogFragment$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->showGenericErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;)V
    .locals 0

    .line 344
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$3;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlertDialogFragmentDetached(Landroid/app/Activity;)V
    .locals 0

    .line 347
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
