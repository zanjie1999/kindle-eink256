.class final Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;
.super Ljava/lang/Object;
.source "AaSettingSeekBar.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar;->init(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Landroid/view/View;IIZZLkotlin/jvm/functions/Function2;Ljava/lang/Integer;Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $identifier:Ljava/lang/Integer;

.field final synthetic $updateInProgress:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$BooleanRef;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;->$updateInProgress:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-object p2, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;->$identifier:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;->$updateInProgress:Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-boolean v0, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz v0, :cond_0

    .line 197
    sget-object v0, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->INSTANCE:Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;

    iget-object v1, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;->$identifier:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/viewoptions/utils/AaCoreSettingUtils;->interfaceUpdatePerformanceStringForIdentifier(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 198
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 199
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/ui/AaSettingSeekBar$init$4;->$updateInProgress:Lkotlin/jvm/internal/Ref$BooleanRef;

    iput-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_0
    return-void
.end method
