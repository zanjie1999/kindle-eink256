.class Lcom/amazon/kcp/reader/ReaderActivity$35;
.super Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
.source "ReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ReaderActivity;->getReadingPresetsObserver()Lcom/amazon/ksdk/presets/ReadingPresetsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 5264
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Lcom/amazon/ksdk/presets/ReadingPresetsObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onAaSettingsChanged(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amazon/ksdk/presets/AaSettingType;",
            ">;)V"
        }
    .end annotation

    .line 5276
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v0

    .line 5277
    invoke-virtual {v0}, Lcom/amazon/kcp/application/UserSettingsController;->isContinuousScrollChangedForAccessibility()Z

    move-result v1

    .line 5278
    iget-object v2, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_e

    if-eqz v1, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz p1, :cond_d

    .line 5287
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5288
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5289
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5294
    :cond_1
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5295
    sget-object v1, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5298
    :cond_2
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3100(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 5299
    iget-object v1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3200(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->markBatchSettingsChange(Z)V

    .line 5302
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amazon/ksdk/presets/AaSettingType;

    .line 5303
    sget-object v5, Lcom/amazon/ksdk/presets/AaSettingType;->PAGE_COLOR_MODE:Lcom/amazon/ksdk/presets/AaSettingType;

    if-ne v4, v5, :cond_4

    .line 5308
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/kcp/application/UserSettingsController;->getIsPageColorMatchingSystemTheme()Z

    move-result v3

    xor-int/2addr v3, v2

    goto :goto_3

    .line 5309
    :cond_4
    sget-object v5, Lcom/amazon/ksdk/presets/AaSettingType;->CONTINUOUS_SCROLLING:Lcom/amazon/ksdk/presets/AaSettingType;

    if-eq v4, v5, :cond_8

    sget-object v5, Lcom/amazon/ksdk/presets/AaSettingType;->SHOW_MEDIA:Lcom/amazon/ksdk/presets/AaSettingType;

    if-ne v4, v5, :cond_5

    goto :goto_2

    .line 5312
    :cond_5
    sget-object v5, Lcom/amazon/ksdk/presets/AaSettingType;->SYSTEM_THEME_FOR_PAGE_COLOR:Lcom/amazon/ksdk/presets/AaSettingType;

    if-ne v4, v5, :cond_9

    .line 5313
    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3300(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v3}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3400(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v3

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    .line 5314
    :goto_1
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getUserSettingsController()Lcom/amazon/kcp/application/UserSettingsController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/amazon/kcp/application/UserSettingsController;->getColorMode()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v5

    if-eq v3, v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v3, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    const/4 v3, 0x1

    .line 5318
    :cond_9
    :goto_3
    invoke-static {v4}, Lcom/amazon/kindle/viewoptions/utils/AaTypeMappingUtils;->ksdkSettingTypeToReaderSettingType(Lcom/amazon/ksdk/presets/AaSettingType;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 5321
    iget-object v4, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {v4, v5}, Lcom/amazon/kcp/reader/ReaderActivity;->access$100(Lcom/amazon/kcp/reader/ReaderActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 5323
    :cond_a
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivity;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Detected invalid aa setting type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5327
    :cond_b
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3500(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 5328
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3600(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->applySettingsImmediately()Z

    .line 5329
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->access$3700(Lcom/amazon/kcp/reader/ReaderActivity;)Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/amazon/android/docviewer/KindleDocViewer;->markBatchSettingsChange(Z)V

    :cond_c
    if-eqz v3, :cond_d

    .line 5333
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    iput-boolean v2, p1, Lcom/amazon/kcp/reader/ReaderActivity;->isRestartingForSettingChange:Z

    const-string v1, ""

    .line 5334
    invoke-virtual {p1, v1, v0}, Lcom/amazon/kcp/reader/ReaderActivity;->restartActivity(Ljava/lang/String;Lcom/amazon/kcp/application/UserSettingsController;)V

    .line 5335
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$35;->this$0:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/ReaderActivity;->finish()V

    :cond_d
    return-void

    .line 5279
    :cond_e
    :goto_4
    invoke-static {}, Lcom/amazon/kcp/reader/ReaderActivity;->access$300()Ljava/lang/String;

    return-void
.end method

.method public onPresetInfoChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onPresetsListChanged()V
    .locals 0

    return-void
.end method
