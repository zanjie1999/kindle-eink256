.class public Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;
.super Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;
.source "HangoutsPackageNameValidator.java"


# instance fields
.field private final HANGOUTS_TARGET_ACTIVITY:Ljava/lang/String;

.field protected final readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amazon/kindle/krx/IKindleReaderSDK;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;-><init>(Ljava/lang/String;)V

    const-string p1, "com.google.android.apps.hangouts.phone.BabelHomeActivity"

    .line 24
    iput-object p1, p0, Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;->HANGOUTS_TARGET_ACTIVITY:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    return-void
.end method


# virtual methods
.method public getValidPackageName()Ljava/lang/String;
    .locals 4

    .line 32
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/HangoutsPackageNameValidator;->readerSDK:Lcom/amazon/kindle/krx/IKindleReaderSDK;

    invoke-interface {v0}, Lcom/amazon/kindle/krx/IKindleReaderSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kindle/socialsharing/util/ShareHelper;->getInstalledActivities(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 33
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 34
    iget-object v2, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const-string v2, "com.google.android.apps.hangouts.phone.BabelHomeActivity"

    .line 35
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v0, p0, Lcom/amazon/kindle/socialsharing/util/PackageNameValidator;->packageName:Ljava/lang/String;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method
