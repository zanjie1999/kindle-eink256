.class Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;
.super Ljava/lang/Object;
.source "ExcerptCardListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FramelessImageOnClickListener"
.end annotation


# instance fields
.field private image:Landroid/graphics/Bitmap;

.field private imageCaption:Ljava/lang/CharSequence;

.field private location:I

.field private pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

.field final synthetic this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;


# direct methods
.method private constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$1;)V
    .locals 0

    .line 885
    invoke-direct {p0, p1}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;-><init>(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 926
    iget-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->image:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 927
    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->imageCaption:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->location:I

    iget-object v2, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    invoke-virtual {v2}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getLabel()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    .line 928
    invoke-virtual {v3}, Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;->getFullLabel()Ljava/lang/String;

    move-result-object v3

    .line 927
    invoke-static {p1, v0, v1, v2, v3}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;->newInstance(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->this$0:Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;

    .line 928
    invoke-static {v0}, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;->access$1000(Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter;)Lcom/amazon/xray/ui/activity/XrayActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "ImageDialogFragment"

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 931
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    .line 932
    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string v0, "XrayCard_Image"

    const-string v1, "EnlargeImage"

    .line 933
    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 896
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->image:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setImageCaption(Ljava/lang/CharSequence;)V
    .locals 0

    .line 904
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->imageCaption:Ljava/lang/CharSequence;

    return-void
.end method

.method public setLocation(I)V
    .locals 0

    .line 912
    iput p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->location:I

    return-void
.end method

.method public setPageLabel(Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/amazon/xray/ui/adapter/ExcerptCardListAdapter$FramelessImageOnClickListener;->pageLabel:Lcom/amazon/xray/plugin/util/ContentUtil$PageLabel;

    return-void
.end method
