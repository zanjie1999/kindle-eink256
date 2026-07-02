.class final Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;
.super Ljava/lang/Object;
.source "AaSettingHostFragment.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDraw()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    invoke-static {v0}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->access$getPerformanceMeasureTab$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 79
    invoke-static {v0, v1}, Lcom/amazon/kindle/util/PerfHelper;->LogPerfMarker(Ljava/lang/String;Z)V

    .line 80
    iget-object v0, p0, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment$onViewCreated$3;->this$0:Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;->access$setPerformanceMeasureTab$p(Lcom/amazon/kindle/viewoptions/AaSettingHostFragment;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
