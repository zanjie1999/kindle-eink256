.class Lcom/amazon/kindle/panels/BasePanelProvider$2;
.super Landroid/os/AsyncTask;
.source "BasePanelProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/panels/BasePanelProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/widget/ImageView;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field item:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/amazon/kindle/panels/BasePanelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/widget/ImageView;)Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    .line 94
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$2;->item:Landroid/widget/ImageView;

    .line 95
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    iget-object p1, p1, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    sget-object v0, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {p1, v0}, Lcom/amazon/android/docviewer/KindleDocViewer;->getCoverImageUrl(Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/zyyme/eink256/Eink256Patch;->process(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 89
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider$2;->doInBackground([Landroid/widget/ImageView;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 101
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider$2;->item:Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider$2;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    iget-object v2, v2, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 89
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider$2;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
