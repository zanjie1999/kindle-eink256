.class Lcom/amazon/device/crashmanager/ThirdPartyDomainChooser;
.super Ljava/lang/Object;
.source "ThirdPartyDomainChooser.java"

# interfaces
.implements Lcom/amazon/device/utils/det/DomainChooser;


# instance fields
.field private final mAppIsDebuggable:Z


# direct methods
.method constructor <init>(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/amazon/device/crashmanager/ThirdPartyDomainChooser;->mAppIsDebuggable:Z

    return-void
.end method


# virtual methods
.method public chooseDomain()Lcom/amazon/device/utils/det/Domain;
    .locals 1

    .line 20
    iget-boolean v0, p0, Lcom/amazon/device/crashmanager/ThirdPartyDomainChooser;->mAppIsDebuggable:Z

    if-nez v0, :cond_0

    .line 21
    sget-object v0, Lcom/amazon/device/utils/det/Domain;->PROD:Lcom/amazon/device/utils/det/Domain;

    return-object v0

    .line 23
    :cond_0
    sget-object v0, Lcom/amazon/device/utils/det/Domain;->BETA:Lcom/amazon/device/utils/det/Domain;

    return-object v0
.end method
