.class final Lcom/amazon/kcp/home/widget/OldWebViewWidget$onThemeChangedEvent$1;
.super Ljava/lang/Object;
.source "OldWebViewWidget.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/OldWebViewWidget;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/OldWebViewWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$onThemeChangedEvent$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/OldWebViewWidget$onThemeChangedEvent$1;->this$0:Lcom/amazon/kcp/home/widget/OldWebViewWidget;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/amazon/kcp/home/widget/OldWebViewWidget;->loadWebPage$default(Lcom/amazon/kcp/home/widget/OldWebViewWidget;ZILjava/lang/Object;)V

    return-void
.end method
