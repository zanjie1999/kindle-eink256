.class Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;
.super Ljava/lang/Object;
.source "BookUpdateSettingsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->onUpdateSettingActive(Lcom/amazon/versioning/data/UpdateSetting;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->updateAutoUpdateSettingValue()V

    .line 212
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity$3;->this$0:Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;

    invoke-virtual {v0}, Lcom/amazon/versioning/reader/ui/activity/BookUpdateSettingsActivity;->showSettingView()V

    return-void
.end method
