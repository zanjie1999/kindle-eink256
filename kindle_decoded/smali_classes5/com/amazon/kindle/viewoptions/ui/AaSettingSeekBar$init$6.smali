.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;
.super Ljava/lang/Object;
.source "AaSettingSeekBar.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $title:Ljava/lang/String;

.field final synthetic $updateHandler:Lkotlin/jvm/functions/Function2;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->$title:Ljava/lang/String;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->$updateHandler:Lkotlin/jvm/functions/Function2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 232
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    .line 233
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 235
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->$title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->$updateHandler:Lkotlin/jvm/functions/Function2;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$6;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Unit;

    :cond_0
    return-void
.end method
