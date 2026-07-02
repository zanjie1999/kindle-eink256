.class public Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "FullScreenImageDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;,
        Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;
    }
.end annotation


# static fields
.field private static final ARGUMENT_FULL_PAGE_LABEL:Ljava/lang/String; = "fullPageLabel"

.field private static final ARGUMENT_IMAGE:Ljava/lang/String; = "image"

.field private static final ARGUMENT_IMAGE_CAPTION:Ljava/lang/String; = "imageCaption"

.field private static final ARGUMENT_LOCATION:Ljava/lang/String; = "location"

.field private static final ARGUMENT_PAGE_LABEL:Ljava/lang/String; = "pageLabel"

.field private static final HANDLER:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;->HANDLER:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/graphics/Bitmap;Ljava/lang/CharSequence;ILjava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;
    .locals 3

    .line 61
    new-instance v0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;-><init>()V

    const/4 v1, 0x0

    const v2, 0x1030009

    .line 64
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->setStyle(II)V

    .line 67
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "image"

    .line 68
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "imageCaption"

    .line 69
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string p0, "location"

    .line 70
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "pageLabel"

    .line 71
    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "fullPageLabel"

    .line 72
    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    .line 81
    new-instance v0, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;

    invoke-direct {v0, p0, p1}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$FullScreenImageDialogOnShowListener;-><init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/ui/activity/XrayActivity;

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "image"

    .line 91
    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/graphics/Bitmap;

    const-string v0, "imageCaption"

    .line 92
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "location"

    .line 93
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "pageLabel"

    .line 94
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "fullPageLabel"

    .line 95
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 98
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/xray/R$layout;->xray_dialog_full_screen_image:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 99
    sget v4, Lcom/amazon/kindle/xray/R$id;->xray_image:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 100
    sget v6, Lcom/amazon/kindle/xray/R$id;->xray_image_caption_container:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 101
    sget v7, Lcom/amazon/kindle/xray/R$id;->xray_image_caption:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/amazon/xray/ui/widget/EnhancedTextView;

    .line 103
    invoke-virtual {v4, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 p3, 0x1

    .line 106
    invoke-virtual {v7, p3}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setAlwaysShowLink(Z)V

    .line 107
    new-instance v4, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;

    invoke-direct {v4, p1, v1}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$GoToImageOnClickListener;-><init>(Lcom/amazon/xray/ui/activity/XrayActivity;I)V

    invoke-virtual {v7, v4}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkListener(Landroid/view/View$OnClickListener;)V

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 109
    invoke-virtual {v7, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v7, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v7, v5}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    const/4 p1, 0x4

    .line 112
    invoke-virtual {v7, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 114
    :cond_0
    sget p1, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array v1, p3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v1, v4

    invoke-virtual {p0, p1, v1}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkText(Ljava/lang/String;)V

    .line 115
    sget p1, Lcom/amazon/kindle/xray/R$string;->xray_go_to_page:I

    new-array p3, p3, [Ljava/lang/Object;

    aput-object p2, p3, v4

    invoke-virtual {p0, p1, p3}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setLinkContentDescription(Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7, v0}, Lcom/amazon/xray/ui/widget/EnhancedTextView;->setTextWithExtras(Ljava/lang/CharSequence;)V

    .line 117
    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 121
    :goto_0
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object p1

    .line 122
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getContentBackgroundColor()I

    move-result p2

    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 123
    invoke-virtual {p1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getCaptionOverlayColor()I

    move-result p1

    invoke-virtual {v6, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 126
    sget-object p1, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;->HANDLER:Landroid/os/Handler;

    new-instance p2, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;

    invoke-direct {p2, p0, v3}, Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment$1;-><init>(Lcom/amazon/xray/ui/fragment/FullScreenImageDialogFragment;Landroid/view/View;)V

    .line 136
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result p3

    int-to-long v0, p3

    .line 126
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 138
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    const-string p2, "XrayFullScreenImageDialog"

    .line 139
    invoke-interface {p1, p2}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;)V

    return-object v3
.end method

.method public onDestroyView()V
    .locals 2

    .line 146
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 148
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayFullScreenImageDialog"

    .line 149
    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
