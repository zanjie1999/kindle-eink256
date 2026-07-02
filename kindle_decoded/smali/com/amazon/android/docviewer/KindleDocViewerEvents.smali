.class public Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.super Ljava/lang/Object;
.source "KindleDocViewerEvents.java"

# interfaces
.implements Lcom/amazon/android/docviewer/IKindleDocViewerEvents;


# static fields
.field public static final PAGE_JUMP:I = 0x0

.field public static final PAGE_NEXT:I = 0x1

.field public static final PAGE_PREVIOUS:I = -0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterSettingsChange()V
    .locals 0

    return-void
.end method

.method public onBeforeSettingsChange()V
    .locals 0

    return-void
.end method

.method public onCurrentPageDrawn()V
    .locals 0

    return-void
.end method

.method public onDocViewerAfterPageTurn()V
    .locals 0

    return-void
.end method

.method public onDocViewerAfterPositionChanged(I)V
    .locals 0

    return-void
.end method

.method public onDocViewerBeforePageTurn()V
    .locals 0

    return-void
.end method

.method public onDocViewerBeforePositionChange(I)V
    .locals 0

    return-void
.end method

.method public onDocViewerClearBack()V
    .locals 0

    return-void
.end method

.method public onDocViewerOpenAnnotation(Lcom/amazon/kindle/model/sync/annotation/IAnnotation;)V
    .locals 0

    return-void
.end method

.method public onDocViewerOpenExternalLink(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDocViewerRefresh()V
    .locals 0

    return-void
.end method

.method public onDocViewerShowBookDetails()V
    .locals 0

    return-void
.end method

.method public onDocViewerWillNavigateBack(J)V
    .locals 0

    return-void
.end method

.method public onNavigationOrSettingsChangeFailed(I)V
    .locals 0

    return-void
.end method

.method public onPageFlowChanged()V
    .locals 0

    return-void
.end method
