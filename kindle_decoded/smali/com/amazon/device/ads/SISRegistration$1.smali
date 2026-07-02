.class Lcom/amazon/device/ads/SISRegistration$1;
.super Ljava/lang/Object;
.source "SISRegistration.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/SISRegistration;->registerApp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/SISRegistration;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/SISRegistration;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/amazon/device/ads/SISRegistration$1;->this$0:Lcom/amazon/device/ads/SISRegistration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/amazon/device/ads/SISRegistration$1;->this$0:Lcom/amazon/device/ads/SISRegistration;

    invoke-virtual {v0}, Lcom/amazon/device/ads/SISRegistration;->waitForConfigurationThenBeginRegistration()V

    return-void
.end method
