.class Lcom/amazon/kindle/panels/BasePanelProvider$3;
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
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field item:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/amazon/kindle/panels/BasePanelProvider;


# direct methods
.method constructor <init>(Lcom/amazon/kindle/panels/BasePanelProvider;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, [Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider$3;->doInBackground([Landroid/widget/ImageView;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/widget/ImageView;)Ljava/lang/Void;
    .locals 3

    const/4 v0, 0x0

    .line 115
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    .line 116
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 117
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 118
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    iget-object v1, v1, Lcom/amazon/kindle/panels/BasePanelProvider;->docViewer:Lcom/amazon/android/docviewer/KindleDocViewer;

    sget-object v2, Lcom/amazon/kindle/cover/ImageSizes$Type;->SMALL:Lcom/amazon/kindle/cover/ImageSizes$Type;

    invoke-interface {v1, v2}, Lcom/amazon/android/docviewer/KindleDocViewer;->getCoverImageUrl(Lcom/amazon/kindle/cover/ImageSizes$Type;)Ljava/lang/String;

    move-result-object v1

    .line 119
    invoke-static {v1, p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    iget v1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    iget-object v2, v2, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 121
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 120
    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    .line 122
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    iget-object v2, v2, Lcom/amazon/kindle/panels/BasePanelProvider;->activity:Lcom/amazon/kcp/reader/ReaderActivity;

    .line 123
    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 122
    invoke-static {v0, p1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    .line 124
    iget-object v0, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 125
    iget-object v2, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getMaxWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 126
    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getMaxHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 110
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/amazon/kindle/panels/BasePanelProvider$3;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 3

    .line 132
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->requestLayout()V

    .line 135
    iget-object p1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->this$0:Lcom/amazon/kindle/panels/BasePanelProvider;

    invoke-static {p1}, Lcom/amazon/kindle/panels/BasePanelProvider;->access$100(Lcom/amazon/kindle/panels/BasePanelProvider;)Landroid/os/AsyncTask;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/amazon/kindle/panels/BasePanelProvider$3;->item:Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
