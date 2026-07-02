.class Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$4;
.super Ljava/lang/Object;
.source "ReaderMenuContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer$4;->this$0:Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;

    iget-object v0, v0, Lcom/amazon/kcp/reader/ui/ReaderMenuContainer;->aaSettingSheet:Lcom/amazon/kindle/viewoptions/ui/AaSettingSheet;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_0
    return-void
.end method
