.class Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;
.super Ljava/lang/Object;
.source "AttributionModule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;->this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEventRecorder;->resetData()V

    .line 94
    iget-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;->this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;

    invoke-static {p1}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;->access$000(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$1;->this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "Data reset"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
