.class public Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;
.super Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;
.source "FeedbackViewComposerActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field extras:Landroid/os/Bundle;

.field metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct/range {p0 .. p6}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->sendOdotMessage(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getBlurbsArray()[Ljava/lang/String;
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v1, "category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "subcategory_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    .line 155
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object v1, v2, v4

    const-string v0, "blurbs_%s_%s"

    .line 156
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const-string v0, "blurbs_%s"

    .line 159
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getStringArray(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private prepareToolbar()V
    .locals 2

    .line 168
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->toolbar_rce:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 169
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 170
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "SupportActionBar cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    .line 171
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private sendOdotMessage(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 121
    new-instance v8, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$2;-><init>(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-static {v8}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 134
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/amazon/kindle/reportcontenterror/R$string;->rce_plugin_thank_you_message:I

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 135
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 136
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string p2, "ReportTimeTaken"

    invoke-virtual {p1, p2}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->stopMetricTimer(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 46
    invoke-super {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Intent cannot be null"

    .line 49
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Extras cannot be null"

    .line 51
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->getInstance()Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    .line 55
    sget p1, Lcom/amazon/kindle/reportcontenterror/R$layout;->activity_rce_user_comments:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 56
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->prepareToolbar()V

    .line 58
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v1, "selected_text"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "asin"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 60
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "content_guid"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 61
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "start_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 62
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "end_position"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v9

    .line 64
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    const-string v2, "aes_resource"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 68
    sget-object v2, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error building JSON object from AES resource: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->getBlurbsArray()[Ljava/lang/String;

    move-result-object v2

    .line 72
    aget-object v3, v2, v0

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-static {v3, v4, v1, v5}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v11, 0x1

    .line 74
    aget-object v4, v2, v11

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 75
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 74
    invoke-static {v4, v5, v1, v10}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 76
    aget-object v10, v2, v5

    const/4 v5, 0x3

    .line 77
    aget-object v2, v2, v5

    .line 79
    sget v5, Lcom/amazon/kindle/reportcontenterror/R$id;->rceSummary:I

    invoke-virtual {p0, v5}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v12, "RCE Summary cannot be null."

    .line 80
    invoke-static {v5, v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    new-array v12, v11, [Ljava/lang/Object;

    aput-object p1, v12, v0

    .line 81
    invoke-static {v3, v12}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    sget p1, Lcom/amazon/kindle/reportcontenterror/R$id;->rceLegalStatement:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "RCE Legal Statement cannot be null."

    .line 83
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string v5, "rce_plugin_legal_statement"

    .line 84
    invoke-static {v5, v0, v1, v3}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getString(Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    sget p1, Lcom/amazon/kindle/reportcontenterror/R$id;->rceUserComment:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    const-string v0, "rceUserComment EditText should not be null."

    .line 87
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 88
    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 89
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->rceSubmitBtn:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const-string v1, "Submit button should not be null."

    .line 91
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v12, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;

    move-object v3, v12

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v10}, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity$1;-><init>(Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;Landroid/widget/EditText;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 92
    invoke-virtual {v1, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v1, "comment_mandatory"

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    .line 102
    new-instance v2, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;

    invoke-direct {v2, v0, v1}, Lcom/amazon/kindle/reportcontenterror/CustomTextWatcher;-><init>(Landroid/widget/Button;Z)V

    invoke-virtual {p1, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    xor-int/lit8 p1, v1, 0x1

    .line 103
    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 105
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v0, "FeedbackComposerViewRendered"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/reportcontenterror/R$menu;->custom_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 188
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->rceCloseBtn:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    .line 189
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
