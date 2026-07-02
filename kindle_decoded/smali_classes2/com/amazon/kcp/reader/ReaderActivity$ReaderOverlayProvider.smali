.class Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;
.super Ljava/lang/Object;
.source "ReaderActivity.java"

# interfaces
.implements Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidgetProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/ReaderActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReaderOverlayProvider"
.end annotation


# instance fields
.field private readerPluginOverlay:Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;)V
    .locals 0

    .line 349
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 350
    iput-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;->readerPluginOverlay:Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;

    return-void
.end method


# virtual methods
.method public get(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;
    .locals 1

    .line 355
    invoke-virtual {p1}, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "READER_PLUGIN_OVERLAY_STUB"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 356
    iget-object p1, p0, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;->readerPluginOverlay:Lcom/amazon/kcp/reader/ReaderActivity$ReaderPluginOverlay;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 346
    check-cast p1, Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;

    invoke-virtual {p0, p1}, Lcom/amazon/kcp/reader/ReaderActivity$ReaderOverlayProvider;->get(Lcom/amazon/kindle/krx/ui/customwidget/CustomWidgetState;)Lcom/amazon/kindle/krx/ui/customwidget/ICustomWidget;

    move-result-object p1

    return-object p1
.end method
