.class public Lcom/amazon/kcp/library/ReportSeriesErrorDialog;
.super Lcom/amazon/kcp/library/LibraryDialogFragment;
.source "ReportSeriesErrorDialog.java"


# static fields
.field private static final ASIN_KEY:Ljava/lang/String; = "asin"

.field private static final BOOK_IN_SERIES_MISSING:Ljava/lang/String; = "book_in_series_missing"

.field private static final BOOK_IN_WRONG_SERIES:Ljava/lang/String; = "book_in_wrong_series"

.field private static final BOOK_OUT_OF_ORDER:Ljava/lang/String; = "book_out_of_order"

.field private static final BOOK_TITLE_INCORRECT:Ljava/lang/String; = "book_title_incorrect"

.field private static final REPORT_SERIES_ERROR_CONFIRMATION:Ljava/lang/String; = "ReportSeriesErrorConfirmation"

.field private static final SERIES_ID_KEY:Ljava/lang/String; = "series_id"

.field private static final SERIES_LEVEL_REPORT_KEY:Ljava/lang/String; = "series_level_report"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private editText:Landroid/widget/EditText;

.field private spinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;

    invoke-static {v0}, Lcom/amazon/kindle/log/Log;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/library/LibraryDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->handlePositiveButtonClick()V

    return-void
.end method

.method private handlePositiveButtonClick()V
    .locals 9

    .line 103
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "asin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 104
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "series_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "series_level_report"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 106
    iget-object v0, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "book_in_wrong_series"

    goto :goto_0

    :cond_0
    const-string v0, "book_out_of_order"

    goto :goto_0

    :cond_1
    const-string v0, "book_in_series_missing"

    goto :goto_0

    :cond_2
    const-string v0, "book_title_incorrect"

    :goto_0
    move-object v4, v0

    .line 122
    iget-object v0, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 124
    new-instance v0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v8}, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$2;-><init>(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 134
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 137
    new-instance v0, Lcom/amazon/kcp/library/ReportSeriesErrorConfirmationDialog;

    invoke-direct {v0}, Lcom/amazon/kcp/library/ReportSeriesErrorConfirmationDialog;-><init>()V

    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "ReportSeriesErrorConfirmation"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 74
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/amazon/kindle/librarymodule/R$layout;->report_series_error_dialog:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 75
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->series_error_spinner:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iput-object v2, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->spinner:Landroid/widget/Spinner;

    .line 77
    sget v2, Lcom/amazon/kindle/librarymodule/R$id;->customer_message:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->editText:Landroid/widget/EditText;

    .line 79
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/amazon/kindle/librarymodule/R$layout;->report_series_error_spinner_item:I

    .line 81
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/amazon/kindle/librarymodule/R$array;->series_error_option_strings:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v5

    const v6, 0x1020014

    invoke-direct {v2, v3, v4, v6, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 82
    sget v3, Lcom/amazon/kindle/librarymodule/R$layout;->report_series_error_spinner_item:I

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 84
    iget-object v3, p0, Lcom/amazon/kcp/library/ReportSeriesErrorDialog;->spinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 86
    sget v2, Lcom/amazon/kindle/librarymodule/R$string;->lib_report_series_error:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 88
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->positive_button_series_error:I

    new-instance v2, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;

    invoke-direct {v2, p0}, Lcom/amazon/kcp/library/ReportSeriesErrorDialog$1;-><init>(Lcom/amazon/kcp/library/ReportSeriesErrorDialog;)V

    invoke-virtual {v0, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 94
    sget p1, Lcom/amazon/kindle/librarymodule/R$string;->cancel:I

    invoke-virtual {v0, p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 96
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
