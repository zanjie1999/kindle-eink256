.class Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$6;
.super Ljava/lang/Object;
.source "AutomaticUpdatePanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$6;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity$6;->this$0:Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/activity/AutomaticUpdatePanelActivity;->createAutoSettingDisabledDialog()V

    return-void
.end method
