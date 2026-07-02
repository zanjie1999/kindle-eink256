.class public final Lcom/amazon/kindle/cms/ipc/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final API_VERSION:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

.field public static final CMS_SERVICE_COMPONENT:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 7
    new-instance v0, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x9

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amazon/kindle/cms/ipc/SoftwareVersion;-><init>(IIII)V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/Constants;->API_VERSION:Lcom/amazon/kindle/cms/ipc/SoftwareVersion;

    .line 8
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.amazon.kindle.cms"

    const-string v2, "com.amazon.kindle.cms.CMSService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/amazon/kindle/cms/ipc/Constants;->CMS_SERVICE_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method
