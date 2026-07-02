.class public Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;
.super Ljava/lang/Object;
.source "NotificationMessageValidationData.java"


# static fields
.field private static final BASE_CAMPAIGNS:[Ljava/lang/String;


# instance fields
.field private campaigns:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private customerId:Ljava/lang/String;

.field private marketplace:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "general"

    .line 25
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->BASE_CAMPAIGNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashSet;

    sget-object v1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->BASE_CAMPAIGNS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->campaigns:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public addCampaign(Ljava/lang/String;)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->campaigns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCampaigns()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->campaigns:Ljava/util/Set;

    return-object v0
.end method

.method public getCustomerId()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->customerId:Ljava/lang/String;

    return-object v0
.end method

.method public getMarketplace()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->marketplace:Ljava/lang/String;

    return-object v0
.end method

.method public removeCampaign(Ljava/lang/String;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->campaigns:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public setCustomerId(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->customerId:Ljava/lang/String;

    return-void
.end method

.method public setMarketplace(Ljava/lang/String;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->marketplace:Ljava/lang/String;

    return-void
.end method
