.class Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;
.super Lcom/amazon/kindle/krx/library/BaseLibraryBookActionContext;
.source "ResumeBookPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->newActionContext(Lcom/amazon/kcp/library/ILibraryDisplayItem;)Lcom/amazon/kindle/krx/library/LibraryBookActionContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

.field final synthetic val$books:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;Ljava/util/List;)V
    .locals 0

    .line 293
    iput-object p1, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iput-object p2, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;->val$books:Ljava/util/List;

    invoke-direct {p0}, Lcom/amazon/kindle/krx/library/BaseLibraryBookActionContext;-><init>()V

    return-void
.end method


# virtual methods
.method public getAndroidContext()Landroid/content/Context;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    iget-object v0, v0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->activity:Lcom/amazon/kcp/redding/ReddingActivity;

    return-object v0
.end method

.method public getBooks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;->val$books:Ljava/util/List;

    return-object v0
.end method

.method public getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup$4;->this$0:Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;

    invoke-static {v0}, Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;->access$700(Lcom/amazon/kcp/home/widget/resume/popups/ResumeBookPopup;)Lcom/amazon/kcp/library/ContentInteractionHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/kcp/library/ContentInteractionHandler;->getScreenletContext()Lcom/amazon/kindle/krx/ui/ScreenletContext;

    move-result-object v0

    return-object v0
.end method
