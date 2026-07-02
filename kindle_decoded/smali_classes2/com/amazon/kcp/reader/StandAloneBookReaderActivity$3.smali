.class Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$3;
.super Landroid/view/View$AccessibilityDelegate;
.source "StandAloneBookReaderActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->addTtsButtonForAccessibility()V
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

    .line 392
    iput-object p1, p0, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity$3;->this$0:Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    .line 395
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    const p2, 0x8000

    if-ne p1, p2, :cond_0

    .line 396
    invoke-static {}, Lcom/amazon/kcp/reader/StandAloneBookReaderActivity;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string p2, "focusing on continuous reading prompt"

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
