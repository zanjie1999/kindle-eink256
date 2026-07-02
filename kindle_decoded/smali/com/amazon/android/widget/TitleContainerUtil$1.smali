.class final Lcom/amazon/android/widget/TitleContainerUtil$1;
.super Landroid/os/AsyncTask;
.source "TitleContainerUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/android/widget/TitleContainerUtil;->setupBookInfoButton(Landroid/view/View;Landroid/widget/ImageButton;Landroid/graphics/drawable/Drawable;Lcom/amazon/android/docviewer/KindleDocViewer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/amazon/kindle/krx/ui/IButton<",
        "Lcom/amazon/kindle/krx/content/IBook;",
        ">;>;"
    }
.end annotation


# instance fields
.field private book:Lcom/amazon/kindle/krx/content/IBook;

.field final synthetic val$bookInfoButton:Landroid/widget/ImageButton;

.field final synthetic val$bookInfoIcon:Landroid/graphics/drawable/Drawable;

.field final synthetic val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

.field final synthetic val$titleView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/amazon/android/docviewer/KindleDocViewer;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageButton;Landroid/view/View;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    iput-object p2, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoIcon:Landroid/graphics/drawable/Drawable;

    iput-object p3, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoButton:Landroid/widget/ImageButton;

    iput-object p4, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$titleView:Landroid/view/View;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/android/widget/TitleContainerUtil$1;)Lcom/amazon/kindle/krx/content/IBook;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->book:Lcom/amazon/kindle/krx/content/IBook;

    return-object p0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/amazon/kindle/krx/ui/IButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;"
        }
    .end annotation

    .line 162
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderManager()Lcom/amazon/kindle/krx/reader/IReaderManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IReaderManager;->getCurrentBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->book:Lcom/amazon/kindle/krx/content/IBook;

    if-nez v1, :cond_1

    return-object v0

    .line 169
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getBookInfoButtonProviderRegistry()Lcom/amazon/kindle/krx/providers/IProviderRegistry;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->book:Lcom/amazon/kindle/krx/content/IBook;

    invoke-interface {p1, v0}, Lcom/amazon/kindle/krx/providers/IProviderRegistry;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/kindle/krx/ui/IButton;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/TitleContainerUtil$1;->doInBackground([Ljava/lang/Void;)Lcom/amazon/kindle/krx/ui/IButton;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/amazon/kindle/krx/ui/IButton;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amazon/kindle/krx/ui/IButton<",
            "Lcom/amazon/kindle/krx/content/IBook;",
            ">;)V"
        }
    .end annotation

    .line 174
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 177
    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    if-eqz v0, :cond_1

    .line 178
    invoke-interface {v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getColorModeFromAppTheme()Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/android/docviewer/KindleDocColorMode;->getId()Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/ui/ColorModeUtil;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;)Lcom/amazon/kindle/krx/ui/ColorMode;

    move-result-object v0

    .line 179
    sget-object v1, Lcom/amazon/kindle/krx/ui/IconType;->SMALL:Lcom/amazon/kindle/krx/ui/IconType;

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/ui/IButton;->getIcon(Lcom/amazon/kindle/krx/ui/ColorMode;Lcom/amazon/kindle/krx/ui/IconType;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoIcon:Landroid/graphics/drawable/Drawable;

    .line 183
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 184
    iget-object v2, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoButton:Landroid/widget/ImageButton;

    invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoButton:Landroid/widget/ImageButton;

    sget-object v2, Lcom/amazon/kindle/krx/ui/TextType;->VERBOSE:Lcom/amazon/kindle/krx/ui/TextType;

    invoke-interface {p1, v2}, Lcom/amazon/kindle/krx/ui/IButton;->getText(Lcom/amazon/kindle/krx/ui/TextType;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 186
    iget-object v0, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoButton:Landroid/widget/ImageButton;

    new-instance v2, Lcom/amazon/android/widget/TitleContainerUtil$1$1;

    invoke-direct {v2, p0, p1}, Lcom/amazon/android/widget/TitleContainerUtil$1$1;-><init>(Lcom/amazon/android/widget/TitleContainerUtil$1;Lcom/amazon/kindle/krx/ui/IButton;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    iget-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$bookInfoButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$titleView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget-object v2, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$titleView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    iget-object v3, p0, Lcom/amazon/android/widget/TitleContainerUtil$1;->val$titleView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lcom/amazon/kindle/krx/ui/IButton;

    invoke-virtual {p0, p1}, Lcom/amazon/android/widget/TitleContainerUtil$1;->onPostExecute(Lcom/amazon/kindle/krx/ui/IButton;)V

    return-void
.end method
