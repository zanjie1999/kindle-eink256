.class Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem$1;
.super Ljava/lang/Object;
.source "ReadingModeSwitchCommandItem.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;->onDocViewerSettingsChangeEvent(Lcom/amazon/kindle/event/DocViewerSettingsChangeEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$currentActivity:Lcom/amazon/kcp/reader/ReaderActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem;Lcom/amazon/kcp/reader/ReaderActivity;)V
    .locals 0

    .line 118
    iput-object p2, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem$1;->val$currentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/amazon/kindle/dualreadingmode/ReadingModeSwitchCommandItem$1;->val$currentActivity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ReaderActivity;->onReadingModeChange()V

    return-void
.end method
