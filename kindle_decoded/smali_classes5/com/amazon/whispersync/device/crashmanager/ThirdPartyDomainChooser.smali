.class Lcom/amazon/whispersync/device/crashmanager/ThirdPartyDomainChooser;
.super Ljava/lang/Object;
.source "ThirdPartyDomainChooser.java"

# interfaces
.implements Lcom/amazon/whispersync/device/crashmanager/DomainChooser;


# instance fields
.field private final mAppIsDebuggable:Z


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/whispersync/device/crashmanager/ThirdPartyDomainChooser;->mAppIsDebuggable:Z

    return-void
.end method


# virtual methods
.method public chooseDomain()Lcom/amazon/whispersync/device/crashmanager/Domain;
    .locals 1

    .line 18
    iget-boolean v0, p0, Lcom/amazon/whispersync/device/crashmanager/ThirdPartyDomainChooser;->mAppIsDebuggable:Z

    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/Domain;->PROD:Lcom/amazon/whispersync/device/crashmanager/Domain;

    return-object v0

    .line 21
    :cond_0
    sget-object v0, Lcom/amazon/whispersync/device/crashmanager/Domain;->BETA:Lcom/amazon/whispersync/device/crashmanager/Domain;

    return-object v0
.end method
