.class Lcom/amazon/device/ads/NativeCloseButton$5;
.super Ljava/lang/Object;
.source "NativeCloseButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/NativeCloseButton;->hideImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/NativeCloseButton;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/NativeCloseButton;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$5;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/amazon/device/ads/NativeCloseButton$5;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-static {v0}, Lcom/amazon/device/ads/NativeCloseButton;->access$500(Lcom/amazon/device/ads/NativeCloseButton;)V

    return-void
.end method
