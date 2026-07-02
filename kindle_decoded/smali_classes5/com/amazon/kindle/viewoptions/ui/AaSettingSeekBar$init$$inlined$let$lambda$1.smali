.class public final Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "AaSettingSeekBar.kt"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $identifier$inlined:Ljava/lang/Integer;

.field final synthetic $tickMarksEnabled$inlined:Z

.field final synthetic $title$inlined:Ljava/lang/String;

.field final synthetic $updateHandler$inlined:Lkotlin/jvm/functions/Function2;

.field final synthetic $updateInProgress$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;Ljava/lang/Integer;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/functions/Function2;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$identifier$inlined:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$updateInProgress$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p4, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$updateHandler$inlined:Lkotlin/jvm/functions/Function2;

    iput-boolean p5, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$tickMarksEnabled$inlined:Z

    iput-object p6, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$title$inlined:Ljava/lang/String;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 159
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {p3}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object p3

    invoke-virtual {p3}, Landroid/widget/SeekBar;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string/jumbo v0, "theme_change"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    xor-int/2addr p3, v0

    if-eqz p3, :cond_2

    .line 160
    sget-object p3, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$identifier$inlined:Ljava/lang/Integer;

    invoke-virtual {p3, v1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->interfaceUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 161
    invoke-static {p3, v0}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 162
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$updateInProgress$inlined:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v0, p3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 164
    :cond_0
    iget-object p3, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$updateHandler$inlined:Lkotlin/jvm/functions/Function2;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    iget-boolean p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$tickMarksEnabled$inlined:Z

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->access$isSeekBarOnScreen(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 167
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$title$inlined:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/SeekBar;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p1, :cond_3

    .line 170
    iget-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {p2}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged function: Seekbar changed to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-virtual {p1}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->getSeekBarView()Landroid/widget/SeekBar;

    move-result-object p1

    const-string p2, "default"

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setTag(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStartTrackingTouch function: Seekbar started to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 186
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->this$0:Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->access$getTAG$p(Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;)Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onStopTrackingTouch function: Seekbar stopped at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$$inlined$let$lambda$1;->$updateHandler$inlined:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
