.class public Lcom/amazon/kcp/application/StandaloneDeviceContext;
.super Ljava/lang/Object;
.source "StandaloneDeviceContext.java"

# interfaces
.implements Lcom/amazon/kcp/application/IDeviceContext;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-class v0, Lcom/amazon/kcp/application/StandaloneDeviceContext;

    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/kcp/application/StandaloneDeviceContext;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getNotificationTypes()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/amazon/kcp/library/models/BookType;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 32
    invoke-static {}, Lcom/amazon/kcp/library/models/BookType;->values()[Lcom/amazon/kcp/library/models/BookType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 33
    sget-object v5, Lcom/amazon/kcp/library/models/BookType;->BT_UNKNOWN:Lcom/amazon/kcp/library/models/BookType;

    if-eq v4, v5, :cond_0

    .line 34
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public shouldCloseStoreWhenOpeningBook()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public startListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    return-void
.end method

.method public stopListeningForLauncherForeground(Lcom/amazon/kcp/redding/ReddingActivity;)V
    .locals 0

    return-void
.end method

.method public supportsBrightnessChanges()Z
    .locals 1

    .line 57
    invoke-static {}, Lcom/amazon/kindle/build/BuildInfo;->isWindowsDevice()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
