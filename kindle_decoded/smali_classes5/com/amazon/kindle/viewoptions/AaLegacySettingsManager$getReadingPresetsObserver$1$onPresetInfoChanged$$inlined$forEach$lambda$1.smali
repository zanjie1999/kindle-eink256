.class final Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;
.super Lkotlin/jvm/internal/Lambda;
.source "AaLegacySettingsManager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->onPresetInfoChanged(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $aaSetting$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

.field final synthetic $model:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->$model:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->$aaSetting$inlined:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1073
    invoke-virtual {p0}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->invoke()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Ljava/lang/String;
    .locals 3

    .line 1147
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->$model:Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;

    iget-object v1, v1, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {v1}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1$onPresetInfoChanged$$inlined$forEach$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;

    iget-object v2, v2, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager$getReadingPresetsObserver$1;->this$0:Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/AaLegacySettingsManager;->getDocViewer()Lcom/amazon/android/docviewer/KindleDocViewer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kindle/viewoptions/readingprogress/ReadingProgressModel;->getStateText(Landroid/content/Context;Lcom/amazon/android/docviewer/KindleDocViewer;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
