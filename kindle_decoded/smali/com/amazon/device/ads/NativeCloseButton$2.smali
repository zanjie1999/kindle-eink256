.class Lcom/amazon/device/ads/NativeCloseButton$2;
.super Ljava/lang/Object;
.source "NativeCloseButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/device/ads/NativeCloseButton;->createButtonIfNeeded(I)V
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

    .line 134
    iput-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$2;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 138
    iget-object p1, p0, Lcom/amazon/device/ads/NativeCloseButton$2;->this$0:Lcom/amazon/device/ads/NativeCloseButton;

    invoke-static {p1}, Lcom/amazon/device/ads/NativeCloseButton;->access$200(Lcom/amazon/device/ads/NativeCloseButton;)V

    return-void
.end method
