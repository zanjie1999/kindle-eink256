.class Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;
.super Ljava/lang/Object;
.source "NonLinearSeekerDecoration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->onStopTrackingTouch(Landroid/widget/SeekBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Landroid/widget/SeekBar;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    iput-object p2, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/amazon/kcp/reader/AudibleHelper;->isReaderInAudibleMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;->this$0:Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;

    iget-object v1, p0, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration$1;->val$seekBar:Landroid/widget/SeekBar;

    invoke-static {v0, v1}, Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;->access$000(Lcom/amazon/kindle/nln/NonLinearSeekerDecoration;Landroid/widget/SeekBar;)V

    :cond_1
    return-void
.end method
