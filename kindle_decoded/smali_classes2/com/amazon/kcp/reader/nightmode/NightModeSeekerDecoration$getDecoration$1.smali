.class final Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration$getDecoration$1;
.super Ljava/lang/Object;
.source "NightModeSeekerDecoration.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->getDecoration(Lcom/amazon/kindle/krx/ui/ILocationSeekerDecoration$DecorationType;Landroid/content/Context;Landroid/view/ViewParent;Lcom/amazon/kindle/krx/ui/ColorMode;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration$getDecoration$1;->this$0:Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 35
    iget-object p1, p0, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration$getDecoration$1;->this$0:Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;

    invoke-static {p1}, Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;->access$getNightModeController$p(Lcom/amazon/kcp/reader/nightmode/NightModeSeekerDecoration;)Lcom/amazon/kcp/reader/nightmode/NightModeController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kcp/reader/nightmode/NightModeController;->toggleNightMode()V

    return-void
.end method
