.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createSharePopUpItem()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)V
    .locals 0

    .line 427
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 430
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getShareHelper()Lcom/amazon/kcp/reader/IShareHelper;

    move-result-object v0

    .line 431
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iget-object v1, p1, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->context:Landroid/content/Context;

    check-cast v1, Lcom/amazon/kcp/redding/ReddingActivity;

    iget-object p1, p1, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->library_root_view:I

    invoke-virtual {p1, v2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v4

    sget-object v5, Lcom/amazon/kcp/reader/IShareHelper$ShareType;->WHOLEBOOK_HOME:Lcom/amazon/kcp/reader/IShareHelper$ShareType;

    const/4 v3, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/amazon/kcp/reader/IShareHelper;->share(Landroid/app/Activity;Landroid/view/View;Lcom/amazon/android/docviewer/KindleDoc;Lcom/amazon/kcp/library/ILibraryDisplayItem;Lcom/amazon/kcp/reader/IShareHelper$ShareType;)V

    .line 433
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$6;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
