.class public Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;
.super Lcom/amazon/identity/auth/device/framework/AmazonIntentService;
.source "DCP"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseCleaningService"
.end annotation


# instance fields
.field private o:Lcom/amazon/identity/auth/device/ed;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    const-class v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {p0, p0}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public static d(Lcom/amazon/identity/auth/device/ed;)Z
    .locals 1

    const-string v0, "dcp_data_storage_factory"

    .line 47
    invoke-virtual {p0, v0}, Lcom/amazon/identity/auth/device/ed;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/identity/auth/device/gd;

    .line 48
    invoke-interface {p0}, Lcom/amazon/identity/auth/device/gd;->fe()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cw()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-static {v0}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->d(Lcom/amazon/identity/auth/device/ed;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Ignoring Database cleaning request because this platform does not use distributed data storage"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->ao(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 66
    :cond_0
    sget-object v0, Lcom/amazon/identity/auth/device/framework/AmazonIntentService;->TAG:Ljava/lang/String;

    const-string v1, "Cleaning database of unneeded items"

    invoke-static {v0, v1}, Lcom/amazon/identity/auth/device/il;->am(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;

    iget-object v1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->o:Lcom/amazon/identity/auth/device/ed;

    invoke-direct {v0, v1}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0}, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner;->fg()V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-static {p1}, Lcom/amazon/identity/auth/device/ed;->M(Landroid/content/Context;)Lcom/amazon/identity/auth/device/ed;

    move-result-object p1

    iput-object p1, p0, Lcom/amazon/identity/auth/device/storage/DatabaseCleaner$DatabaseCleaningService;->o:Lcom/amazon/identity/auth/device/ed;

    return-void
.end method
