.class final Lcom/amazon/kindle/recaps/activity/RecapsActivity$onThemeChangedEvent$1;
.super Ljava/lang/Object;
.source "RecapsActivity.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/recaps/activity/RecapsActivity;->onThemeChangedEvent(Lcom/amazon/kindle/krx/events/ThemeChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/recaps/activity/RecapsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/amazon/kindle/recaps/activity/RecapsActivity$onThemeChangedEvent$1;->this$0:Lcom/amazon/kindle/recaps/activity/RecapsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
