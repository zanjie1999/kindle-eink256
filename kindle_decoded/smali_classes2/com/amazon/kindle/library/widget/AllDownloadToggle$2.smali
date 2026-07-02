.class Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;
.super Ljava/lang/Object;
.source "AllDownloadToggle.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/library/widget/AllDownloadToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/library/widget/AllDownloadToggle;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/amazon/kindle/library/widget/AllDownloadToggle$2;->this$0:Lcom/amazon/kindle/library/widget/AllDownloadToggle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 55
    check-cast p1, Landroid/widget/ToggleButton;

    .line 56
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 67
    invoke-static {}, Lcom/amazon/kindle/library/widget/AllDownloadToggle;->access$200()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Detected invalid action "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/amazon/kindle/log/Log;->warn(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {p1, v1}, Landroid/widget/ToggleButton;->setPressed(Z)V

    .line 64
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1, v2}, Landroid/widget/ToggleButton;->setPressed(Z)V

    :goto_0
    return v1
.end method
