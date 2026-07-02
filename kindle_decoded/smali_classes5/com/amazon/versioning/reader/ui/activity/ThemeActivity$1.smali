.class Lcom/amazon/versioning/reader/ui/activity/ThemeActivity$1;
.super Ljava/lang/Object;
.source "ThemeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;


# direct methods
.method constructor <init>(Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity$1;->this$0:Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/activity/ThemeActivity$1;->this$0:Lcom/amazon/versioning/reader/ui/activity/ThemeActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
