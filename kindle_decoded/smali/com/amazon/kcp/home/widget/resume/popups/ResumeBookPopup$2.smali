.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;
.super Ljava/lang/Object;
.source "ResumeBookPopup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->createAddToCollectionPopUpItem()V
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

    .line 254
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 257
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    const-string v0, "AddToCollection"

    invoke-static {p1, v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$600(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/lang/String;)V

    .line 258
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 259
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$400(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Asin"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$000(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ILibraryDisplayItem;

    move-result-object v1

    const-string v2, "HomeResumePopup"

    const-string v3, "AddToCollectionViewShown"

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/amazon/kcp/library/ContentInteractionHandler;->showAddToCollectionView(Lcom/amazon/kcp/library/ILibraryDisplayItem;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 262
    iget-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$2;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-virtual {p1}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->dismiss()V

    return-void
.end method
