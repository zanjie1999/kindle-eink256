.class final Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$4;
.super Ljava/lang/Object;
.source "DownloadDebugMenu.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/debug/DownloadDebugMenu;->getView()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/debug/DownloadDebugMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$4;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/amazon/kcp/debug/DownloadDebugMenu$getView$4;->this$0:Lcom/amazon/kcp/debug/DownloadDebugMenu;

    invoke-static {p1}, Lcom/amazon/kcp/debug/DownloadDebugMenu;->access$getContext$p(Lcom/amazon/kcp/debug/DownloadDebugMenu;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/amazon/kcp/debug/DebugUtils;->setSeparatelyFontsDownloadEnabled(Landroid/content/Context;Z)V

    return-void
.end method
