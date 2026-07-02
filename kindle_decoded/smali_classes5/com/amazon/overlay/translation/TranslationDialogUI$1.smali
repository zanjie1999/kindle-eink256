.class Lcom/amazon/overlay/translation/TranslationDialogUI$1;
.super Ljava/lang/Object;
.source "TranslationDialogUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/overlay/translation/TranslationDialogUI;->setOnTouchListenerToScrollView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/overlay/translation/TranslationDialogUI;


# direct methods
.method constructor <init>(Lcom/amazon/overlay/translation/TranslationDialogUI;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI$1;->this$0:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 198
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 200
    iget-object p1, p0, Lcom/amazon/overlay/translation/TranslationDialogUI$1;->this$0:Lcom/amazon/overlay/translation/TranslationDialogUI;

    invoke-static {p1}, Lcom/amazon/overlay/translation/TranslationDialogUI;->access$000(Lcom/amazon/overlay/translation/TranslationDialogUI;)Landroid/widget/ScrollView;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
