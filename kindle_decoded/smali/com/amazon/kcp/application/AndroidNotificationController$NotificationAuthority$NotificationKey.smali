.class Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NotificationKey"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;
    }
.end annotation


# instance fields
.field private final type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

.field private final uniqueId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V
    .locals 0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-object p1, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    .line 122
    iput-object p2, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    return-void
.end method

.method public static createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    .locals 4

    .line 95
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getAsin()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->isSample()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "-sample"

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createDownloadQueueNotificationKey()Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    .locals 3

    .line 104
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    const-string v2, "DownloadQueue"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V

    return-object v0
.end method

.method public static createPushNotificationKey(Ljava/lang/String;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    .locals 2

    .line 114
    new-instance v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->PUSH:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-direct {v0, v1, p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;-><init>(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 127
    instance-of v0, p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    check-cast p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    iget-object v2, p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    iget-object p1, p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->type:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 138
    iget-object v0, p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->uniqueId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method
