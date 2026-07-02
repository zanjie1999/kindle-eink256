.class Lcom/amazon/kcp/home/ui/ResumeShovelerView$1;
.super Ljava/lang/Object;
.source "ResumeShovelerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/ui/ResumeShovelerView;->setTitleAction(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/ui/ResumeShovelerView;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/ui/ResumeShovelerView;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/amazon/kcp/home/ui/ResumeShovelerView$1;->this$0:Lcom/amazon/kcp/home/ui/ResumeShovelerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 52
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 54
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getLibraryUIManager()Lcom/amazon/kindle/krx/ui/ILibraryUIManager;

    move-result-object p1

    sget-object v0, Lcom/amazon/kindle/krx/library/LibraryView;->ALL_ITEMS:Lcom/amazon/kindle/krx/library/LibraryView;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/ui/ILibraryUIManager;->launchLibraryView(Lcom/amazon/kindle/krx/library/LibraryView;)V

    :cond_0
    return-void
.end method
