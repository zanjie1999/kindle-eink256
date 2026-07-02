.class public Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;
.super Lcom/amazon/klo/BaseFeedbackDialog;
.source "KindleLearningObjectFeedbackDetailActivity.java"


# static fields
.field public static final INTENT_KEY_TERM:Ljava/lang/String; = "term"

.field private static final isHelpful:Z = false


# instance fields
.field private commentCheckBoxes:[Landroid/widget/CheckBox;

.field private commentEdit:Landroid/widget/EditText;

.field private selectedFeedbackTypes:I

.field private submitButton:Landroid/widget/Button;

.field private term:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lcom/amazon/klo/BaseFeedbackDialog;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/Button;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->submitButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    return p0
.end method

.method static synthetic access$102(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    return p1
.end method

.method static synthetic access$200(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)Landroid/widget/EditText;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    return-object p0
.end method

.method private initCommentCheckBoxes()V
    .locals 6

    .line 104
    sget v0, Lcom/amazon/klo/R$id;->klo_feedback_comment_layout:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v2, 0x0

    .line 107
    :goto_0
    iget-object v3, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentCheckBoxes:[Landroid/widget/CheckBox;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 109
    new-instance v3, Landroid/widget/CheckBox;

    invoke-direct {v3, p0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/amazon/klo/feedback/FeedbackType;->values()[Lcom/amazon/klo/feedback/FeedbackType;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/amazon/klo/feedback/FeedbackType;->getResourceId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 113
    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 115
    new-instance v4, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;

    invoke-direct {v4, p0, v2}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$3;-><init>(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;I)V

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 153
    iget-object v4, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentCheckBoxes:[Landroid/widget/CheckBox;

    aput-object v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public onCancelClicked(Landroid/view/View;)V
    .locals 3

    .line 169
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    iget v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    iget-object v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/klo/KLOMetricManager;->reportFeedbackNegativeClicked(Ljava/lang/String;ZIZ)V

    .line 170
    new-instance p1, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;

    invoke-direct {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;-><init>()V

    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {p1, v0, v2, v2, v1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;->sendFeedback(Ljava/lang/String;ZILjava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/amazon/klo/BaseFeedbackDialog;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/amazon/klo/R$layout;->klo_feedback:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "term"

    .line 46
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    .line 48
    sget p1, Lcom/amazon/klo/R$id;->klo_feedback_term:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    invoke-static {}, Lcom/amazon/klo/feedback/FeedbackType;->values()[Lcom/amazon/klo/feedback/FeedbackType;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [Landroid/widget/CheckBox;

    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentCheckBoxes:[Landroid/widget/CheckBox;

    .line 52
    invoke-direct {p0}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->initCommentCheckBoxes()V

    .line 54
    sget p1, Lcom/amazon/klo/R$id;->klo_feedback_comment:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    .line 55
    new-instance v0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$1;-><init>(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 75
    sget p1, Lcom/amazon/klo/R$id;->klo_feedback_button_submit:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->submitButton:Landroid/widget/Button;

    .line 78
    sget p1, Lcom/amazon/klo/R$id;->klo_feedback_title:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 79
    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;

    invoke-direct {v1, p0, p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity$2;-><init>(Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 160
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    const-string v0, "input_method"

    .line 161
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 162
    iget-object v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method public onSubmitClicked(Landroid/view/View;)V
    .locals 4

    .line 178
    invoke-static {}, Lcom/amazon/klo/sdk/KRX;->getMetricsManager()Lcom/amazon/kindle/krx/metrics/IMetricsManager;

    move-result-object p1

    const-string v0, "KINDLE_LEARNING_OBJECTS"

    const-string v1, "FeedbackNegativeSubmitted"

    invoke-interface {p1, v0, v1}, Lcom/amazon/kindle/krx/metrics/IMetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    iget v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    iget-object v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-static {p1, v2, v0, v1}, Lcom/amazon/klo/KLOMetricManager;->reportFeedbackNegativeClicked(Ljava/lang/String;ZIZ)V

    .line 181
    iget p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    sget-object v0, Lcom/amazon/klo/feedback/FeedbackType;->OTHER:Lcom/amazon/klo/feedback/FeedbackType;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v2, v0

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 183
    iget-object p1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 185
    :cond_0
    new-instance p1, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;

    invoke-direct {p1}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;-><init>()V

    iget-object v0, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->term:Ljava/lang/String;

    iget v1, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->selectedFeedbackTypes:I

    iget-object v2, p0, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackDetailActivity;->commentEdit:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Lcom/amazon/klo/feedback/KindleLearningObjectFeedbackSender;->sendFeedback(Ljava/lang/String;ZILjava/lang/String;)V

    .line 187
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 188
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/amazon/klo/R$string;->klo_feedback_finish_toast:I

    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method
