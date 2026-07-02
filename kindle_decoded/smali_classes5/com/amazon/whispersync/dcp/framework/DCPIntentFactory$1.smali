.class final Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$1;
.super Ljava/lang/Object;
.source "DCPIntentFactory.java"

# interfaces
.implements Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory$ComponentFinder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/whispersync/dcp/framework/DCPIntentFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public componentExists(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .locals 2

    const/16 v0, 0x80

    const/4 v1, 0x0

    .line 29
    :try_start_0
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method
