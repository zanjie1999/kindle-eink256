.class Lcom/amazon/kindle/panels/BookPanelProvider$1;
.super Ljava/lang/Object;
.source "BookPanelProvider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kindle/panels/BookPanelProvider;->setupBookInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kindle/panels/BookPanelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BookPanelProvider;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 145
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-static {p1}, Lcom/amazon/kindle/panels/BookPanelProvider;->access$008(Lcom/amazon/kindle/panels/BookPanelProvider;)I

    .line 146
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-static {p1}, Lcom/amazon/kindle/panels/BookPanelProvider;->access$000(Lcom/amazon/kindle/panels/BookPanelProvider;)I

    move-result p1

    const/4 v0, 0x7

    if-ne p1, v0, :cond_3

    .line 147
    iget-object p1, p0, Lcom/amazon/kindle/panels/BookPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    iget-object p1, p1, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz p1, :cond_3

    .line 148
    invoke-interface {p1}, Lcom/amazon/android/docviewer/KindleDocViewer;->getBookInfo()Lcom/amazon/kindle/model/content/ILocalBookItem;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 151
    invoke-interface {p1}, Lcom/amazon/kindle/model/content/ILocalBookInfo;->getMimeType()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-static {p1}, Lcom/amazon/kindle/download/MimeTypeHelper;->isYellowJerseyContentMimeType(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string v0, "Enhanced"

    goto :goto_0

    :cond_0
    const-string v0, "Standard"

    :cond_1
    :goto_0
    const/4 p1, 0x0

    if-eqz v0, :cond_2

    .line 161
    invoke-static {}, Lcom/amazon/kcp/application/ReddingApplication;->getDefaultApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 163
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/panels/BookPanelProvider$1;->this$0:Lcom/amazon/kindle/panels/BookPanelProvider;

    invoke-static {v0, p1}, Lcom/amazon/kindle/panels/BookPanelProvider;->access$002(Lcom/amazon/kindle/panels/BookPanelProvider;I)I

    :cond_3
    return-void
.end method
