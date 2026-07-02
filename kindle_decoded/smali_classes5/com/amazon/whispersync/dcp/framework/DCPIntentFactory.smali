.class public abstract Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;
.super Ljava/lang/Object;
.source "DCPIntentFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;
    }
.end annotation


# static fields
.field protected static final BROADCAST_RECEIVER_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;

.field private static final DCP_PACKAGE_NAME:Ljava/lang/String; = "com.amazon.dcp"

.field protected static final SERVICE_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;


# instance fields
.field protected final mComponentName:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$1;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$1;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->SERVICE_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;

    .line 38
    new-instance v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$2;

    invoke-direct {v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$2;-><init>()V

    sput-object v0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->BROADCAST_RECEIVER_FINDER:Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;

    return-void
.end method

.method public constructor <init>(Landroid/content/ComponentName;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method protected static findDCPComponent(Landroid/content/Context;Ljava/lang/String;Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;)Landroid/content/ComponentName;
    .locals 6

    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/content/ComponentName;

    .line 98
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.amazon.dcp"

    invoke-direct {v3, v4, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p0, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    :goto_0
    if-ge v4, v1, :cond_1

    .line 104
    aget-object v3, v2, v4

    .line 106
    invoke-interface {p2, v0, v3}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;->componentExists(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 115
    :cond_1
    invoke-static {p0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->getTrustedPackages(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 117
    new-instance v2, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-interface {p2, v0, v2}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;->componentExists(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v2

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getTrustedPackages(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    .line 132
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v1

    .line 133
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 134
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 136
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v4}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_0

    .line 140
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2
.end method


# virtual methods
.method public buildIntent()Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p0, v0}, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->buildIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public buildIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-eqz p1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;->mComponentName:Landroid/content/ComponentName;

    if-eqz p1, :cond_1

    .line 82
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_1
    return-object v0
.end method
