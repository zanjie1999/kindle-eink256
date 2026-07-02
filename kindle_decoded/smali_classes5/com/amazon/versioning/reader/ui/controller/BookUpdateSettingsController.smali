.class public Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;
.super Ljava/lang/Object;
.source "BookUpdateSettingsController.java"


# static fields
.field private static final CONTENT_UPDATE_SETTINGS_TEXT_KEY:Ljava/lang/String; = "ContentUpdateSettingsText"


# instance fields
.field private final appContext:Landroid/content/Context;

.field private final applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

.field private autoUpdateSetting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

.field private final controlManager:Lcom/amazon/kindle/krx/settings/ISettingsControlManager;


# direct methods
.method public constructor <init>(Lcom/amazon/kindle/krx/settings/ISettingsControlManager;Lcom/amazon/kindle/krx/application/IApplicationManager;Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->controlManager:Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    .line 29
    iput-object p2, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    .line 30
    iput-object p3, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->appContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->appContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)Lcom/amazon/kindle/krx/application/IApplicationManager;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->applicationManager:Lcom/amazon/kindle/krx/application/IApplicationManager;

    return-object p0
.end method


# virtual methods
.method public initialize()V
    .locals 8

    .line 37
    new-instance v7, Lcom/amazon/kindle/krx/settings/ClickableSetting;

    sget v2, Lcom/amazon/versioning/R$string;->book_update_settings_category:I

    sget v3, Lcom/amazon/versioning/R$string;->book_update_settings_large_text:I

    sget v4, Lcom/amazon/versioning/R$string;->book_update_settings_main_subtext:I

    new-instance v6, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;

    invoke-direct {v6, p0}, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController$1;-><init>(Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;)V

    const-string v1, "ContentUpdateSettingsText"

    const/4 v5, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/amazon/kindle/krx/settings/ClickableSetting;-><init>(Ljava/lang/String;IIIZLcom/amazon/kindle/krx/settings/IClickListener;)V

    iput-object v7, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->autoUpdateSetting:Lcom/amazon/kindle/krx/settings/ClickableSetting;

    .line 52
    iget-object v0, p0, Lcom/amazon/versioning/reader/ui/controller/BookUpdateSettingsController;->controlManager:Lcom/amazon/kindle/krx/settings/ISettingsControlManager;

    invoke-interface {v0, v7}, Lcom/amazon/kindle/krx/settings/ISettingsControlManager;->registerSettingsControl(Lcom/amazon/kindle/krx/settings/ISettingsControl;)V

    return-void
.end method
