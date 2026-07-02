.class Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;
.super Ljava/lang/Object;
.source "ErrorTypeSelectionListOnItemClickListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private final entityLabel:Ljava/lang/String;

.field private final infoCard:Lcom/amazon/xray/ui/widget/XrayInfoCard;

.field private final selection:Lcom/amazon/kindle/krx/content/IContentSelection;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/xray/ui/widget/XrayInfoCard;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->entityLabel:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    .line 33
    iput-object p3, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->infoCard:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;)Lcom/amazon/xray/ui/widget/XrayInfoCard;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->infoCard:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    return-object p0
.end method

.method private sendSelectedFeedbackErrorType(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/xray/model/FeedbackErrorType;Landroid/content/res/Resources;)V
    .locals 9

    .line 43
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/krx/content/IBook;->getASIN()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getBook()Lcom/amazon/kindle/krx/content/IBook;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/content/IBook;->getGuid()Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionStart()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 46
    invoke-interface {p1}, Lcom/amazon/kindle/krx/content/IContentSelection;->getSelectionEnd()Lcom/amazon/kindle/krx/reader/IPosition;

    move-result-object p1

    invoke-interface {p1}, Lcom/amazon/kindle/krx/reader/IPosition;->getIntPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 47
    invoke-virtual {p2}, Lcom/amazon/xray/model/FeedbackErrorType;->getShortErrorTypeString()Ljava/lang/String;

    move-result-object v7

    .line 50
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string p2, "ErrorType"

    .line 51
    invoke-interface {p1, p2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object p2

    invoke-interface {p2}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReadingStreamsEncoder()Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;

    move-result-object p2

    const-string v1, "XrayInfoCard"

    const-string v2, "SelectedErrorTypeOption"

    .line 54
    invoke-interface {p2, v1, v2, p1}, Lcom/amazon/kindle/krx/readingstreams/IReadingStreamsEncoder;->performAction(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 57
    invoke-direct {p0, p3, v7}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->shouldShowFeedbackTextInputDialog(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, p0

    move-object v2, v0

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    .line 58
    invoke-direct/range {v1 .. v6}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->showFeedbackTextInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    :cond_0
    iget-object p1, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->infoCard:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-virtual {p1}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->resetInfoCardAndShowThankYouMessage()V

    const/4 p1, 0x0

    .line 62
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->entityLabel:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, v3

    move v3, p1

    invoke-static/range {v1 .. v8}, Lcom/amazon/xray/feedback/XrayFeedbackSender;->sendInfocardFeedback(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private shouldShowFeedbackTextInputDialog(Landroid/content/res/Resources;Ljava/lang/String;)Z
    .locals 1

    .line 67
    sget v0, Lcom/amazon/kindle/xray/R$string;->xray_feedback_other_short:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private showFeedbackTextInputDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 71
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iget-object v6, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->entityLabel:Ljava/lang/String;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v1 .. v7}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    move-result-object v0

    .line 72
    new-instance v1, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener$1;

    invoke-direct {v1, p0}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener$1;-><init>(Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;)V

    invoke-virtual {v0, v1}, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;->setDialogOnSubmitListener(Lcom/amazon/xray/ui/listener/DialogFragmentOnSubmitPressedListener;)V

    .line 80
    :try_start_0
    invoke-static {}, Lcom/amazon/xray/plugin/XrayPlugin;->getSdk()Lcom/amazon/kindle/krx/IKindleReaderSDK;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getReaderUIManager()Lcom/amazon/kindle/krx/ui/IReaderUIManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/amazon/kindle/krx/ui/IReaderUIManager;->getCurrentActivity()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 81
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-class v2, Lcom/amazon/xray/ui/fragment/InfoCardFeedbackDialogFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 83
    :catch_0
    iget-object v0, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->infoCard:Lcom/amazon/xray/ui/widget/XrayInfoCard;

    invoke-virtual {v0}, Lcom/amazon/xray/ui/widget/XrayInfoCard;->resetInfoCardAndShowThankYouMessage()V

    const/4 v3, 0x0

    .line 85
    iget-object v4, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->entityLabel:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v1 .. v8}, Lcom/amazon/xray/feedback/XrayFeedbackSender;->sendInfocardFeedback(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amazon/xray/model/FeedbackErrorType;

    .line 39
    iget-object p3, p0, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->selection:Lcom/amazon/kindle/krx/content/IContentSelection;

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-direct {p0, p3, p1, p2}, Lcom/amazon/xray/ui/widget/ErrorTypeSelectionListOnItemClickListener;->sendSelectedFeedbackErrorType(Lcom/amazon/kindle/krx/content/IContentSelection;Lcom/amazon/xray/model/FeedbackErrorType;Landroid/content/res/Resources;)V

    return-void
.end method
