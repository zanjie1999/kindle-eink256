.class public Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;
.super Ljava/lang/Object;
.source "AndroidNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/AndroidNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "NotificationAuthority"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;,
        Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;
    }
.end annotation


# static fields
.field private static final DEBUG_NOTIFICATION_ID:I = 0x0

.field private static final DOWNLOAD_NOTIFICATION_ID:I = 0x1

.field private static final NOTIFICATIONS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;",
            "Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;",
            ">;"
        }
    .end annotation
.end field

.field private static activeNotificationCount:I

.field private static downloadNotificationBookId:Ljava/lang/String;

.field private static nextNotificationId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 169
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    const/4 v0, 0x2

    .line 170
    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    return-void
.end method

.method public static getBuilder(Lcom/amazon/kindle/model/content/IListableBook;)Landroid/app/Notification$Builder;
    .locals 1

    .line 217
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static getDebugNotificationId()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getDownloadNotificationBookId()Ljava/lang/String;
    .locals 1

    .line 320
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->downloadNotificationBookId:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadQueueBuilder()Landroid/app/Notification$Builder;
    .locals 2

    .line 234
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createDownloadQueueNotificationKey()Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 240
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadQueueId()I
    .locals 2

    const-string v0, "DownloadQueue"

    .line 192
    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->downloadNotificationBookId:Ljava/lang/String;

    .line 193
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createDownloadQueueNotificationKey()Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result v0

    return v0
.end method

.method static getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I
    .locals 3

    .line 324
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    sget p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->nextNotificationId:I

    .line 327
    :goto_0
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification$Builder;I)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_1
    sget-object p1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    invoke-virtual {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getId()I

    move-result p0

    return p0
.end method

.method public static getId(Lcom/amazon/kindle/model/content/IListableBook;)I
    .locals 1

    .line 182
    invoke-interface {p0}, Lcom/amazon/kindle/model/content/IListableBook;->getBookID()Lcom/amazon/kindle/model/content/IBookID;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kindle/model/content/IBookID;->getSerializedForm()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->downloadNotificationBookId:Ljava/lang/String;

    .line 183
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result p0

    return p0
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 1

    .line 204
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createPushNotificationKey(Ljava/lang/String;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->PUSH:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result p0

    return p0
.end method

.method private static releaseId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)V
    .locals 1

    .line 360
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    sget v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    .line 364
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static releaseIdForBookItem(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 0

    .line 340
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)V

    return-void
.end method

.method public static releaseIdForCampaign(Ljava/lang/String;)V
    .locals 0

    .line 350
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createPushNotificationKey(Ljava/lang/String;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->releaseId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;)V

    return-void
.end method

.method public static removeActiveDownloadQueueNotification()V
    .locals 5

    .line 302
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createDownloadQueueNotificationKey()Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    .line 303
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-eqz v1, :cond_0

    .line 304
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 305
    sget v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    .line 307
    :cond_0
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result v1

    .line 308
    sget-object v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification$Builder;I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static removeActiveNotification(Lcom/amazon/kindle/model/content/IListableBook;)V
    .locals 4

    .line 288
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    .line 289
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 291
    sget v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    .line 293
    :cond_0
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result v0

    .line 294
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification$Builder;I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setBuilder(Lcom/amazon/kindle/model/content/IListableBook;Landroid/app/Notification$Builder;)V
    .locals 3

    .line 253
    invoke-static {p0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createBookNotificationKey(Lcom/amazon/kindle/model/content/IListableBook;)Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object p0

    .line 254
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-eqz v0, :cond_0

    .line 255
    invoke-virtual {v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 256
    :cond_0
    sget v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    .line 258
    :cond_1
    sget-object v0, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {p0, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result v0

    .line 259
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    invoke-direct {v2, p1, v0}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification$Builder;I)V

    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static setDownloadQueueBuilder(Landroid/app/Notification$Builder;)V
    .locals 4

    .line 271
    invoke-static {}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;->createDownloadQueueNotificationKey()Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;

    move-result-object v0

    .line 272
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v1

    if-nez v1, :cond_1

    .line 274
    :cond_0
    sget v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->activeNotificationCount:I

    .line 276
    :cond_1
    sget-object v1, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;->BOOK:Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;

    invoke-static {v0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->getId(Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey;Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationKey$Type;)I

    move-result v1

    .line 277
    sget-object v2, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority;->NOTIFICATIONS:Ljava/util/Map;

    new-instance v3, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;

    invoke-direct {v3, p0, v1}, Lcom/amazon/kcp/application/AndroidNotificationController$NotificationAuthority$NotificationInformation;-><init>(Landroid/app/Notification$Builder;I)V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
