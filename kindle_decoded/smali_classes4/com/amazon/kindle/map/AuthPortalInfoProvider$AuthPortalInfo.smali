.class Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;
.super Ljava/lang/Object;
.source "AuthPortalInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kindle/map/AuthPortalInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AuthPortalInfo"
.end annotation


# instance fields
.field private associationHandle:Ljava/lang/String;

.field private domain:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->associationHandle:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->domain:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/kindle/map/AuthPortalInfoProvider$1;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->getAssociationHandle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;)Ljava/lang/String;
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->getDomain()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAssociationHandle()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->associationHandle:Ljava/lang/String;

    return-object v0
.end method

.method private getDomain()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->domain:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 69
    iget-object v1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->associationHandle:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/amazon/kindle/map/AuthPortalInfoProvider$AuthPortalInfo;->domain:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "AuthPortalInfo(\"%s\", \"%s\")"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
