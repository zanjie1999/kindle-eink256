.class Lcom/amazon/device/ads/Settings$1;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/Settings;->beginFetch(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/Settings;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/Settings;Landroid/content/Context;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/amazon/device/ads/Settings$1;->this$0:Lcom/amazon/device/ads/Settings;

    iput-object p2, p0, Lcom/amazon/device/ads/Settings$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/amazon/device/ads/Settings$1;->this$0:Lcom/amazon/device/ads/Settings;

    iget-object v1, p0, Lcom/amazon/device/ads/Settings$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Settings;->fetchSharedPreferences(Landroid/content/Context;)V

    return-void
.end method
