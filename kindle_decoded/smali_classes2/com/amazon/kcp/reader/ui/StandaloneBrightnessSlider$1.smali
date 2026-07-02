.class Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider$1;
.super Ljava/lang/Object;
.source "StandaloneBrightnessSlider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->onSettingsChangedEvent(Lcom/amazon/kindle/persistence/SettingsChangedEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider$1;->this$0:Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/ui/StandaloneBrightnessSlider;->syncSelectedOptions()V

    return-void
.end method
