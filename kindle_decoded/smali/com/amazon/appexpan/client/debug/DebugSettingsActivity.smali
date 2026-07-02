.class public Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;
.super Landroid/app/Activity;
.source "DebugSettingsActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

.field debugSettings:Lcom/amazon/appexpan/client/util/DebugSettings;

.field executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

.field manifestHandler:Lcom/amazon/appexpan/client/download/ManifestHandler;

.field preprodResourceSwitch:Landroid/widget/Switch;

.field preprodServiceSwitch:Landroid/widget/Switch;

.field resourceDownloadManager:Lcom/amazon/appexpan/client/download/ResourceDownloadManager;

.field resourceSetDetailView:Landroid/widget/ExpandableListView;

.field resourceSetDetailsListAdapterFactory:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

.field resourceSetNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field resourceSetSpinner:Landroid/widget/Spinner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resetData()V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resetS3Client()V

    return-void
.end method

.method static synthetic access$200(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->refreshViews()V

    return-void
.end method

.method private refreshViews()V
    .locals 4

    .line 243
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->dao:Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;

    invoke-interface {v0}, Lcom/amazon/appexpan/client/dao/IAppExpanClientDAO;->getAllResourceSets()Ljava/util/List;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/appexpan/client/model/ResourceSetModel;

    .line 248
    iget-object v2, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/model/ResourceSetModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 251
    :cond_0
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 253
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget v1, Lcom/amazon/appexpan/client/R$layout;->resource_set_spinner_text:I

    iget-object v2, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 256
    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 258
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->preprodResourceSwitch:Landroid/widget/Switch;

    .line 259
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/appexpan/client/AppExpanClient;->getStage()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 258
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 261
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailsListAdapterFactory:Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;

    iget-object v3, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetNames:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, p0, v2}, Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapterFactory;->create(Landroid/content/Context;Ljava/lang/String;)Lcom/amazon/appexpan/client/debug/ResourceSetDetailsListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    :cond_2
    return-void
.end method

.method private resetData()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->executor:Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;

    new-instance v1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;

    invoke-direct {v1, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$7;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/amazon/appexpan/client/util/AsyncTaskExecutor;->executeAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method private resetS3Client()V
    .locals 3

    :try_start_0
    const-string v0, "com.amazon.appexpan.client.download.ResourceURLHandler"

    .line 202
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "forceFetch"

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    const/4 v2, 0x0

    .line 205
    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->setBoolean(Ljava/lang/Object;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 209
    sget-object v1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->TAG:Ljava/lang/String;

    const-string v2, "Error occurred when calling resetS3Client"

    invoke-static {v1, v2, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget p1, Lcom/amazon/appexpan/client/R$layout;->activity_debug_settings:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 83
    invoke-static {}, Lcom/amazon/appexpan/client/AppExpanClient;->getInstance()Lcom/amazon/appexpan/client/AppExpanClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/appexpan/client/AppExpanClient;->getObjectGraph()Lcom/amazon/appexpan/client/dagger/AppExpanComponent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 86
    sget-object p1, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->TAG:Ljava/lang/String;

    const-string v0, "Cannot start debug activity before appexpan initialization"

    invoke-static {p1, v0}, Lcom/amazon/appexpan/client/AppExpanLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {p1, p0}, Lcom/amazon/appexpan/client/dagger/AppExpanComponent;->inject(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    .line 93
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_rs_exp:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ExpandableListView;

    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetDetailView:Landroid/widget/ExpandableListView;

    .line 97
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_resource_set_list:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->resourceSetSpinner:Landroid/widget/Spinner;

    .line 98
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$1;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 118
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_pre_prod_resource_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->preprodResourceSwitch:Landroid/widget/Switch;

    .line 119
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$2;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$2;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 136
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_pre_prod_service_switch:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->preprodServiceSwitch:Landroid/widget/Switch;

    .line 137
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$3;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 152
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_button_refresh:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 153
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$4;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$4;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_button_start_downloads:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 163
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$5;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    sget p1, Lcom/amazon/appexpan/client/R$id;->debug_button_reset_data:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 181
    new-instance v0, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$6;

    invoke-direct {v0, p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity$6;-><init>(Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    invoke-direct {p0}, Lcom/amazon/appexpan/client/debug/DebugSettingsActivity;->refreshViews()V

    :goto_0
    return-void
.end method
