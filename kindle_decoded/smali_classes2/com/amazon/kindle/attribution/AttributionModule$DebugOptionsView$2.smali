.class Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$2;
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

    .line 102
    iput-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$2;->this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 105
    invoke-static {}, Lcom/amazon/kindle/event/UserEventRecorder;->getInstance()Lcom/amazon/kindle/event/UserEventRecorder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/kindle/event/UserEventRecorder;->onAppStarted()V

    .line 106
    iget-object p1, p0, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView$2;->this$0:Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;

    invoke-static {p1}, Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;->access$000(Lcom/amazon/kindle/attribution/AttributionModule$DebugOptionsView;)V

    return-void
.end method
