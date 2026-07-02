.class Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;
.super Ljava/lang/Object;
.source "TOCViewForStandAlone.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->prepareSectionListView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;


# direct methods
.method constructor <init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 162
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->access$000(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object v0, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x1

    if-nez v0, :cond_3

    .line 164
    invoke-virtual {p1}, Lcom/amazon/nwstd/toc/TOCView;->isNewtronPhase1Enabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->access$100(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->access$100(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 166
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$layout;->section_list_dialog_header_newtron_phase1:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 167
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->section_list_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 168
    sget v2, Lcom/amazon/kindle/newsstand/forstandalone/R$string;->section_list_title:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 169
    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$id;->section_list_header_close_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    .line 170
    new-instance v2, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3$1;

    invoke-direct {v2, p0}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3$1;-><init>(Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v2

    invoke-interface {v2}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v2

    sget-object v3, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->WHITE:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v4, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v2

    .line 178
    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v3

    invoke-interface {v3}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getColorModeFactory()Lcom/amazon/android/docviewer/KindleDocColorModeFactory;

    move-result-object v3

    sget-object v4, Lcom/amazon/android/docviewer/KindleDocColorMode$Id;->BLACK:Lcom/amazon/android/docviewer/KindleDocColorMode$Id;

    iget-object v5, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/amazon/android/docviewer/KindleDocColorModeFactory;->getColorMode(Lcom/amazon/android/docviewer/KindleDocColorMode$Id;Landroid/content/res/Resources;)Lcom/amazon/android/docviewer/KindleDocColorMode;

    move-result-object v3

    .line 179
    sget-object v4, Lcom/amazon/kindle/krx/theme/Theme;->LIGHT:Lcom/amazon/kindle/krx/theme/Theme;

    invoke-static {}, Lcom/amazon/kcp/util/Utils;->getFactory()Lcom/amazon/kcp/application/IKindleObjectFactory;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kcp/application/IKindleObjectFactory;->getKindleReaderSDK()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v5

    invoke-interface {v5}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getThemeManager()Lcom/amazon/kindle/krx/theme/IThemeManager;

    move-result-object v5

    sget-object v6, Lcom/amazon/kindle/krx/theme/ThemeArea;->IN_BOOK:Lcom/amazon/kindle/krx/theme/ThemeArea;

    .line 180
    invoke-interface {v5, v6}, Lcom/amazon/kindle/krx/theme/IThemeManager;->getTheme(Lcom/amazon/kindle/krx/theme/ThemeArea;)Lcom/amazon/kindle/krx/theme/Theme;

    move-result-object v5

    if-ne v4, v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    .line 181
    :goto_0
    invoke-virtual {v2}, Lcom/amazon/android/docviewer/KindleDocColorMode;->hasDarkBackground()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    sget v2, Lcom/amazon/kindle/newsstand/forstandalone/R$drawable;->ic_close_dark_36dp:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto :goto_1

    .line 184
    :cond_1
    sget v2, Lcom/amazon/kindle/newsstand/forstandalone/R$drawable;->ic_close_light_36dp:I

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 186
    :goto_1
    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object v0, v0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    sget v0, Lcom/amazon/kindle/newsstand/forstandalone/R$string;->section_list_title:I

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 191
    :goto_2
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object v0, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertBuilder:Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    .line 192
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object v0, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-static {p1}, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->access$000(Lcom/amazon/nwstd/toc/TOCViewForStandAlone;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 193
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 195
    :cond_3
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 196
    iget-object p1, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object p1, p1, Lcom/amazon/nwstd/toc/TOCViewForStandAlone;->mAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 198
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object p1

    iget-object v0, p0, Lcom/amazon/nwstd/toc/TOCViewForStandAlone$3;->this$0:Lcom/amazon/nwstd/toc/TOCViewForStandAlone;

    iget-object v0, v0, Lcom/amazon/nwstd/toc/TOCView;->mTOCMetricTag:Ljava/lang/String;

    const-string v1, "OpenSection"

    invoke-virtual {p1, v0, v1}, Lcom/amazon/kcp/application/metrics/internal/AbstractMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
