.class public Lcom/amazon/sitb/android/services/PluginMetadataService;
.super Ljava/lang/Object;
.source "PluginMetadataService.java"


# instance fields
.field private final context:Landroid/content/Context;

.field private final unknownVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/amazon/sitb/android/services/PluginMetadataService;->context:Landroid/content/Context;

    const-string p1, "<unknown>"

    .line 21
    iput-object p1, p0, Lcom/amazon/sitb/android/services/PluginMetadataService;->unknownVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 2

    .line 28
    :try_start_0
    iget-object v0, p0, Lcom/amazon/sitb/android/services/PluginMetadataService;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/amazon/kindle/sitb/R$string;->sitb_app_version:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/amazon/sitb/android/services/PluginMetadataService;->unknownVersion:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v0

    .line 33
    :catch_0
    iget-object v0, p0, Lcom/amazon/sitb/android/services/PluginMetadataService;->unknownVersion:Ljava/lang/String;

    return-object v0
.end method
