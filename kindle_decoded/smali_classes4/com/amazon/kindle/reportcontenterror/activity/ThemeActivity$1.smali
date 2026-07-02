.class Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;->access$000()Ljava/lang/String;

    .line 52
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity$1;->this$0:Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
