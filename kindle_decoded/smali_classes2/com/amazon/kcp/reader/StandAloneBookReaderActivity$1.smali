.class Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;
.super Lcom/amazon/android/docviewer/KindleDocViewerEvents;
.source "StandAloneBookReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-direct {p0}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;-><init>()V

    return-void
.end method


# virtual methods
.method public onDocViewerAfterPositionChanged(I)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;->onDocViewerAfterPositionChanged(I)V

    .line 88
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-static {p1}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->access$000(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-static {p1}, Lcom/amazon/android/menu/InvalidateOptionsMenuReflect;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 93
    iget-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$1;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->access$002(Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;Z)Z

    :cond_0
    return-void
.end method

.method public onDocViewerBeforePositionChange(I)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/amazon/android/docviewer/KindleDocViewerEvents;->onDocViewerBeforePositionChange(I)V

    .line 80
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 81
    :cond_0
    invoke-static {}, Lcom/amazon/kcp/sounds/PageTurnSound;->playSound()V

    :cond_1
    return-void
.end method
