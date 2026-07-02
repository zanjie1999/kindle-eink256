.class public Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;
.super Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;
.source "XrayPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/plugin/XrayPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReaderNavigationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/xray/plugin/XrayPlugin;


# direct methods
.method protected constructor <init>(Lcom/amazon/xray/plugin/XrayPlugin;)V
    .locals 0

    .line 360
    iput-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/reader/AbstractReaderNavigationListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterContentClose(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 2

    .line 374
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amazon/xray/plugin/XrayPlugin;->refreshSidecarAndButtonStatus(Lcom/amazon/kindle/krx/content/IBook;)V

    .line 375
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/amazon/xray/plugin/XrayPlugin;->access$102(Lcom/amazon/xray/plugin/XrayPlugin;Z)Z

    .line 376
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-static {p1, v0}, Lcom/amazon/xray/plugin/XrayPlugin;->access$202(Lcom/amazon/xray/plugin/XrayPlugin;Landroid/content/Intent;)Landroid/content/Intent;

    return-void
.end method

.method public onAfterContentOpen(Lcom/amazon/kindle/krx/content/IBook;)V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-virtual {v0, p1}, Lcom/amazon/xray/plugin/XrayPlugin;->refreshSidecarAndButtonStatus(Lcom/amazon/kindle/krx/content/IBook;)V

    const-string v0, "XrayReadingSession"

    .line 368
    invoke-static {p1, v0}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    move-result-object p1

    const-string v0, "BookOpenDuration"

    .line 369
    invoke-virtual {p1, v0}, Lcom/amazon/xray/metrics/Metric;->startTimer(Ljava/lang/String;)V

    return-void
.end method

.method public onAfterNavigation(Lcom/amazon/kindle/krx/content/IBook;Lcom/amazon/kindle/krx/reader/IReaderNavigationListener$NavigationType;)V
    .locals 0

    const-string p2, "XrayReadingSession"

    .line 382
    invoke-static {p1, p2}, Lcom/amazon/xray/metrics/SessionManager;->getSessionMetric(Lcom/amazon/kindle/krx/content/IBook;Ljava/lang/String;)Lcom/amazon/xray/metrics/Metric;

    .line 385
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    invoke-static {p1}, Lcom/amazon/xray/plugin/XrayPlugin;->access$100(Lcom/amazon/xray/plugin/XrayPlugin;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/XrayPlugin;->access$202(Lcom/amazon/xray/plugin/XrayPlugin;Landroid/content/Intent;)Landroid/content/Intent;

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/plugin/XrayPlugin$ReaderNavigationListener;->this$0:Lcom/amazon/xray/plugin/XrayPlugin;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/amazon/xray/plugin/XrayPlugin;->access$102(Lcom/amazon/xray/plugin/XrayPlugin;Z)Z

    :goto_0
    return-void
.end method
