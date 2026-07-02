.class Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$2;
.super Ljava/lang/Object;
.source "DeliveryServiceDebugMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->setupOptions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$2;->this$0:Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu$2;->this$0:Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;->access$000(Lcom/amazon/kcp/debug/DeliveryServiceDebugMenu;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DownloadDebugUtils;->setSupportedVoucherVersionsManifestEnabled(Landroid/content/Context;Z)V

    return-void
.end method
