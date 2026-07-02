.class public Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;
.super Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;
.source "CategorySelectionActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REQUEST_CODE:I = 0x1


# instance fields
.field extras:Landroid/os/Bundle;

.field metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    const-class v0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->processErrorTypeCategoryListItemClick(I)V

    return-void
.end method

.method private getErrorTypeCategories(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3

    .line 129
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/reportcontenterror/R$array;->error_type_category:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 129
    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getStringArray([Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareToolbar()V
    .locals 2

    .line 79
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->toolbar_rce:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 80
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 81
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "RCE Subcategory Activity SupportActionBar cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private processErrorTypeCategoryListItemClick(I)V
    .locals 4

    .line 91
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/reportcontenterror/R$array;->error_type_category_id:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 94
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "formatting"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "other"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_2
    const-string v0, "image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_3
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    .line 112
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " No proper category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 113
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v1, "OtherErrorButtonPressed"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    .line 109
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v1, "FormattingErrorButtonPressed"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v1, "ImageErrorCategoryButtonPressed"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2

    .line 96
    :cond_4
    iget-object v0, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v1, "TextErrorCategoryButtonPressed"

    invoke-virtual {v0, v1}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_2
    const/high16 v1, 0x20000000

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "category_id"

    .line 117
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 118
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0, v0, v3}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x36452d -> :sswitch_3
        0x5faa95b -> :sswitch_2
        0x6527f10 -> :sswitch_1
        0x135b7765 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 39
    invoke-super {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Intent cannot be null"

    .line 42
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->extras:Landroid/os/Bundle;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Extras cannot be null"

    .line 44
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->getInstance()Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    .line 48
    sget p1, Lcom/amazon/kindle/reportcontenterror/R$layout;->activity_rce_category_selection:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 49
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->prepareToolbar()V

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->extras:Landroid/os/Bundle;

    const-string v1, "aes_resource"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 54
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    sget-object v1, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error building JSON object from AES resource: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    .line 60
    :goto_0
    sget v1, Lcom/amazon/kindle/reportcontenterror/R$id;->error_type_category:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "Error type Category List View cannot be null"

    .line 62
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    .line 64
    invoke-direct {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->getErrorTypeCategories(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    new-instance p1, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity$1;-><init>(Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 72
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/CategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v0, "ErrorCategoryListViewRendered"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 135
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/reportcontenterror/R$menu;->custom_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 141
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->rceCloseBtn:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    .line 142
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
