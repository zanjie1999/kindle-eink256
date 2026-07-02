.class Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1$1;
.super Ljava/lang/Object;
.source "SendToKindleDebugMenu.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu$1;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 54
    invoke-static {}, Lcom/amazon/kindle/s2k/debug/SendToKindleDebugMenu;->access$000()Ljava/lang/String;

    .line 55
    invoke-static {}, Lcom/amazon/kindle/s2k/debug/STKDebugUtils;->toggleSTKEndpoint()V

    return-void
.end method
