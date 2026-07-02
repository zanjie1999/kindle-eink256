.class Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$5;
.super Ljava/lang/Object;
.source "StandaloneFontOptionData.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;->inflateFontManageView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$5;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 598
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_0

    .line 599
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData$5;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneFontOptionData;

    iget-object p2, p2, Lcom/amazon/kcp/reader/ui/ViewOptionData;->context:Landroid/content/Context;

    const-class v0, Lcom/amazon/kcp/reader/LargeFontsActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 600
    invoke-static {}, Lcom/amazon/kcp/application/AndroidApplicationController;->getInstance()Lcom/amazon/kcp/application/IAndroidApplicationController;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kcp/application/IAndroidApplicationController;->getCurrentReaderActivity()Lcom/amazon/kcp/reader/ReaderActivity;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
