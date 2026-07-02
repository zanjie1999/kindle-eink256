.class public Lcom/amazon/e3oseventhandler/EditTextEventHandler;
.super Lcom/amazon/e3oseventhandler/BasePaginationHandler;
.source "EditTextEventHandler.java"


# static fields
.field private static final DEFAULT_SCROLL_PERCENT:F = 0.5f

.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.e3oseventhandler.EditTextEventHandler"


# instance fields
.field private mEditText:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;-><init>(Landroid/view/View;)V

    .line 41
    move-object v0, p1

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->mEditText:Landroid/widget/EditText;

    .line 42
    new-instance v1, Lcom/amazon/e3oseventhandler/EditTextEventHandler$1;

    invoke-direct {v1, p0}, Lcom/amazon/e3oseventhandler/EditTextEventHandler$1;-><init>(Lcom/amazon/e3oseventhandler/EditTextEventHandler;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    .line 55
    invoke-virtual {p0, p1}, Lcom/amazon/e3oseventhandler/BasePaginationHandler;->setWidgetView(Landroid/view/View;)V

    return-void
.end method

.method private fling(F)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int p1, v0

    .line 95
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->mEditText:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/widget/EditText;->scrollBy(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleFlingEvent(Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;)V
    .locals 3

    .line 74
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Forward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    if-ne p1, v0, :cond_0

    const/high16 p1, 0x3f000000    # 0.5f

    .line 75
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->fling(F)V

    goto :goto_0

    .line 76
    :cond_0
    sget-object v0, Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;->Backward:Lcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollDirection;

    if-ne p1, v0, :cond_1

    const/high16 p1, -0x41000000    # -0.5f

    .line 77
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->fling(F)V

    goto :goto_0

    .line 79
    :cond_1
    sget-object v0, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown scroll direction : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method protected handleFlingEventByPercentage(F)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/amazon/e3oseventhandler/EditTextEventHandler;->fling(F)V

    return-void
.end method

.method protected handleJump(FLcom/amazon/e3oseventhandler/BasePaginationHandler$ScrollAxis;)V
    .locals 0

    return-void
.end method

.method public setWidgetViewInternal(Landroid/view/View;)V
    .locals 0

    return-void
.end method
