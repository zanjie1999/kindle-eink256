.class public Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;
.super Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;
.source "DescriptionDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;,
        Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;,
        Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;
    }
.end annotation


# static fields
.field private static final ARGUMENT_ENTITY_DESCRIPTION:Ljava/lang/String; = "entityDescription"

.field private static final ARGUMENT_ENTITY_LABEL:Ljava/lang/String; = "entityLabel"


# instance fields
.field private entity:Lcom/amazon/xray/model/object/Entity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/amazon/xray/ui/fragment/ThemedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Lcom/amazon/xray/model/object/Entity;)Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;
    .locals 4

    .line 53
    new-instance v0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;

    invoke-direct {v0}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;-><init>()V

    .line 54
    iput-object p0, v0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 57
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getLabel()Ljava/lang/String;

    move-result-object v2

    const-string v3, "entityLabel"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/amazon/xray/model/object/Entity;->getDescription()Lcom/amazon/xray/model/object/Description;

    move-result-object p0

    const-string v2, "entityDescription"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 66
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, 0x1

    .line 67
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 68
    new-instance v0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;

    invoke-direct {v0, p1}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$DescriptionDialogOnShowListener;-><init>(Landroid/app/Dialog;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 75
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "entityLabel"

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "entityDescription"

    .line 77
    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/object/Description;

    .line 79
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    sget v0, Lcom/amazon/kindle/xray/R$layout;->xray_dialog_description:I

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 81
    sget v0, Lcom/amazon/kindle/xray/R$id;->xray_dialog_description_title:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    sget v2, Lcom/amazon/kindle/xray/R$id;->xray_dialog_description_content:I

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/amazon/xray/ui/widget/DescriptionView;

    .line 83
    sget v3, Lcom/amazon/kindle/xray/R$id;->xray_dialog_description_cancel_button:I

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    .line 85
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    invoke-virtual {v2, p1}, Lcom/amazon/xray/ui/widget/DescriptionView;->setDescription(Lcom/amazon/xray/model/object/Description;)V

    const-string p2, "XrayEntityDescription"

    .line 87
    invoke-virtual {v2, p2}, Lcom/amazon/xray/ui/widget/DescriptionView;->setReadingStreamsContext(Ljava/lang/String;)V

    .line 88
    new-instance v4, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;

    iget-object v5, p0, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;->entity:Lcom/amazon/xray/model/object/Entity;

    invoke-direct {v4, v5}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$OnNavigateToSourceRunnable;-><init>(Lcom/amazon/xray/model/object/Entity;)V

    invoke-virtual {v2, v4}, Lcom/amazon/xray/ui/widget/DescriptionView;->setOnNavigateToSourceRunnable(Ljava/lang/Runnable;)V

    .line 89
    new-instance v2, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;

    invoke-direct {v2, p0, v1}, Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$CancelOnClickListener;-><init>(Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment;Lcom/amazon/xray/ui/fragment/DescriptionDialogFragment$1;)V

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    invoke-static {}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getSharedInstance()Lcom/amazon/xray/ui/util/XrayThemeUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/xray/ui/util/XrayThemeUtil;->getPrimaryTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 95
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DescriptionSourceLabel"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-virtual {p1}, Lcom/amazon/xray/model/object/Description;->getText()Ljava/lang/String;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "DescriptionSourceTextLength"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p1

    .line 99
    invoke-interface {p1, p2, v0}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->showContext(Ljava/lang/String;Ljava/util/Map;)V

    return-object p3
.end method

.method public onDestroyView()V
    .locals 2

    .line 125
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroyView()V

    .line 127
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object v0

    const-string v1, "XrayEntityDescription"

    invoke-interface {v0, v1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->hideContext(Ljava/lang/String;)V

    return-void
.end method
