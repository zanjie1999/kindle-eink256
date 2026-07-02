.class public Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;
.super Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;
.source "SubcategorySelectionActivity.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final REQUEST_CODE:I = 0x2


# instance fields
.field categoryId:Ljava/lang/String;

.field extras:Landroid/os/Bundle;

.field metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;I)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->processErrorTypeSubcategoryListItemClick(I)V

    return-void
.end method

.method private getErrorTypeSubCategories(Lorg/json/JSONObject;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 108
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->categoryId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "error_type_%s_subcategory"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getStringArray(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getStringArray([Ljava/lang/String;Landroid/content/res/Resources;Lorg/json/JSONObject;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private prepareToolbar()V
    .locals 2

    .line 96
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->toolbar_rce:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 97
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 98
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const-string v1, "RCE Subcategory Activity SupportActionBar cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/ActionBar;

    const/4 v1, 0x1

    .line 99
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    return-void
.end method

.method private processErrorTypeSubcategoryListItemClick(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->categoryId:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "error_type_%s_subcategory_id"

    .line 83
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Lcom/amazon/kindle/reportcontenterror/util/StringResourceUtil;->getStringArray(Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p1, v0, p1

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/amazon/kindle/reportcontenterror/activity/FeedbackViewComposerActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "subcategory_id"

    .line 87
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 89
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    const/4 p3, 0x2

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 138
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 40
    invoke-super {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/ThemeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Intent should not be null"

    .line 43
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->extras:Landroid/os/Bundle;

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "Extras should not be null"

    .line 45
    invoke-static {p1, v2, v1}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    invoke-static {}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->getInstance()Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    .line 49
    sget p1, Lcom/amazon/kindle/reportcontenterror/R$layout;->activity_rce_subcategory_selection:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 50
    invoke-direct {p0}, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->prepareToolbar()V

    .line 52
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->extras:Landroid/os/Bundle;

    const-string v1, "category_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->categoryId:Ljava/lang/String;

    .line 54
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->extras:Landroid/os/Bundle;

    const-string v1, "aes_resource"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 56
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    sget-object v1, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->LOG_TAG:Ljava/lang/String;

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

    .line 62
    :goto_0
    sget v1, Lcom/amazon/kindle/reportcontenterror/R$id;->error_type_subcategory:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    new-array v0, v0, [Ljava/lang/Object;

    const-string v2, "List View cannot be null"

    .line 64
    invoke-static {v1, v2, v0}, Lorg/apache/commons/lang3/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x1090003

    .line 66
    invoke-direct {p0, p1}, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->getErrorTypeSubCategories(Lorg/json/JSONObject;)[Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 65
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 67
    new-instance p1, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity$1;

    invoke-direct {p1, p0}, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity$1;-><init>(Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;)V

    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 73
    iget-object p1, p0, Lcom/amazon/kindle/reportcontenterror/activity/SubcategorySelectionActivity;->metricsHelper:Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;

    const-string v0, "ErrorSubCategoryListViewRendered"

    invoke-virtual {p1, v0}, Lcom/amazon/kindle/reportcontenterror/helper/MetricsHelper;->reportMetric(Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 115
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/reportcontenterror/R$menu;->custom_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 121
    sget v0, Lcom/amazon/kindle/reportcontenterror/R$id;->rceCloseBtn:I

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, -0x1

    .line 122
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method
