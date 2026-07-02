.class Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$5;
.super Ljava/lang/Object;
.source "SocialSharingActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
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

    .line 565
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$5;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 568
    invoke-static {}, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;->access$000()Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity$5;->this$0:Lcom/amazon/kindle/socialsharing/ui/activity/SocialSharingActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
