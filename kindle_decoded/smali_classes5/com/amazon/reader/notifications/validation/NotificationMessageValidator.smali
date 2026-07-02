.class public Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;
.super Ljava/lang/Object;
.source "NotificationMessageValidator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "com.amazon.reader.notifications.validation.NotificationMessageValidator"

.field private static final PFM_TYPE:Ljava/lang/String; = "inferred"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkEquivalenceWithNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 130
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    invoke-direct {p0, p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isNotEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1

    .line 137
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private checkPresenceWithNullOrEmpty(Ljava/lang/String;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1

    .line 112
    :cond_1
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 115
    :cond_2
    invoke-interface {p2, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isEmpty(Ljava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 150
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isNotEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 174
    invoke-direct {p0, p1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isEmpty(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isUserEligible(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 4

    .line 72
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->getCustomerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCustomerId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->checkEquivalenceWithNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 73
    sget-object p1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->LOG_TAG:Ljava/lang/String;

    const-string p2, "CustomerIds do not match between notification message and device."

    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getPfmType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "inferred"

    invoke-direct {p0, v0, v2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->checkEquivalenceWithNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 79
    sget-object p1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Marketplace Type = inferred. Hence, not checking with customer\'s Marketplace."

    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 83
    :cond_1
    sget-object v0, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Marketplace Type = not inferred / null. Hence, checking with customer\'s Marketplace."

    invoke-static {v0, v3}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->getMarketplace()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getMarketplace()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->checkEquivalenceWithNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 85
    sget-object p1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->LOG_TAG:Ljava/lang/String;

    const-string p2, "Marketplaces do not match between notification message and device"

    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    return v2
.end method


# virtual methods
.method public shouldShowMessage(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z
    .locals 2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p1}, Lcom/amazon/reader/notifications/message/NotificationMessage;->getMessageMetadata()Lcom/amazon/reader/notifications/message/MessageMetadata;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/reader/notifications/message/MessageMetadata;->getCampaignName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;->getCampaigns()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->checkPresenceWithNullOrEmpty(Ljava/lang/String;Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 49
    sget-object p1, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->LOG_TAG:Ljava/lang/String;

    const-string p2, "The campaignName in the message is not present in the opted-in campaigns"

    invoke-static {p1, p2}, Lcom/amazon/reader/notifications/logging/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 54
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/amazon/reader/notifications/validation/NotificationMessageValidator;->isUserEligible(Lcom/amazon/reader/notifications/message/NotificationMessage;Lcom/amazon/reader/notifications/validation/NotificationMessageValidationData;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 45
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "device data cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Notifications message cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
