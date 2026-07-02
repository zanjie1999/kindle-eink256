.class Lcom/amazon/kcp/application/StandaloneApplication$6;
.super Ljava/lang/Object;
.source "StandaloneApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/application/StandaloneApplication;->getMobileAdsInitalizationRunnable()Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/application/StandaloneApplication;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/application/StandaloneApplication;)V
    .locals 0

    .line 411
    iput-object p1, p0, Lcom/amazon/kcp/application/StandaloneApplication$6;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/amazon/kcp/application/StandaloneApplication$6;->this$0:Lcom/amazon/kcp/application/StandaloneApplication;

    invoke-static {v0}, Lcom/amazon/device/ads/AdsIdentity;->initialize(Landroid/content/Context;)V

    return-void
.end method
